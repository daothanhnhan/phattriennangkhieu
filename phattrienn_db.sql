-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 16, 2019 lúc 04:02 PM
-- Phiên bản máy phục vụ: 5.5.62-MariaDB
-- Phiên bản PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phattrienn_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$5xn9Ri83pYZIOwglCNPE1O77nvaCUPJJFUifoHtxyWgqM1EU34Yku', '', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_1`
--

CREATE TABLE `bang_gia_1` (
  `id` int(11) NOT NULL,
  `khoahoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvien` int(11) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_1`
--

INSERT INTO `bang_gia_1` (`id`, `khoahoc`, `chinhanh`, `hocvien`, `namsinh`, `email`, `phone`, `name`, `notes`) VALUES
(43, 'Smart Reading Skills', 'AMERICAN SKILLS LONG BIÊN-HÀ NỘI', 0, 1995, 'viethung95cute@gmail.com', '1672523165', 'Nguyễn Việt Hưng', ''),
(44, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', ''),
(45, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_2`
--

CREATE TABLE `bang_gia_2` (
  `id` int(11) NOT NULL,
  `name_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_student` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) NOT NULL,
  `hoan_thien_so_sach` varchar(300) NOT NULL,
  `quyet_toan_thue` varchar(300) NOT NULL,
  `tong_dich_vu` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_2`
--

INSERT INTO `bang_gia_2` (`id`, `name_parent`, `phone_parent`, `name_student`, `birthday`, `adress`, `email`, `hoan_thien_so_sach`, `quyet_toan_thue`, `tong_dich_vu`, `time`) VALUES
(34, 'Việt Hưng', '01672523165', 'ABC', '2018-03-30', 'ĐH Mỏ - Địa chất', 'viethung95cute@gmail.com', '', '', '', '2018-03-28 04:54:52'),
(35, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:26'),
(36, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:33'),
(37, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:13'),
(38, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:19'),
(39, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:13:51'),
(40, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:20:52'),
(41, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:19'),
(42, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:22'),
(43, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:52'),
(44, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:55'),
(45, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:23:34'),
(46, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:46'),
(47, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cad_file`
--

CREATE TABLE `cad_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cad_file`
--

INSERT INTO `cad_file` (`id`, `name`) VALUES
(2, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calculators_file`
--

CREATE TABLE `calculators_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `calculators_file`
--

INSERT INTO `calculators_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cam_nhan`
--

CREATE TABLE `cam_nhan` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tu` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note_en` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cam_nhan`
--

INSERT INTO `cam_nhan` (`id`, `name`, `image`, `note`, `tu`, `note_en`) VALUES
(1, 'Anh Bùi Minh Nhật', 'tes1.png', 'Đã là gia đình mãi mãi là gia đình…. Giây phút xúc động ko nói thành lời…. Chưa bao giờ có cảm giác hạnh phúc như thế, chưa bao giờ được sống trong gia đình tuyệt vời đến thế. E xúc động thật sự, cảm giác nhìn mọi người mỗi người xách cho e vài túi đồ mang ra xe mà e nghĩ sao số mình may mắn quá, có những người anh ,người chị người em tuyệt đến thế. E về đến rồi, cảm ơn mọi người đã đưa e lên xe, những con người ấy, những nụ cười ấy, những kỉ niệm trong ngôi nhà đó sẽ luôn trong tim e. Trái đất tròn nhất định sẽ gặp lại, chỉ là khi nào thôi. Hãy hứa rằng đừng quên nhau và luôn luôn có mặt trong các cuộc hẹn tiếp theo nhé! Em yêu cả nhà', 'Sinh viên', 'Already a family that is forever a family .... The moment of emotion does not speak into words .... There has never been such a happy feeling, never been in such a wonderful family. I was really touched, I felt like everyone was carrying some bags to my car and I thought that my number was so lucky, my brothers and sisters were so great. I came home, thank you all for bringing me to the car, those people, those smiles, the memories in that house will always be in my heart. The round earth will definitely meet again, just when. Promise not to forget each other and always be in the next appointment! I love the whole family'),
(2, 'Anh Nguyễn Cát Tường ', 'tes2.png', 'Mới ngày nào còn lo lắng đến với Homestay không biết sẽ như thế nào khi lần đầu tiên sống trong môi trường tập thể mà lại có quá nhiều bạn trẻ và năng động. Nhưng rồi lo lắng quá cũng chỉ để thêm ít nhiều nếp nhăn trên mặt mà thôi. Đến với hôm sờ tây thì ấn tượng đầu tiên là những anh quản lý dễ thương, bạn trợ giảng nhiệt tình dẫn mình vào tham quan rồi chia sẻ kinh nghiệm khiến mình an tâm phần nào. Rồi khi gặp gỡ các học viên, các giáo viên tại Homestay khiến một người có tư tưởng đi xa so với tuổi thực 50 năm sống lại tuổi trẻ lần 2 :D. Mọi người ăn cùng nhau, học cùng nhau, vui chơi và chia sẽ những buồn vui cùng nhau suốt 2 tháng qua,…tất cả với mình là những kỉ niệm đẹp. Giờ đây khi biết chỉ còn hơn một tuần nữa là phải xa nhau, lòng rất buồn nhưng chấp nhận, vì cuộc sống vốn dĩ là như vậy, có chia xa mới có ngày gặp lại. Chúc các bạn thành công và tiếp tục đam mê với English. Yêu tất cả mọi người.', 'Sinh viên', 'New days still worry about coming to Homestay not knowing what it will be like when you first live in a collective environment, but there are too many young and active friends. But then worry too much just to add more wrinkles on the face. Coming to the west, the first impression is the cute managers, the enthusiastic tutor leads me to visit and share experiences to make me feel secure. Then when meeting the students, the teachers at the Homestay make a person think away from the 50-year-old real-life age of 2: D. People eat together, learn together, have fun and share the sadness together for the past 2 months, ... all with me are good memories. Now knowing that there is only one more week left to be separated, I am very sad but accept, because life is inherently like that, there is a farewell to meet again. Wish you success and continue to be passionate about English. Love everyone.'),
(3, 'Chị Nguyễn Thị Dung', 'tes3.png', 'Mới ngày nào còn lo lắng đến với Homestay không biết sẽ như thế nào khi lần đầu tiên sống trong môi trường tập thể mà lại có quá nhiều bạn trẻ và năng động. Nhưng rồi lo lắng quá cũng chỉ để thêm ít nhiều nếp nhăn trên mặt mà thôi. Đến với hôm sờ tây thì ấn tượng đầu tiên là những anh quản lý dễ thương, bạn trợ giảng nhiệt tình dẫn mình vào tham quan rồi chia sẻ kinh nghiệm khiến mình an tâm phần nào. Rồi khi gặp gỡ các học viên, các giáo viên tại Homestay khiến một người có tư tưởng đi xa so với tuổi thực 50 năm sống lại tuổi trẻ lần 2 :D. Mọi người ăn cùng nhau, học cùng nhau, vui chơi và chia sẽ những buồn vui cùng nhau suốt 2 tháng qua,…tất cả với mình là những kỉ niệm đẹp. Giờ đây khi biết chỉ còn hơn một tuần nữa là phải xa nhau, lòng rất buồn nhưng chấp nhận, vì cuộc sống vốn dĩ là như vậy, có chia xa mới có ngày gặp lại. Chúc các bạn thành công và tiếp tục đam mê với English. Yêu tất cả mọi người', 'Sinh viên', 'New days still worry about coming to Homestay not knowing what it will be like when you first live in a collective environment, but there are too many young and active friends. But then worry too much just to add more wrinkles on the face. Coming to the west, the first impression is the cute managers, the enthusiastic tutor leads me to visit and share experiences to make me feel secure. Then when meeting the students, the teachers at the Homestay make a person think away from the 50-year-old real-life age of 2: D. People eat together, learn together, have fun and share the sadness together for the past 2 months, ... all with me are good memories. Now knowing that there is only one more week left to be separated, I am very sad but accept, because life is inherently like that, there is a farewell to meet again. Wish you success and continue to be passionate about English. Love everyone.'),
(4, 'Chị Nguyễn Thị Minh Hà', 'tes4.png', 'Mỗi khi có cơ hội, tôi tưới cây, Sư tử! Nói chuyện võng đến sớm. Họ sẽ cố gắng đóng cửa lại với bạn, chỉ cần mở nó ra. Bạn thấy cây tre đằng sau tôi, bạn thấy cây tre đó chứ? Ain mệnh nothin, giống như tre. Chúc lành', 'Nhân viên văn phòng', 'Every chance I get, I water the plants, Lion! Hammock talk come soon. They will try to close the door on you, just open it. You see that bamboo behind me though, you see that bamboo? Ain’t nothin’ like bamboo. Bless up.'),
(5, 'Chị Jennifer Thu Lê', 'tes5.png', 'Mỗi khi có cơ hội, tôi tưới cây, Sư tử! Nói chuyện võng đến sớm. Họ sẽ cố gắng đóng cửa lại với bạn, chỉ cần mở nó ra. Bạn thấy cây tre đằng sau tôi, bạn thấy cây tre đó chứ? Ain mệnh nothin, giống như tre. Chúc lành', 'Sinh viên bưu chính viễn thông', 'Every chance I get, I water the plants, Lion! Hammock talk come soon. They will try to close the door on you, just open it. You see that bamboo behind me though, you see that bamboo? Ain’t nothin’ like bamboo. Bless up');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(1, NULL, 'sdgdfgdbcvbcvbxcv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgdf', 'sdf@gmail.com', '5646', 'sdf@gmail.com', 'sdf@gmail.com'),
(3, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'drtert', 'sdf@gmail.com', '3454', 'sdf@gmail.com', 'sdf@gmail.com'),
(4, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdfasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sfgdfg'),
(5, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(6, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'df', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'ag'),
(7, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', '.'),
(8, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdfg'),
(9, NULL, '507hpkui803q8chnerqdtf3vl2', 1520000, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', '', 'sdfg'),
(10, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'dfgfdhgvjm'),
(11, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'd'),
(12, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zscf'),
(13, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sds', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xfc'),
(14, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ádasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cv'),
(15, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxd'),
(16, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xf'),
(17, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'f', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(18, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'g'),
(19, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(20, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sè', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cvb'),
(21, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgd', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxcv'),
(22, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfjas@gmail.com', 'tung92.ns@gmail.com', '12342', 'fg', 'xc'),
(23, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', 'dfg', 'dfg', 'gh'),
(24, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dgfdg', 'tung92.ns@gmail.com', '1234567', 'xfvd', 'sx'),
(25, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ạgdfh', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cfgvb'),
(26, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xcv'),
(27, NULL, '507hpkui803q8chnerqdtf3vl2', 3040000, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', '', 'xcv'),
(28, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 0, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', 'fghfgh', 'zdfgdfg'),
(29, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 1845000, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', '', 'zdfgdfg'),
(30, NULL, '334n6joa344tmhngo3r5aqpve3', 1845000, NULL, '0000-00-00', NULL, NULL, 'HANGWF', 'HGJFGH@GMAIL.COM', '45657', 'qUAN NHAN', 'DTAN'),
(31, NULL, 'uicgfl7gr3e7ahodo04vpssns6', 3930000, NULL, '0000-00-00', NULL, NULL, 'dfHFGH', 'XFGHFG@GMAIL.COM', '3456789', 'ARFG', 'WRWER'),
(32, NULL, '9h180s77g41hqt5d8g95mudic6', 205000, NULL, '0000-00-00', NULL, NULL, 'vcxgf', 'gfgfdg@gmail.com', 'fgfdgdfg', 'fgfdgdf', 'gfdgdf'),
(33, NULL, 'jom8ufm7f64s09i4gk10fp1ma2', 2255000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '12184', 'Fqgq', 'Vsbs'),
(34, NULL, '20ks5j7ju4vpq91d9699nvile3', 1455000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '86633889', 'Fgujbvg', ''),
(35, NULL, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, NULL, '0000-00-00', NULL, NULL, 'Ngọc thế', 'ngocthe505@gmail.com', '0943218532', 'Số 19 ngõ 4 văn la hà đông hn', ''),
(36, NULL, '0m0i103i9mk3s0t8mi1g6gnqd5', 2250000, NULL, '0000-00-00', 4, '', 'Lìu tìu phìu', 'admin@deptrai.com', '096969969', 'Hà Nội', ''),
(37, NULL, 'meesi1d3laemnvqfgu7m1lm9p4', 2050000, NULL, '0000-00-00', 4, 'gfdgfd', 'Lìu tìu phìu', 'admin@deptrai.com', '0969068969', 'Hà Nội', ''),
(38, NULL, 'r3ktn90f3cn3fv82lob0qfv7l2', 0, NULL, '0000-00-00', NULL, NULL, 'hfgh', 'gfhg@gmail.com', '5345345435', 'gbfdgfdg', 'gdfg'),
(39, NULL, '3j87stb5hl70hfftn49fg9uve2', 615000, NULL, '0000-00-00', 1, '', 'Tâm', 'ngockhanh@gmail.com', '0974698975', 'thanh xuân', ''),
(40, NULL, 'vjnoaabl9tui5463ttpol3a745', 3040000, NULL, '0000-00-00', 1, '', 'hằng pt', 'ngockhanh@gmail.com', '123123435', 'dfghdfgh', 'dfghdfgh'),
(41, NULL, '36v2v63fsce7tth1ep3mp51uh3', 760000, NULL, '0000-00-00', NULL, NULL, 'ádfasdf', 'ngockhanh@gmail.com', 'dfgadfg', 'ádfgsdf', ''),
(42, NULL, '9ed4v2g4sm1v3og223ckgdh650', 4560000, NULL, '0000-00-00', NULL, NULL, 'sxdfsdf', 'ng@gmail.com', '345345', 'étdgvdf', ''),
(43, NULL, 's7kfj9rca2ic102k5sgpe4it67', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '30012018', 'Ha Noi', '1'),
(44, NULL, 'uh6mafdedbdh4sqodcd4amspa5', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(45, NULL, '1phakdlrnq7gn5ln72umgujq63', 238620, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '13-7');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(4, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 27, 'fg4g7m0pb0vnv4dnvp88f7lds7', 760000, 3, 2280000, NULL, 2, 1, 'Cam', 'S', 1),
(8, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 2, 1520000, NULL, 2, 1, 'Cam', 'S', 25),
(9, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 4, 3040000, NULL, 2, 1, 'Cam', 'S', 26),
(10, 42, 'k75ivhcmgk5u9bbi4ajsqeqon7', 205000, 9, 1845000, NULL, 0, 0, '', '', 28),
(11, 42, '334n6joa344tmhngo3r5aqpve3', 205000, 9, 1845000, NULL, 0, 0, '', '', 30),
(12, 42, 'uicgfl7gr3e7ahodo04vpssns6', 205000, 6, 1230000, NULL, 0, 0, '', '', 31),
(13, 43, 'uicgfl7gr3e7ahodo04vpssns6', 450000, 6, 2700000, NULL, 0, 0, '', '', 31),
(14, 42, '9h180s77g41hqt5d8g95mudic6', 205000, 1, 205000, NULL, 0, 0, '', '', 32),
(15, 42, 'jom8ufm7f64s09i4gk10fp1ma2', 205000, 11, 2255000, NULL, 0, 0, '', '', 33),
(16, 43, '20ks5j7ju4vpq91d9699nvile3', 225000, 1, 225000, NULL, 0, 0, '', '', 34),
(17, 42, '20ks5j7ju4vpq91d9699nvile3', 205000, 6, 1230000, NULL, 0, 0, '', '', 34),
(18, 42, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, 1, 205000, NULL, 0, 0, '', '', 35),
(19, 43, '0m0i103i9mk3s0t8mi1g6gnqd5', 225000, 10, 2250000, NULL, 0, 0, '', '', 36),
(20, 42, 'meesi1d3laemnvqfgu7m1lm9p4', 205000, 10, 2050000, NULL, 0, 0, '', '', 37),
(21, 42, 'r3ktn90f3cn3fv82lob0qfv7l2', 205000, 0, 0, NULL, 0, 0, '', '', 38),
(22, 42, '3j87stb5hl70hfftn49fg9uve2', 205000, 3, 615000, NULL, 0, 0, '', '', 39),
(23, 27, 'vjnoaabl9tui5463ttpol3a745', 760000, 3, 2280000, NULL, 0, 0, '', '', 40),
(24, 28, 'vjnoaabl9tui5463ttpol3a745', 760000, 1, 760000, NULL, 0, 0, '', '', 40),
(25, 27, '36v2v63fsce7tth1ep3mp51uh3', 760000, 1, 760000, NULL, 0, 0, '', '', 41),
(26, 27, '9ed4v2g4sm1v3og223ckgdh650', 760000, 6, 4560000, NULL, 0, 0, '', '', 42),
(27, 55, 's7kfj9rca2ic102k5sgpe4it67', 0, 2, 0, NULL, 0, 0, '', '60x90 cm', 43),
(28, 48, 'uh6mafdedbdh4sqodcd4amspa5', 0, 1, 0, NULL, 0, 0, '', '', 44),
(29, 55, '1phakdlrnq7gn5ln72umgujq63', 119310, 2, 238620, NULL, 0, 0, '', '', 45);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `link1` text COLLATE utf8_unicode_ci NOT NULL,
  `link2` text COLLATE utf8_unicode_ci NOT NULL,
  `link3` text COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner3` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `slideshow_home`, `link1`, `link2`, `link3`, `banner2`, `banner1`, `banner3`, `icon_web`) VALUES
(1, 'Homestay Việt Nam', '', 'Homestay Việt Nam mang đến cho bạn một trải nghiệm học tiếng Anh hoàn toàn mới mẻ và khác biệt. Đến với Homestay Việt Nam, bạn sẽ được đưa vào một môi trường hoàn toàn 100% tiếng Anh: Sống cùng Tây, Ở cùng Tây, Học cùng Tây.<br>Ở đó, bạn sẽ được học tiếng Anh, trải nghiệm tiếng Anh thông qua những hoạt động đời thường nhất, gần gũi nhất: nấu ăn, sinh hoạt, giao lưu, chém gió,... ', 'Homestay Việt Nam', 'LO GO HOMESTAY CHINH THUC.jpg', '', '', 'Homestay Việt Nam mang đến cho bạn một trải nghiệm học tiếng Anh hoàn toàn mới mẻ và khác biệt. Đến với Homestay Việt Nam, bạn sẽ được đưa vào một môi trường hoàn toàn 100% tiếng Anh: Sống cùng Tây, Ở cùng Tây, Học cùng Tây.<br>Ở đó, bạn sẽ được học tiếng Anh, trải nghiệm tiếng Anh thông qua những hoạt động đời thường nhất, gần gũi nhất: nấu ăn, sinh hoạt, giao lưu, chém gió,... ', 'Số 3, Ngõ 112 Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', 'english.homestayvn@gmail.com', '096 55 212 94', '', '', '', '<li>\r\n                                    <a href=\"/gioi-thieu\">Giới Thiệu</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"/lich-khai-giang\">Lịch Khai Giảng</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"\">Đào Tạo</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"/dang-ky\">Đăng Kí Học</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"/tin-tuc\">Tin Tức</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"/lien-he\">Liên Hệ</a>\r\n                                </li>', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d59598.87397760196!2d105.843907!3d20.995458!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xae34340dc0e076cb!2sVnSkills+Multimedia+Academy!5e0!3m2!1sen!2sus!4v1499075116776\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-02-14', '[\"{\\\"image\\\":\\\"slider3.jpg\\\"}\"]', 'avits-smart-readingbrphat-trien-ngon-ngu-tieng-viet-4-10-tuoi', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan', 'banner2.jpg', 'noi-so-hoc-tieng-anh-giao-tiep.jpg', 'banner3.jpg', 'LO GO HOMESTAY CHINH THUC.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) DEFAULT '0',
  `lang_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `edit_state`, `lang_link1`, `lang_link2`, `lang_link3`) VALUES
(1, 1, 'vn', 'Homestay Việt Nam', '', 'Homestay Việt Nam mang đến cho bạn một trải nghiệm học tiếng Anh hoàn toàn mới mẻ và khác biệt. Đến với Homestay Việt Nam, bạn sẽ được đưa vào một môi trường hoàn toàn 100% tiếng Anh: Sống cùng Tây, Ở cùng Tây, Học cùng Tây.<br>Ở đó, bạn sẽ được học tiếng Anh, trải nghiệm tiếng Anh thông qua những hoạt động đời thường nhất, gần gũi nhất: nấu ăn, sinh hoạt, giao lưu, chém gió,... ', 'Homestay Việt Nam', '', '', 'Homestay Việt Nam mang đến cho bạn một trải nghiệm học tiếng Anh hoàn toàn mới mẻ và khác biệt. Đến với Homestay Việt Nam, bạn sẽ được đưa vào một môi trường hoàn toàn 100% tiếng Anh: Sống cùng Tây, Ở cùng Tây, Học cùng Tây.<br>Ở đó, bạn sẽ được học tiếng Anh, trải nghiệm tiếng Anh thông qua những hoạt động đời thường nhất, gần gũi nhất: nấu ăn, sinh hoạt, giao lưu, chém gió,... ', 'Số 3, Ngõ 112 Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội', 'english.homestayvn@gmail.com', '096 55 212 94', '', '', '', '<li>\r\n                                    <a href=\"/gioi-thieu\">Giới Thiệu</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"/lich-khai-giang\">Lịch Khai Giảng</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"\">Đào Tạo</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"/dang-ky\">Đăng Kí Học</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"/tin-tuc\">Tin Tức</a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href=\"/lien-he\">Liên Hệ</a>\r\n                                </li>', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d59598.87397760196!2d105.843907!3d20.995458!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xae34340dc0e076cb!2sVnSkills+Multimedia+Academy!5e0!3m2!1sen!2sus!4v1499075116776\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-02-14', 1, '0', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan'),
(2, 1, 'en', 'Homestay Việt Nam', NULL, '', 'Homestay Việt Nam', NULL, NULL, '', 'No. 3, Alley 112 Tran Dai Nghia, Hai Ba Trung, Hanoi', 'With the operating experiences of plywood factory from 2012, we have supply Good quality Plywood for Packing and Furniture Industry as well as Construction. We are deserved to become your partner to help you have good materials for your production and your trading in plywood industry all over the world. \r\nWe have our team to control all processes of plywood Production very professionally such as Q&C, R&D, Technical team .Moreover, our market is widespread in many foreign countries like Thailand, Korea, Japan, Malaysia, Indonesia, Myamar, Taiwan and others.\r\nComing to us, you wil have many Priorities in Price, Early Delivery as well as in Quality: Strong Density, No Gap, straight side, smooth face....\r\n', '', 'HISTORY', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', NULL, 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky_ngay`
--

CREATE TABLE `dang_ky_ngay` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `skype` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dang_ky_ngay`
--

INSERT INTO `dang_ky_ngay` (`id`, `name`, `email`, `phone`, `course`, `time`, `skype`) VALUES
(1, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Tiếng anh luyện thi', '2018-10-30 03:56:19', ''),
(2, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Tiếng anh lễ tân khách sạn/ Nhà hàng', '2018-10-30 03:56:45', ''),
(3, 'Trương Quang Tuấn', 'tuan@gmail.com', '987654321', 'Tiếng anh cho trẻ em', '2018-11-09 01:26:39', 'tuan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky_online`
--

CREATE TABLE `dang_ky_online` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `where` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `know` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `skype` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dang_ky_online`
--

INSERT INTO `dang_ky_online` (`id`, `name`, `birthday`, `sex`, `phone`, `email`, `course`, `address`, `where`, `note`, `know`, `time`, `skype`) VALUES
(1, 'Trương Quang Tuấn', '1-1-1989', 1, '987654321', 'tuan@gmail.com', 'Tiếng anh cho trẻ em', 'Hà Nội', '2', '1', 'Bạn bè/ Người quen giới thiệu', '2018-10-24 10:43:58', ''),
(2, 'Trương Quang Tuấn', '31-10-1990', 0, '987654321', 'tuan@gmail.com', 'Tiếng anh cho nguòi đi làm', 'Hà Nội', 'Thanh Xuân', '24-10', 'Bạn bè/ Người quen giới thiệu', '2018-10-24 10:46:06', ''),
(3, 'Trương Quang Tuấn', '4-4-1993', 0, '0987654321', 'tuan@gmail.com', 'Tiếng anh hè', 'Hà Nội', 'Thanh Xuân', '1', 'Diễn đàn/ Internet', '2018-11-09 01:35:33', 'tuan111');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datasheets_file`
--

CREATE TABLE `datasheets_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `datasheets_file`
--

INSERT INTO `datasheets_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_mua`
--

CREATE TABLE `dat_mua` (
  `id` int(11) NOT NULL,
  `name_investors` varchar(200) CHARACTER SET utf8 NOT NULL,
  `professional_field` varchar(225) NOT NULL,
  `work_unit` varchar(225) NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `aspiration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dat_mua`
--

INSERT INTO `dat_mua` (`id`, `name_investors`, `professional_field`, `work_unit`, `phone`, `email`, `address`, `district`, `city`, `chanel`, `aspiration`) VALUES
(2, 'Rèm vải 01', '760', '1', 'tuấn', 'tuan@gmail.com', '0123', 'Hà Nội', '', '', ''),
(3, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng'),
(4, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `day`
--

CREATE TABLE `day` (
  `id` int(11) NOT NULL,
  `hour_id` int(11) NOT NULL,
  `mon` int(11) NOT NULL,
  `wed` int(11) NOT NULL,
  `tue` int(11) NOT NULL,
  `thu` int(11) NOT NULL,
  `fri` int(11) NOT NULL,
  `sat` int(11) NOT NULL,
  `sun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `day`
--

INSERT INTO `day` (`id`, `hour_id`, `mon`, `wed`, `tue`, `thu`, `fri`, `sat`, `sun`) VALUES
(1, 1, 2, 1, 0, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 0, 0, 1, 0, 0, 0, 0),
(5, 5, 0, 0, 0, 0, 0, 1, 0),
(6, 6, 0, 0, 0, 0, 0, 0, 0),
(7, 7, 2, 0, 0, 0, 0, 0, 0),
(8, 8, 1, 0, 0, 0, 0, 0, 0),
(9, 9, 1, 0, 0, 0, 0, 0, 0),
(10, 10, 0, 0, 0, 0, 0, 0, 0),
(11, 11, 2, 0, 1, 0, 0, 0, 0),
(12, 12, 0, 0, 0, 0, 0, 0, 0),
(13, 13, 0, 0, 0, 0, 0, 2, 0),
(14, 14, 0, 0, 0, 0, 0, 0, 1),
(15, 15, 0, 0, 0, 0, 0, 0, 0),
(16, 16, 0, 0, 0, 0, 0, 0, 0),
(17, 17, 0, 0, 0, 0, 0, 0, 0),
(18, 18, 0, 0, 0, 0, 0, 0, 0),
(19, 19, 0, 0, 0, 0, 0, 0, 0),
(20, 20, 0, 0, 0, 0, 0, 0, 0),
(21, 21, 0, 0, 0, 0, 0, 0, 0),
(22, 22, 0, 0, 0, 0, 0, 0, 0),
(23, 23, 0, 0, 0, 0, 0, 0, 0),
(24, 24, 0, 0, 0, 0, 0, 0, 0),
(25, 25, 0, 0, 0, 0, 0, 0, 0),
(26, 26, 0, 0, 0, 0, 0, 0, 0),
(27, 27, 0, 0, 0, 0, 0, 0, 0),
(28, 28, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `declaration_file`
--

CREATE TABLE `declaration_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `declaration_file`
--

INSERT INTO `declaration_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hour`
--

CREATE TABLE `hour` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hour`
--

INSERT INTO `hour` (`id`, `teacher_id`, `name`) VALUES
(1, 1, '18:30'),
(2, 1, '19:00'),
(3, 1, '19:30'),
(4, 1, '20:00'),
(5, 1, '20:30'),
(6, 1, '21:00'),
(7, 1, '21:30'),
(8, 2, '18:30'),
(9, 2, '19:00'),
(10, 2, '19:30'),
(11, 2, '20:00'),
(12, 2, '20:30'),
(13, 2, '21:00'),
(14, 2, '21:30'),
(15, 3, '18:30'),
(16, 3, '19:00'),
(17, 3, '19:30'),
(18, 3, '20:00'),
(19, 3, '20:30'),
(20, 3, '21:00'),
(21, 3, '21:30'),
(22, 4, '18:30'),
(23, 4, '19:00'),
(24, 4, '19:30'),
(25, 4, '20:00'),
(26, 4, '20:30'),
(27, 4, '21:00'),
(28, 4, '21:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `installation_file`
--

CREATE TABLE `installation_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `installation_file`
--

INSERT INTO `installation_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(1, 'tuấn', 'tuan@gmail.com', '0245', 'Hà Nội', 'ok', '2017-11-29 12:51:52'),
(2, 'Hang Pham Thuy', 'ngockhanh260614@gmail.com', '973378669', 'Thanh Xuân, Thanh Xuân', 'xfghfghfgh', '2017-12-03 04:06:32'),
(3, 'ewrerwer', 'viethung95cute@gmail.com', '01672545654', 'hà nội', '', '2018-04-05 06:24:46'),
(4, 'tuấn', 'tuan@gmail.com', '0123', '', '13-7', '2018-07-13 11:24:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listings_certifications_file`
--

CREATE TABLE `listings_certifications_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `listings_certifications_file`
--

INSERT INTO `listings_certifications_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'Trang chủ', 1, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(147, 'Khóa học', 3, 5, '', 0, 75, 0, 0, 0, 1, 0, 0, 0, NULL),
(151, 'Tiếng anh cho người mới', 1, 7, '', 0, 0, 0, 0, 106, 1, 147, 0, 0, NULL),
(152, 'Tiếng anh nâng cao', 4, 7, '', 0, 0, 0, 0, 109, 1, 147, 0, 0, NULL),
(153, 'Liên hệ', 7, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(155, 'Giới thiệu', 2, 13, '', 0, 0, 0, 35, 0, 1, 0, 0, 0, NULL),
(164, 'Tin tức', 6, 6, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(195, 'Tiếng anh cơ bản', 2, 7, '', 0, 0, 0, 0, 107, 1, 147, 0, 0, NULL),
(199, 'Lịch khai giảng', 4, 8, 'lich-khai-giang', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(200, 'Giảng viên', 5, 8, 'giang-vien', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(201, 'Tiếng anh trung cấp', 3, 7, '', 0, 0, 0, 0, 108, 1, 147, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Trang chủ', 1, '', 114),
(206, 'en', 'Trang chủ - vn', 1, '', 114),
(271, 'vn', 'Khóa học', 0, '', 147),
(272, 'en', 'Khóa học', 0, '', 147),
(279, 'vn', 'Tiếng anh cho người mới', 0, '', 151),
(280, 'en', 'Lịch khám', 0, 'lich-kham', 151),
(281, 'vn', 'Tiếng anh nâng cao', 0, '', 152),
(282, 'en', 'Tiếng anh nâng cao', 0, '', 152),
(283, 'vn', 'Liên hệ', 0, '', 153),
(284, 'en', 'Liên hệ', 0, '', 153),
(287, 'vn', 'Giới thiệu', 0, '', 155),
(288, 'en', 'Giới thiệu', 0, '', 155),
(305, 'vn', 'Tin tức', 0, '', 164),
(306, 'en', 'Tin tức', 0, '', 164),
(367, 'vn', 'Tiếng anh cơ bản', 0, '', 195),
(368, 'en', 'Tiếng anh cơ bản', 0, '', 195),
(375, 'vn', 'Lịch khai giảng', 0, 'lich-khai-giang', 199),
(376, 'en', 'Lịch khai giảng', 0, 'lich-khai-giang', 199),
(377, 'vn', 'Giảng viên', 0, 'giang-vien', 200),
(378, 'en', 'Giảng viên', 0, 'giang-vien', 200),
(379, 'vn', 'Tiếng anh trung cấp', 0, '', 201),
(380, 'en', 'Tiếng anh trung cấp', 0, '', 201);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(106, 'Tiếng anh cho người mới', '<p>Lớp học d&agrave;nh cho những người mất gốc tiếng Anh v&agrave; bắt đầu từ con số 0. Gi&aacute;o vi&ecirc;n ngo&agrave;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ c&aacute;c bạn học tập,&nbsp;<strong>giao tiếp 24/24.</strong>&nbsp;Đội ngũ trợ giảng nhiệt t&igrave;nh năng động v&agrave; thấu hiểu những&nbsp;<strong>kh&oacute; khăn&nbsp;</strong>của bạn. Được&nbsp;<strong>sinh hoạt chung một m&aacute;i nh&agrave;</strong>, được giao tiếp tiếng Anh thường xuy&ecirc;n 24/24.</p>\r\n', '<p style=\"text-align:center\"><img alt=\"\" height=\"533\" src=\"/image/images/19437749_501012586917989_491159876606415518_n-750x500.jpg\" width=\"800\" /></p>\r\n\r\n<ul>\r\n	<li>Lớp học d&agrave;nh cho những người mất gốc tiếng Anh v&agrave; bắt đầu từ con số 0.</li>\r\n	<li>Thời gian kh&oacute;a học :<strong>&nbsp;1,5 th&aacute;ng</strong></li>\r\n	<li>Thời gian học : 20h30 &ndash; 22h &ndash; thứ 2 đến thứ 6 .</li>\r\n	<li>Gi&aacute;o vi&ecirc;n ngo&agrave;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ c&aacute;c bạn học tập,&nbsp;<strong>giao tiếp 24/24.</strong></li>\r\n	<li>Đội ngũ trợ giảng nhiệt t&igrave;nh năng động v&agrave; thấu hiểu những&nbsp;<strong>kh&oacute; khăn&nbsp;</strong>của bạn.</li>\r\n	<li>Được&nbsp;<strong>sinh hoạt chung một m&aacute;i nh&agrave;</strong>, được giao tiếp tiếng Anh thường xuy&ecirc;n 24/24.</li>\r\n	<li>Tất cả c&aacute;c hoạt động đều sử dụng tiếng anh,&nbsp;<strong>như đi du học nước ngo&agrave;i.</strong></li>\r\n	<li>D&atilde; ngoại, ngoại kho&aacute; cuối tuần.</li>\r\n	<li>Được ở v&agrave; sinh hoạt trực tiếp tại Homestay.</li>\r\n	<li>Cơ sở vật chất đầy đủ tiện nghi, phục vụ tốt nhất cho việc lưu tr&uacute; v&agrave; học tập của c&aacute;c bạn.</li>\r\n	<li>Bạn được SỐNG, được CHƠI, được HỌC c&ugrave;ng T&Acirc;Y !!</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong><img alt=\"\" height=\"600\" src=\"/image/images/21616231_533437603675487_2640800995619027055_n-768x576.jpg\" width=\"800\" /></strong></a></p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>096 552 1294&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; v&agrave; trải nghiệm sống c&ugrave;ng T&acirc;y nh&eacute;&nbsp;</p>\r\n', 'img1.jpg', 0, 75, '', '2018-04-02 13:04:52', '2018-11-10 08:11:46', 1, '', '', '', '', '', 'Tiếng anh cho người mới', '', 'tieng-anh-cho-nguoi-moi', '', 1),
(107, 'Tiếng anh cơ bản', '<p><strong>Kh&oacute;a học tiếng Anh&nbsp;cơ bản</strong>&nbsp;tại Homestay Việt Nam&nbsp;l&agrave; bước đi đầu ti&ecirc;n trong h&agrave;nh tr&igrave;nh chinh phục Tiếng Anh. Trước khi học những kiến thức s&acirc;u rộng ch&uacute;ng ta n&ecirc;n đi l&ecirc;n từ những điều cơ bản, bước đi của bạn sẽ vững v&agrave; bền hơn.&nbsp;Chỉ với 2 th&aacute;ng học, khả năng giao tiếp Tiếng Anh của bạn sẽ được cải thiện r&otilde; rệt.</p>\r\n', '<pre style=\"text-align:center\">\r\n<img alt=\"\" height=\"500\" src=\"/image/images/21149908_386796001723753_1126944015510169275_n-750x500.jpg\" width=\"750\" /></pre>\r\n\r\n<ul>\r\n	<li>Lớp học d&agrave;nh cho những bạn đ&atilde; c&oacute; nền tảng cơ bản với tiếng Anh.</li>\r\n	<li>Thời gian kh&oacute;a học :<strong>&nbsp;1,5 th&aacute;ng</strong></li>\r\n	<li>Thời gian học : 18h30 &ndash; 20h, thứ 2 đến thứ 6 .</li>\r\n	<li>Gi&aacute;o vi&ecirc;n ngo&agrave;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ c&aacute;c bạn học tập,&nbsp;<strong>giao tiếp 24/24.</strong></li>\r\n	<li>Đội ngũ trợ giảng nhiệt t&igrave;nh năng động v&agrave; thấu hiểu những&nbsp;<strong>kh&oacute; khăn&nbsp;</strong>của bạn.</li>\r\n	<li>Được&nbsp;<strong>sinh hoạt chung một m&aacute;i nh&agrave;</strong>, được giao tiếp tiếng Anh thường xuy&ecirc;n 24/24.</li>\r\n	<li>Tất cả c&aacute;c hoạt động đều sử dụng tiếng anh,&nbsp;<strong>như đi du học nước ngo&agrave;i.</strong></li>\r\n	<li>D&atilde; ngoại, ngoại kho&aacute; cuối tuần.</li>\r\n	<li>Được ở v&agrave; sinh hoạt trực tiếp tại Homestay.</li>\r\n	<li>Cơ sở vật chất đầy đủ tiện nghi, phục vụ tốt nhất cho việc lưu tr&uacute; v&agrave; học tập của c&aacute;c bạn.</li>\r\n	<li>Bạn được SỐNG, được CHƠI, được HỌC c&ugrave;ng T&Acirc;Y !!</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong><img alt=\"\" height=\"563\" src=\"/image/images/18319269_467008623651719_1760379024847776102_o-768x576.jpg\" width=\"750\" /></strong></a></p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>096 552 1294&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; v&agrave; trải nghiệm sống c&ugrave;ng T&acirc;y nh&eacute;&nbsp;<img alt=\"', 'img3.jpg', 0, 75, '', '2018-04-02 13:04:07', '2018-11-10 08:11:21', 1, '', '', '', '', '', 'Tiếng anh cơ bản', '', 'tieng-anh-co-ban', '', 1),
(108, 'Tiếng anh trung cấp', '<p>Kh&aacute;c ho&agrave;n to&agrave;n với những chương tr&igrave;nh tiếng Anh s&aacute;ch vở kh&aacute;c, <strong>kh&oacute;a học tiếng Anh&nbsp;trung cấp</strong> tại Homestay Việt Nam&nbsp;sẽ đem đến cho học vi&ecirc;n những trải nghiệm mới về m&ocirc; h&igrave;nh học tiếng Anh thực tế tại địa điểm ph&ugrave; hợp, những kiến thức v&agrave; những t&igrave;nh huống thực tế sẽ gi&uacute;p bạn kh&ocirc;ng sợ bất cứ trở ngại n&agrave;o nữa!</p>\r\n', '<p style=\"text-align:center\"><img alt=\"\" height=\"500\" src=\"/image/images/khoa-hoc-tieng-anh-giao-tiep-trung-cap-thong-thuong.jpg\" width=\"750\" /></p>\r\n\r\n<ul>\r\n	<li>Lớp học d&agrave;nh cho những bạn đ&atilde; c&oacute; nền tảng tiếng Anh tốt v&agrave; mong muốn giao tiếp&nbsp;<strong>nhuần nhuyễn,&nbsp;</strong><strong>ch&eacute;m tiếng Anh như gi&oacute;&nbsp;</strong>v&agrave;&nbsp;<strong>sử dụng th&agrave;nh thạo tiếng Anh như: thuyết tr&igrave;nh,&hellip;</strong></li>\r\n	<li>Thời gian kh&oacute;a học :<strong>&nbsp;1,5 th&aacute;ng</strong></li>\r\n	<li>Thời gian học : 20h30 &ndash; 22h &ndash; thứ 2 đến thứ 6 .</li>\r\n	<li>Gi&aacute;o vi&ecirc;n ngo&agrave;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ c&aacute;c bạn học tập,&nbsp;<strong>giao tiếp 24/24.</strong></li>\r\n	<li>Đội ngũ trợ giảng nhiệt t&igrave;nh năng động v&agrave; thấu hiểu những&nbsp;<strong>kh&oacute; khăn&nbsp;</strong>của bạn.</li>\r\n	<li>Được&nbsp;<strong>sinh hoạt chung một m&aacute;i nh&agrave;</strong>, được giao tiếp tiếng Anh thường xuy&ecirc;n 24/24.</li>\r\n	<li>Tất cả c&aacute;c hoạt động đều sử dụng tiếng anh,&nbsp;<strong>như đi du học nước ngo&agrave;i.</strong></li>\r\n	<li>D&atilde; ngoại, ngoại kho&aacute; cuối tuần.</li>\r\n	<li>Được ở v&agrave; sinh hoạt trực tiếp tại Homestay.</li>\r\n	<li>Cơ sở vật chất đầy đủ tiện nghi, phục vụ tốt nhất cho việc lưu tr&uacute; v&agrave; học tập của c&aacute;c bạn.</li>\r\n	<li>Bạn được SỐNG, được CHƠI, được HỌC c&ugrave;ng T&Acirc;Y !!</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong><img alt=\"\" height=\"500\" src=\"/image/images/21149908_386796001723753_1126944015510169275_n-750x500.jpg\" width=\"750\" /></strong></a></p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>096 552 1294&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; v&agrave; trải nghiệm sống c&ugrave;ng T&acirc;y nh&eacute;&nbsp;</p>\r\n', 'img2.jpg', 0, 75, '', '2018-04-02 13:04:18', '2018-11-10 08:11:55', 1, '', '', '', '', '', 'Tiếng anh trung cấp', '', 'tieng-anh-trung-cap', '', 1),
(109, 'Tiếng anh nâng cao', '<p><strong>Kh&oacute;a học tiếng Anh&nbsp;n&acirc;ng cao</strong> được&nbsp;thiết kế cho sinh vi&ecirc;n đại học &amp; những người đi l&agrave;m. Ph&aacute;t triển kỹ năng tiếng Anh giao tiếp tổng qu&aacute;t c&aacute;c kỹ năng như nghe -&nbsp;n&oacute;i - đọc - viết. Kh&oacute;a học c&ograve;n gi&uacute;p bạn n&acirc;ng cao vốn từ vựng về kinh tế, văn h&oacute;a, x&atilde; hội,&hellip;gi&uacute;p cho học vi&ecirc;n tự tin hơn khi sử dụng tiếng Anh.</p>\r\n', '<p style=\"text-align:center\"><img alt=\"\" height=\"500\" src=\"/image/images/16684204_301622896907731_6514306528625090718_n-750x500.jpg\" width=\"750\" /></p>\r\n\r\n<ul>\r\n	<li>Lớp học d&agrave;nh cho những bạn đ&atilde; c&oacute; nền tảng tiếng Anh tốt v&agrave; mong muốn giao tiếp&nbsp;<strong>nhuần nhuyễn,&nbsp;</strong><strong>ch&eacute;m tiếng Anh như gi&oacute;&nbsp;</strong>v&agrave;&nbsp;<strong>sử dụng th&agrave;nh thạo tiếng Anh như: thuyết tr&igrave;nh,&hellip;</strong></li>\r\n	<li>Thời gian kh&oacute;a học :<strong>&nbsp;1,5 th&aacute;ng</strong></li>\r\n	<li>Thời gian học : 20h30 &ndash; 22h &ndash; thứ 2 đến thứ 6 .</li>\r\n	<li>Gi&aacute;o vi&ecirc;n ngo&agrave;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ c&aacute;c bạn học tập,&nbsp;<strong>giao tiếp 24/24.</strong></li>\r\n	<li>Đội ngũ trợ giảng nhiệt t&igrave;nh năng động v&agrave; thấu hiểu những&nbsp;<strong>kh&oacute; khăn&nbsp;</strong>của bạn.</li>\r\n	<li>Được&nbsp;<strong>sinh hoạt chung một m&aacute;i nh&agrave;</strong>, được giao tiếp tiếng Anh thường xuy&ecirc;n 24/24.</li>\r\n	<li>Tất cả c&aacute;c hoạt động đều sử dụng tiếng anh,&nbsp;<strong>như đi du học nước ngo&agrave;i.</strong></li>\r\n	<li>D&atilde; ngoại, ngoại kho&aacute; cuối tuần.</li>\r\n	<li>Được ở v&agrave; sinh hoạt trực tiếp tại Homestay.</li>\r\n	<li>Cơ sở vật chất đầy đủ tiện nghi, phục vụ tốt nhất cho việc lưu tr&uacute; v&agrave; học tập của c&aacute;c bạn.</li>\r\n	<li>Bạn được SỐNG, được CHƠI, được HỌC c&ugrave;ng T&Acirc;Y !!</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong><img alt=\"\" height=\"563\" src=\"/image/images/23032727_837656869741023_1558384203872746011_n-768x576.jpg\" width=\"750\" /></strong></a></p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>096 552 1294&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; v&agrave; trải nghiệm sống c&ugrave;ng T&acirc;y nh&eacute;&nbsp;</p>\r\n', 'img1.jpg', 0, 75, '', '2018-04-05 11:04:35', '2018-11-10 08:11:50', 1, '', '', '', '', '', 'Tiếng anh nâng cao', '', 'tieng-anh-nang-cao', '', 1),
(113, 'Làm gì để không trì hoãn', '<p>Th&oacute;i quen tr&igrave; ho&atilde;n l&agrave; th&oacute;i quen c&oacute; ở tất cả mọi người d&ugrave; l&agrave; th&agrave;nh c&ocirc;ng hay thất bại, d&ugrave; l&agrave; g&aacute;i hay trai, d&ugrave; n&ocirc;ng th&ocirc;n hay th&agrave;nh thị, d&ugrave; luật sư hay xe &ocirc;m, d&ugrave; triệu ph&uacute; hay ăn xin.</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"571\" src=\"http://homestayvn.com.vn/wp-content/uploads/2017/12/23130997_996658547143454_7902553436096416482_n-736x600.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&oacute;i quen tr&igrave; ho&atilde;n l&agrave; th&oacute;i quen c&oacute; ở tất cả mọi người d&ugrave; l&agrave; th&agrave;nh c&ocirc;ng hay thất bại, d&ugrave; l&agrave; g&aacute;i hay trai, d&ugrave; n&ocirc;ng th&ocirc;n hay th&agrave;nh thị, d&ugrave; luật sư hay xe &ocirc;m, d&ugrave; triệu ph&uacute; hay ăn xin.</p>\r\n\r\n<p>Những người ko c&oacute; th&oacute;i quen tr&igrave; ho&atilde;n thường được gọi l&agrave; &ldquo;phổi b&ograve;&rdquo; hay &ldquo;nhanh nhảu đoảng&rdquo; hay &ldquo;hấp tấp&rdquo;. N&ecirc;n dần dần cũng được &ldquo;cảm ho&aacute;&rdquo; th&agrave;nh người tr&igrave; ho&atilde;n với c&acirc;u thần ch&uacute;: &ldquo;cứ từ từ&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>N&oacute;i kh&ocirc;ng ngoa th&igrave; 100% nh&acirc;n loại đều tr&igrave; ho&atilde;n</strong></p>\r\n\r\n<p><strong>Theo định luật 1&nbsp;</strong>của Newton th&igrave; mọi vật c&oacute; khối lượng th&igrave; đều c&oacute;&nbsp;<em>qu&aacute;n t&iacute;nh</em>. Qu&aacute;n t&iacute;nh được gọi c&aacute;ch kh&aacute;c ch&iacute;nh l&agrave; sức ỳ. Điều n&agrave;y kh&ocirc;ng chỉ đ&uacute;ng với vật l&yacute;, với cơ học, m&agrave; c&ograve;n đ&uacute;ng với t&acirc;m l&yacute; con người. Con người th&iacute;ch l&agrave;m việc theo th&oacute;i quen, ngại sự thay đổi. Qu&aacute;n t&iacute;nh l&agrave; nếu đứng im th&igrave; cứ đứng im, nếu chuyển động th&igrave; cứ chuyển động. Một người đang l&agrave;m 10 việc m&agrave; bắt chỉ l&agrave;m 1 việc th&igrave; kh&ocirc;ng chịu được, c&oacute; giảm th&igrave; giảm xuống 9, xuống 8 rồi từ từ giảm. Một người đang l&agrave;m một việc m&agrave; bắt l&agrave;m 10 việc cũng kh&ocirc;ng l&agrave;m nổi v&igrave; chưa c&oacute; qu&aacute;n t&iacute;nh lớn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tr&igrave; ho&atilde;n l&agrave; th&oacute;i quen li&ecirc;n quan đến sức ỳ !</strong></p>\r\n\r\n<p>Khi định l&agrave;m c&aacute;i g&igrave; mới, t&acirc;m l&yacute;&nbsp;<strong><em>&ldquo;cứ từ từ&rdquo;</em></strong>&nbsp;sẽ khiến đầu &oacute;c, ch&acirc;n tay cứ l&agrave;m theo những c&ocirc;ng việc cũ.</p>\r\n\r\n<p>Ch&uacute;ng ta tr&igrave; ho&atilde;n những mục ti&ecirc;u mới, những c&ocirc;ng việc mới, những dự định mới.</p>\r\n\r\n<p>Khi chưa c&oacute; wifi, với 3G r&ugrave;a b&ograve; chỉ đủ để lướt v&agrave;i c&aacute;i web nhẹ, facebook chữ trước h&igrave;nh ảnh tải về sau, t&ocirc;i đ&atilde; hứa với bản th&acirc;n: khi n&agrave;o c&oacute; wifi mạnh, t&ocirc;i sẽ học tiếng Anh chăm chỉ. Nhưng khi lắp xong wifi , t&ocirc;i lại chỉ mải m&ecirc; xem phim, v&agrave;i c&aacute;i h&agrave;i nhảm nh&iacute; của T&agrave;u khựa, phim kiếm hiệp v&agrave; một số gameshow ăn kh&aacute;ch tr&ecirc;n truyền h&igrave;nh.</p>\r\n\r\n<p>Đầu năm t&ocirc;i hăm hở viết ra mục ti&ecirc;u cho năm mới n&agrave;o l&agrave; đọc s&aacute;ch, n&agrave;o l&agrave; kiếm tiền, n&agrave;o l&agrave; tập gym, n&agrave;o l&agrave; học tiếng Anh, n&agrave;o l&agrave; x&acirc;y dựng một c&ocirc;ng việc kinh doanh. Rồi một v&agrave;i việc đột xuất, t&ocirc;i phải ho&agrave;n th&agrave;nh trong thời gian ngắn. T&ocirc;i nỗ lực cho xong v&agrave; tự nhủ: xong việc n&agrave;y ta sẽ triển khai những việc kia. Xong việc, t&ocirc;i tự thưởng cho m&igrave;nh nghỉ ngơi v&agrave;i ng&agrave;y, xem v&agrave;i bộ phim d&agrave;i tập, đọc v&agrave;i cuốn s&aacute;ch giải tr&iacute;, lướt facebook, xem h&agrave;i, nghe nhạc. V&agrave; thời gian th&igrave; cứ tr&ocirc;i qua. Rồi kỳ thi đến, lại &ocirc;n thi. Rồi việc gấp cần ho&agrave;n th&agrave;nh lại đến, lại phải ho&agrave;n th&agrave;nh. Thoắt một c&aacute;i đ&atilde; nửa năm tr&ocirc;i qua. C&aacute;c mục ti&ecirc;u vẫn nằm tr&ecirc;n sổ tay, vẫn đ&oacute;ng bụi, nằm im v&agrave; vẹn nguy&ecirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lo sợ tuổi trẻ qua đi với với b&agrave;n tay trắng v&agrave; những thứ nh&agrave;n nhạt, v&agrave;i th&agrave;nh tựu con con, t&ocirc;i t&igrave;m hiểu c&aacute;ch m&agrave; những người kh&aacute;c ho&agrave;n th&agrave;nh mục ti&ecirc;u. Tr&igrave; ho&atilde;n l&agrave; kẻ th&ugrave; số 1. Kh&ocirc;ng phải con người ta kh&ocirc;ng đủ khả năng l&agrave; để l&agrave;m một việc mới, vấn đề chỉ l&agrave; người ta kh&oacute; để bắt đầu một c&aacute;i mới. Bao đời nay đ&atilde; đ&uacute;c kết một c&acirc;u: vạn sự khởi đầu nan. Người ta c&oacute; mu&ocirc;n v&agrave;n nỗi sợ, nỗi sợ bắt đầu một việc mới c&oacute; thể l&agrave;m người ta ướt sũng quần. Sợ bắt chuyện l&agrave;m quen với bạn g&aacute;i, sợ đứng giữa đ&aacute;m đ&ocirc;ng để h&aacute;t một b&agrave;i, sợ một đối t&aacute;c chưa gặp, sợ xin việc một người lạ hoắc,&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"404\" src=\"/image/images/1/23113622_1700637546660486_484617217_n-736x600.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&aacute;ch đơn giản để vượt qua nỗi sợ đ&oacute;, đơn giản l&agrave;: h&atilde;y cứ mạnh dạn bắt đầu !!!</strong></p>\r\n\r\n<p>Khi s&uacute;ng đ&atilde; nổ th&igrave; người l&iacute;nh ko muốn t&egrave; nữa. Bắt đầu h&aacute;t th&igrave; sẽ ko run. Khi muốn nghỉ việc th&igrave; cứ viết đơn v&agrave; đến gặp sếp. Khi muốn xin việc th&igrave; cứ đến gặp gi&aacute;m đốc v&agrave; g&otilde; cửa. Khi muốn học tiếng Anh th&igrave; cứ đăng k&yacute; v&agrave; đ&oacute;ng học ph&iacute;. Khi muốn học guitar th&igrave; cứ mua đ&agrave;n. Khi muốn start up th&igrave; cứ vay tiền v&agrave; sắm sửa thiết bị.</p>\r\n\r\n<p>Đặt v&agrave;o thế &ldquo;đ&atilde; rồi&rdquo; sẽ buộc ta phải bước tiếp.</p>\r\n\r\n<p>Xe m&aacute;y chỉ tốn xăng khi v&agrave;o số 1 v&agrave; k&eacute;o ga. Đi được rồi sẽ c&oacute; qu&aacute;n t&iacute;nh để ta đi tiếp những nhanh hơn.</p>\r\n\r\n<p>Đừng đợi những thứ c&oacute; đủ rồi mới bắt đầu. Đừng đợi tất cả đ&egrave;n bật xanh rồi mới đi. Cứ đi rồi sẽ đến.</p>\r\n\r\n<p><strong>Thời điểm th&iacute;ch hợp nhất l&agrave; &ldquo;b&acirc;y giờ&rdquo; chứ kh&ocirc;ng phải ng&agrave;y mai!</strong></p>\r\n\r\n<p>Nhớ một c&acirc;u chuyện, sau khi được tổng thống Mỹ giao cho trồng c&acirc;y, &ocirc;ng trợ l&yacute; đến gặp v&agrave; thắc mắc: c&acirc;y n&agrave;y phải 20 năm nữa mới ra quả. Tổng thống trả lời: vậy &ocirc;ng định trồng ngay h&ocirc;m nay hay đợi 20 năm nữa mới trồng?</p>\r\n\r\n<p><strong>H&atilde;y trồng c&acirc;y ngay h&ocirc;m nay, bắt đầu mọi thứ ngay h&ocirc;m nay chứ kh&ocirc;ng phải ng&agrave;y mai hay một ng&agrave;y đẹp trời n&agrave;o đ&acirc;u c&aacute;c bạn ạ !!!</strong></p>\r\n\r\n<p><strong>Đến với Homestay Việt Nam v&agrave; chinh phục tiếng Anh ngay l&uacute;c n&agrave;y!!&nbsp;</strong>Hi vọng qua những chia sẻ bổ &iacute;ch tr&ecirc;n sẽ gi&uacute;p bạn c&oacute; kỹ năng để bắt đầu học c&aacute;ch ph&aacute;t &acirc;m trong tiếng Anh chuẩn như người bản xứ dễ d&agrave;ng, đạt hiệu quả cao. Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<strong><em>0168 3122 994&nbsp;</em></strong>để được tư vấn cụ thể, miễn ph&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'img1.jpg', 0, 76, '', '2018-10-31 08:10:13', '2018-11-10 13:11:21', 1, '', '', '', '', '', 'Làm gì để không trì hoãn', '', 'lam-gi-de-khong-tri-hoan', '', 1),
(114, 'Bí quyết tạo thói quen học từ mới', '<p>Để&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">n&oacute;i tr&ocirc;i chảy tiếng Anh</a>, bạn cần c&oacute; vốn từ vựng s&acirc;u rộng. Ngữ ph&aacute;p c&oacute; thể l&agrave; yếu tố thứ yếu nhưng bạn chắc chắn kh&ocirc;ng thể bỏ qua được nền tảng của mọi loại ng&ocirc;n ngữ:&nbsp;<strong>&ldquo;từ vựng&rdquo;</strong>.&nbsp;Thực tế l&agrave; bạn kh&ocirc;ng thể nhớ hết cả quyển từ điển tiếng Anh chỉ trong một ng&agrave;y.</p>\r\n', '<p style=\"text-align:center\"><img alt=\"\" height=\"485\" src=\"/image/images/1/Picture1-768x533.png\" width=\"700\" /></p>\r\n\r\n<p>Để&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">n&oacute;i tr&ocirc;i chảy tiếng Anh</a>, bạn cần c&oacute; vốn từ vựng s&acirc;u rộng. Ngữ ph&aacute;p c&oacute; thể l&agrave; yếu tố thứ yếu nhưng bạn chắc chắn kh&ocirc;ng thể bỏ qua được nền tảng của mọi loại ng&ocirc;n ngữ:&nbsp;<strong>&ldquo;từ vựng&rdquo;</strong>.&nbsp;Thực tế l&agrave; bạn kh&ocirc;ng thể nhớ hết cả quyển từ điển tiếng Anh chỉ trong một ng&agrave;y.</p>\r\n\r\n<p>Dưới đ&acirc;y, Homestay Việt Nam sẽ chia sẻ với bạn một số&nbsp;b&iacute; quyết để l&agrave;m chủ ngoại ngữ n&agrave;y chỉ dưới 30 ph&uacute;t mỗi ng&agrave;y.</p>\r\n\r\n<p><strong>D&Agrave;NH KHOẢNG 10 ĐẾN 20 PH&Uacute;T MỖI NG&Agrave;Y</strong></p>\r\n\r\n<p>H&atilde;y&nbsp;<em><strong>thiết lập một mục ti&ecirc;u h&agrave;ng ng&agrave;y</strong></em>&nbsp;cho m&igrave;nh, nhưng cần đảm bảo t&iacute;nh thực tế v&agrave; b&aacute;m s&aacute;t n&oacute;. Bắt đầu bằng mục ti&ecirc;u mỗi ng&agrave;y một từ mới, sau đ&oacute;, theo lộ tr&igrave;nh, tăng dần từ hai đến năm từ mới mỗi ng&agrave;y. H&atilde;y tự hỏi bản th&acirc;n xem bạn c&oacute; thể d&agrave;nh tối đa bao nhi&ecirc;u thời gian cho việc học ngoại ngữ mỗi ng&agrave;y? Liệu m&igrave;nh c&oacute; thể đạt được mục ti&ecirc;u với khoảng 20 ph&uacute;t mỗi ng&agrave;y? Điều g&igrave; l&agrave; quan trọng trong qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh th&oacute;i quen học tiếng Anh h&agrave;ng ng&agrave;y. Tất nhi&ecirc;n, bạn cũng đừng qu&ecirc;n rằng 15 ph&uacute;t d&agrave;nh cho việc học mỗi ng&agrave;y chắc chắn sẽ đem lại kết quả tốt hơn việc chỉ d&agrave;nh 30 ph&uacute;t mỗi tuần.</p>\r\n\r\n<p><strong>C&Oacute; MỘT CUỐN SỔ GHI CH&Eacute;P TỪ VỰNG</strong></p>\r\n\r\n<p>Việc trang bị cho bản th&acirc;n một&nbsp;<em><strong>cuốn sổ ghi ch&eacute;p từ vựng</strong>&nbsp;</em>kh&ocirc;ng chỉ đơn giản l&agrave; cầm theo một cuốn sổ để ghi ch&eacute;p m&agrave; l&agrave; bạn đang lưu trữ mọi kiến thức bạn học trong một nguồn duy nhất. Nếu bạn th&iacute;ch sử dụng c&aacute;c ứng dụng tr&ecirc;n điện thoại, đừng ngần ngại sử dụng ch&uacute;ng. Điều quan trọng l&agrave; bạn thiết lập v&agrave; ph&aacute;t triển được cho bản th&acirc;n một hệ thống lưu trữ những từ vựng m&agrave; bạn đ&atilde; học được. Từ đ&oacute;, bạn sẽ dễ d&agrave;ng xem v&agrave; hệ thống lại ch&uacute;ng hai tuần một lần.</p>\r\n\r\n<h3>KH&Ocirc;NG CHỈ L&Agrave; HỌC TỪ MỚI</h3>\r\n\r\n<p>C&aacute;ch tốt nhất để l&agrave;m chủ vốn từ vựng cho bản th&acirc;n đ&oacute; l&agrave; sử dụng những từ ngữ m&agrave; bạn học được v&agrave; &aacute;p dụng ch&uacute;ng v&agrave;o ngữ cảnh ph&ugrave; hợp. Khi bạn x&acirc;y dựng vốn từ vựng tiếng Anh, h&atilde;y học th&ecirc;m cả c&aacute;c giới từ đi k&egrave;m với từ đ&oacute; cũng như &yacute; nghĩa của ch&uacute;ng.</p>\r\n\r\n<p>V&iacute; dụ: từ &lsquo;get away with&rsquo; sẽ c&oacute; nghĩa ho&agrave;n to&agrave;n kh&aacute;c mới &lsquo;get away from&rsquo;. Cụm từ đầu ti&ecirc;n c&oacute; nghĩa l&agrave; &lsquo;trốn tho&aacute;t&rsquo; &ndash; trốn tr&aacute;nh hoặc cố tho&aacute;t khỏi một c&aacute;i g&igrave; đ&oacute;, c&ograve;n &lsquo;get away from&rsquo; c&oacute; nghĩa l&agrave; &lsquo;tr&aacute;nh xa&rsquo; &ndash; n&eacute; tr&aacute;nh sự đổ lỗi, trừng phạt hoặc hệ quả kh&ocirc;ng mong muốn của một h&agrave;nh động sai tr&aacute;i hoặc lỗi lầm (Hắn nghĩ hắn c&oacute; thể tho&aacute;t khỏi h&igrave;nh phạt ngoại t&igrave;nh).</p>\r\n\r\n<h3>TỰ ĐƯA RA V&Agrave;I BA V&Iacute; DỤ</h3>\r\n\r\n<p>Sử dụng hay kh&ocirc;ng d&ugrave;ng c&aacute;c từ mới đ&oacute;. Cũng như ghi ch&eacute;p lại ch&uacute;ng sẽ chẳng bao giờ l&agrave; đủ. N&oacute; đ&ograve;i hỏi bạn phải ki&ecirc;n tr&igrave; luyện tập v&agrave; đưa v&agrave;o ngữ cảnh để quen dần với từ mới, v&igrave; thế h&atilde;y tận dụng ch&uacute;ng.</p>\r\n\r\n<h3><a href=\"https://www.facebook.com/homestayvn.com.vn/\">Một m&ocirc;i trường tốt l&agrave; kh&ocirc;ng thể thiếu</a></h3>\r\n\r\n<p>C&aacute;ch tốt nhất để bắt đầu l&agrave;m g&igrave; đ&oacute; chẳng phải l&agrave; bắt tay v&agrave;o l&agrave;m lu&ocirc;n hay sao. Bạn nghĩ sao nếu c&oacute; một m&ocirc;i trường 100% gi&aacute;o vi&ecirc;n nước ngo&agrave;i c&ugrave;ng sinh hoạt với bạn v&agrave; luyện tập tất cả những từ mới bạn vừa được học ngay lập tức. C&ograve;n g&igrave; tuyệt vời hơn &nbsp;ăn, học,uống, ngủ, nghỉ, ngấm tiếng anh trong c&ugrave;ng 1 nh&agrave; với người nước ngo&agrave;i. Tới Homestay Việt Nam v&agrave; trải nghiệm ngay nh&eacute;.</p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Ch&uacute;c bạn sớm chinh phục được mục ti&ecirc;u tiếng anh của m&igrave;nh nh&eacute;!!!</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>0168 3122 994&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; nh&eacute;&nbsp;<img alt=\"', 'img2.jpg', 0, 76, '', '2018-10-31 08:10:49', '2018-11-10 10:11:38', 1, '', '', '', '', '', 'Bí quyết tạo thói quen học từ mới', '', 'bi-quyet-tao-thoi-quen-hoc-tu-moi', '', 1),
(115, 'Những câu hỏi thường gặp khi bạn chuẩn bị học Tiếng Anh', '<p>M&igrave;nh nhận được rất nhiều c&acirc;u hỏi như vậy từ học vi&ecirc;n trong qu&aacute; tr&igrave;nh tư vấn, điều đầu ti&ecirc;n m&igrave;nh muốn n&oacute;i với c&aacute;c bạn l&agrave; trước khi bạn bắt đầu học tiếng anh, bạn cần phải biết bạn&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">học để l&agrave;m g&igrave;</a>? Ai cũng được dạy l&agrave; phải học giỏi tiếng anh, nhưng nhiều người kh&ocirc;ng thể n&oacute;i r&otilde; r&agrave;ng l&agrave; họ cần học để l&agrave;m c&aacute;i g&igrave;, nếu bạn kh&ocirc;ng trả lời được c&acirc;u hỏi đ&oacute;, bạn kh&ocirc;ng bao giờ ki&ecirc;n tr&igrave; để học được tiếng Anh.</p>\r\n', '<p style=\"text-align:center\"><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><img alt=\"\" height=\"469\" src=\"/image/images/1/Picture12-768x515.png\" width=\"700\" /></a></p>\r\n\r\n<p><strong>T&ocirc;i muốn học Tiếng Anh, nhưng t&ocirc;i đ&atilde; qu&ecirc;n hết rồi, t&ocirc;i sẽ phải bắt đầu như thế n&agrave;o ?</strong></p>\r\n\r\n<p>M&igrave;nh nhận được rất nhiều c&acirc;u hỏi như vậy từ học vi&ecirc;n trong qu&aacute; tr&igrave;nh tư vấn, điều đầu ti&ecirc;n m&igrave;nh muốn n&oacute;i với c&aacute;c bạn l&agrave; trước khi bạn bắt đầu học tiếng anh, bạn cần phải biết bạn&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">học để l&agrave;m g&igrave;</a>? Ai cũng được dạy l&agrave; phải học giỏi tiếng anh, nhưng nhiều người kh&ocirc;ng thể n&oacute;i r&otilde; r&agrave;ng l&agrave; họ cần học để l&agrave;m c&aacute;i g&igrave;, nếu bạn kh&ocirc;ng trả lời được c&acirc;u hỏi đ&oacute;, bạn kh&ocirc;ng bao giờ ki&ecirc;n tr&igrave; để học được tiếng Anh.</p>\r\n\r\n<p><em>1. T&ocirc;i phải học tiếng anh v&igrave; t&ocirc;i cần du học thạc sĩ ở nước ngo&agrave;i. Ch&iacute;nh x&aacute;c, bạn cần phải trả lời được như thế n&agrave;y v&igrave; mục ti&ecirc;u rất r&otilde; r&agrave;ng, nếu kh&ocirc;ng c&oacute; tiếng anh, bạn kh&ocirc;ng thể đi du học được, v&agrave; du học l&agrave; động lực cho việc học tiếng anh.</em></p>\r\n\r\n<p><em>2. T&ocirc;i phải học tiếng anh v&igrave; t&ocirc;i gh&eacute;t l&agrave;m việc cho c&aacute;c c&ocirc;ng ty Việt Nam, lương thấp, chế độ đ&atilde;i ngộ ngh&egrave;o n&agrave;n, n&oacute;i chung l&agrave; t&ocirc;i căm phẫn l&agrave;m việc trong một m&ocirc;i trường kh&ocirc;ng chuy&ecirc;n nghiệp. Ch&iacute;nh x&aacute;c, động lực của bạn ở đ&acirc;y l&agrave; cơ hội thăng tiến trong nghề nghiệp v&agrave; một mức lương cao hơn, đủ điều kiện t&agrave;i ch&iacute;nh để chăm lo cho gia đ&igrave;nh v&agrave; cơ hội thăng tiến trong tương lai.</em></p>\r\n\r\n<p>Bạn cần phải r&otilde; r&agrave;ng được mục ti&ecirc;u như vậy th&igrave; mới c&oacute; động lực học tập, ngo&agrave;i ra, trẻ con cũng c&oacute; thể n&oacute;i được phải học tiếng anh, nhưng kh&ocirc;ng ai cũng c&oacute; thể định nghĩa được học đến như thế n&agrave;o l&agrave; th&agrave;nh c&ocirc;ng . Với m&igrave;nh, một ai đ&oacute; được gọi l&agrave; th&agrave;nh c&ocirc;ng kh&ocirc;ng phải dựa tr&ecirc;n điểm thi IELTS hay iBT cao hơn, m&agrave; l&agrave; người đ&oacute; đ&atilde; thực sự đạt được mục đ&iacute;ch của m&igrave;nh đăt ra khi học tiếng anh ban đầu chưa. Nếu bạn chỉ dừng ở mức học tiếng anh để phục vụ c&ocirc;ng việc h&agrave;nh ch&iacute;nh, kinh doanh th&igrave; 6.5 IELT hoặc iBT 70 l&agrave; th&agrave;nh c&ocirc;ng, bạn ho&agrave;n to&agrave;n c&oacute; thể giao tiếp th&agrave;nh thạo với c&aacute;c đối t&aacute;c nước ngo&agrave;i, l&agrave;m việc với c&aacute;c sếp, đầu qu&acirc;n cho những tập đo&agrave;n đa quốc gia. C&ograve;n nếu bạn muốn học thạc sĩ, kiếm học bổng ở những trường TOP, bạn cần một con số cao hơn rất nhiều v&agrave; dĩ nhi&ecirc;n cũng đ&ograve;i hỏi thời gian d&agrave;i hơn.</p>\r\n\r\n<p>V&igrave; vậy, h&atilde;y đặt ra mục ti&ecirc;u cụ thể cho m&igrave;nh trong việc học v&iacute; dụ:</p>\r\n\r\n<ul>\r\n	<li><em>T&ocirc;i muốn chuyển c&ocirc;ng việc, t&ocirc;i muốn thử apply v&agrave;o c&aacute;c c&ocirc;ng ty nước ngo&agrave;i, ở một v&iacute; tr&iacute; cao hơn v&agrave; t&ocirc;i cần đạt 6.0 IELTS hay 70 iBT cho mục ti&ecirc;u n&agrave;y.</em></li>\r\n	<li><em>T&ocirc;i muốn học thạc sĩ n&ecirc;n t&ocirc;i phải thi được 6.5 IELTS cho mục ti&ecirc;u của t&ocirc;i</em></li>\r\n</ul>\r\n\r\n<p>Như vậy, c&aacute;c bạn c&oacute; thể lượng h&oacute;a v&agrave; nh&igrave;n r&otilde; mục ti&ecirc;u của m&igrave;nh. Điều quan trọng nhất ở đ&acirc;y m&igrave;nh muốn n&oacute;i l&agrave; bạn cần c&oacute; một mục ti&ecirc;u ph&ugrave; hợp với mục đ&iacute;ch của bạn v&igrave; kh&ocirc;ng ai l&agrave; tỷ ph&uacute; thời gian để cứ theo đuổi ho&agrave;i m&ocirc;n tiếng Anh n&agrave;y v&agrave; cuối c&ugrave;ng, n&oacute; chỉ l&agrave; một c&ocirc;ng cụ quan trọng phục vụ cuộc sống của ch&uacute;ng ta chứ kh&ocirc;ng phải l&agrave; mục ti&ecirc;u sống.</p>\r\n\r\n<p style=\"text-align:center\"><strong>Thời gian: T&ocirc;i muốn học tiếng anh để t&igrave;m kiếm cơ hội nghề nghiệp, mục đ&iacute;ch của t&ocirc;i l&agrave; 6.0 IELTS, t&ocirc;i sẽ phải học trong bao l&acirc;u ?</strong><br />\r\n<a href=\"https://www.facebook.com/homestayvn.com.vn/\"><img alt=\"\" height=\"350\" src=\"/image/images/1/Picture13-600x300.png\" width=\"700\" /></a><br />\r\nPhụ thuộc v&agrave;o tr&igrave;nh độ ban đầu v&agrave; năng khiếu của bạn. Tuy nhi&ecirc;n, nếu bạn đang ở tr&igrave;nh độ cơ bản (kiểu trước kia học cho c&oacute; ở trường đại học) th&igrave; bạn sẽ cần tối thiểu 8 th&aacute;ng để theo học (với những ai c&oacute; năng khiếu v&agrave; sự chăm chỉ). Tụi Anh n&oacute; đ&atilde; nghi&ecirc;n cứu l&agrave; mất 200 giờ để l&ecirc;n 1 điểm IELTS v&agrave; bạn cần x&aacute;c định thời gian như thế để c&oacute; thể học l&ecirc;n level m&igrave;nh muốn.</p>\r\n\r\n<p><strong>T&ocirc;i đang đi l&agrave;m, c&ocirc;ng việc ở cơ quan b&ugrave; đầu, t&ocirc;i rất muốn học tiếng anh, nhưng phải từ từ, l&uacute;c n&agrave;o rảnh t&ocirc;i sẽ học v&igrave; mất đến tận 8 th&aacute;ng đến 1 năm cơ m&agrave;?</strong></p>\r\n\r\n<p>Hầu hết những người kh&ocirc;ng học được tiếng anh đều cố t&igrave;m c&aacute;ch l&yacute; giải cho chuyện học h&agrave;nh như vậy, t&ocirc;i đ&atilde; từng n&oacute;i với nhiều bạn rằng, c&ocirc;ng việc của bạn sẽ c&agrave;ng ng&agrave;y c&agrave;ng bận l&ecirc;n khi bạn l&ecirc;n vị tr&iacute; cao hơn, nếu bạn kh&ocirc;ng bắt đầu từ b&acirc;y giờ, th&igrave; sau n&agrave;y sẽ c&agrave;ng kh&oacute; để bạn học, kh&ocirc;ng kể chuyện gia đ&igrave;nh, con c&aacute;i sẽ bao tr&ugrave;m lấy bạn v&agrave; kh&ocirc;ng cho bạn qu&atilde;ng thời gian nghỉ ngơi cho đến l&uacute;c th&agrave;nh c&aacute;t bụi.</p>\r\n\r\n<p>Do vậy, đừng bao giờ tr&igrave; ho&atilde;n v&igrave; hiện tại đang l&agrave; khoảng thời gian rảnh rỗi nhất của bạn. Bạn mất 1 năm học ngoại ngữ, nhưng n&oacute; c&oacute; thể l&aacute;i sự nghiệp của bạn sang một trang kh&aacute;c, đ&aacute;nh đổi 1 năm miệt m&agrave;i để lấy 30 năm sự nghiệp sau n&agrave;y, bạn chọn c&aacute;i n&agrave;o?</p>\r\n\r\n<p><strong>OK, T&ocirc;i đồng &yacute; với bạn l&agrave; phải học tiếng anh, vậy t&ocirc;i sẽ bắt đầu từ đ&acirc;u ?</strong></p>\r\n\r\n<p>C&acirc;u trả lời l&agrave; bạn cần 1 m&ocirc;i trường c&oacute; đủ kh&ocirc;ng gian v&agrave; động lực cho bạn theo đuổi. bạn nghĩ sao về việc sống trong c&ugrave;ng 1 nh&agrave; với c&aacute;c gi&aacute;o vi&ecirc;n nước ngo&agrave;i. Tất cả thời gian bạn về tới cổng l&agrave; chỉ c&ograve;n duy nhất 1 mục ti&ecirc;u để theo đuổi c&ugrave;ng c&aacute;c th&agrave;nh vi&ecirc;n kh&aacute;c trong nh&agrave; &ldquo;ENGLISH&rdquo;. Thử cảm nhận suốt 1 kh&oacute;a học c&ugrave;ng học v&agrave; luyện tập li&ecirc;n tục trực tiếp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i, kh&ocirc;ng c&oacute; chỗ cho VIETNAMESE th&igrave; cũng kh&ocirc;ng c&oacute; chỗ cho sự tr&igrave; ho&atilde;n của bạn đ&acirc;u. Nếu kh&ocirc;ng ngại thay đổi th&igrave; x&aacute;ch 1 t&acirc;m thế học hỏi đến&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">Homestay Việt Nam</a>&nbsp;v&agrave; bắt đầu thử th&aacute;ch bản th&acirc;n n&agrave;o!</p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>0168 3122 994&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; nh&eacute;&nbsp;</p>\r\n', 'img3.jpg', 0, 76, '', '2018-10-31 08:10:24', '2018-11-10 10:11:44', 1, '', '', '', '', '', 'Những câu hỏi thường gặp khi bạn chuẩn bị học Tiếng Anh', '', 'nhung-cau-hoi-thuong-gap-khi-ban-chuan-bi-hoc-tieng-anh', '', 1),
(116, 'Tại sao trẻ con trên Sapa lại bắn tiếng Anh như gió?', '<p>M&igrave;nh đi săn tuyết tr&ecirc;n Fansipan v&agrave; ph&aacute;t hiện ra một b&iacute; mật động trời:&nbsp;<strong>trẻ con d&acirc;n tộc&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">n&oacute;i tiếng Anh như b&atilde;o cấp 12, giật tr&ecirc;n cấp 12.</a></strong> C&aacute;c bạn l&yacute; giải gi&uacute;p m&igrave;nh đi! C&oacute; bạn n&oacute;i l&agrave; do du lịch, muốn kiếm tiền từ T&acirc;y th&igrave; phải n&oacute;i được tiếng Anh.&nbsp;<strong>Điều đ&oacute; đ&uacute;ng nhưng chưa đủ.</strong></p>\r\n', '<p style=\"text-align:center\"><img alt=\"\" height=\"525\" src=\"/image/images/25445990_578247125861201_6425485205890864552_n-1-768x576.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; M&igrave;nh đi săn tuyết tr&ecirc;n Fansipan v&agrave; ph&aacute;t hiện ra một b&iacute; mật động trời:&nbsp;<strong>trẻ con d&acirc;n tộc&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">n&oacute;i tiếng Anh như b&atilde;o cấp 12, giật tr&ecirc;n cấp 12.</a></strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; C&aacute;c bạn l&yacute; giải gi&uacute;p m&igrave;nh đi! C&oacute; bạn n&oacute;i l&agrave; do du lịch, muốn kiếm tiền từ T&acirc;y th&igrave; phải n&oacute;i được tiếng Anh.&nbsp;<strong>Điều đ&oacute; đ&uacute;ng nhưng chưa đủ.</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Tại sao vậy? Đ&uacute;ng l&agrave; bởi c&oacute; T&acirc;y đi du lịch, v&agrave; động lực r&otilde; r&agrave;ng trước mắt l&agrave; c&aacute;c bạn nhỏ b&aacute;n h&agrave;ng cho t&acirc;y. Chưa đủ v&igrave; sao? V&igrave; c&aacute;c v&ugrave;ng du lịch nhiều như Vũng T&agrave;u, Sầm Sơn, Quất L&acirc;m, Hạ Long&hellip; m&agrave; trẻ con v&ugrave;ng đ&oacute; đ&acirc;u c&oacute; g&igrave; đặc biệt đ&acirc;u.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Theo bước những du kh&aacute;ch t&acirc;y v&agrave; theo v&agrave;o c&aacute;c bản l&agrave;ng, m&igrave;nh ph&aacute;t hiện ra một điều:&nbsp;<em><strong>đ</strong><strong>&oacute; l&agrave;&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">T&acirc;y qu&aacute; nhiều</a>, v&agrave; T&acirc;y sống ở đ&acirc;y cũng qu&aacute; nhiều.</strong>&nbsp;</em>Một m&ocirc;i trường đủ đậm đặc để c&oacute; thể đắm ch&igrave;m v&agrave;o tiếng Anh một c&aacute;ch tự nhi&ecirc;n nhất. L&uacute;c n&agrave;y mới nhớ đến lời của c&aacute;c bạn đi du học:&nbsp;<em><strong>sang Mỹ 2 th&aacute;ng bằng ở Việt Nam c&agrave;y tiếng Anh cả 2 năm.</strong></em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"933\" src=\"/image/images/25446458_578247132527867_2287907853674278681_n.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Đ&uacute;ng l&agrave; kh&ocirc;ng phải b&agrave;n c&atilde;i g&igrave; nhiều. N&oacute;i c&oacute; người nghe v&agrave; nghe c&oacute; người n&oacute;i. Kh&ocirc;ng thể giỏi nghe n&oacute;i tiếng Anh khi một ng&agrave;y quất tiếng Việt 24/24 được. V&agrave; cũng chẳng phải tranh luận nhiều khi c&aacute;c bạn săn T&acirc;y b&ecirc;n bờ hồ để tập giao tiếp, khả năng hơn hẳn những người chỉ &ocirc;m gi&aacute;o tr&igrave;nh v&agrave; nghe đĩa mp3.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; C&aacute;c bạn sinh vi&ecirc;n ở H&agrave; Nội vừa bận học vừa bận l&agrave;m kh&ocirc;ng phải mấy ai cũng x&aacute;ch m&ocirc;ng l&ecirc;n Sapa để được ch&igrave;m v&agrave;o c&aacute;i&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>m&ocirc;i trường đậm đặc tiếng Anh</strong></a>&nbsp;ấy được. Ố ồ, nhưng may qu&aacute;, Homestay Việt Nam đang c&oacute; chương tr&igrave;nh ăn c&ugrave;ng T&acirc;y, ở c&ugrave;ng T&acirc;y, học c&ugrave;ng T&acirc;y chẳng k&eacute;m g&igrave; Sapa. C&aacute;c bạn chỉ việc lết m&ocirc;ng đến&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">Homestay Việt Nam</a>&nbsp;ngay giữa thủ đ&ocirc; H&agrave; Nội để được sống 24/24 trong m&ocirc;i trường đặc sệt tiếng Anh, T&acirc;y đầy l&uacute;c nh&uacute;c nh&agrave; m&agrave; học ph&iacute; chỉ c&oacute; 3 triệu một th&aacute;ng, tha hồ bắn tiếng Anh. Sau một thời gian cũng&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">tiếng Anh như si&ecirc;u b&atilde;o</a>.</p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>0168 3122 994&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; nh&eacute;&nbsp;</p>\r\n', 'img1.jpg', 0, 76, '', '2018-10-31 08:10:55', '2018-11-10 10:11:03', 1, '', '', '', '', '', 'Tại sao trẻ con trên Sapa lại bắn tiếng Anh như gió?', '', 'tai-sao-tre-con-tren-sapa-lai-ban-tieng-anh-nhu-gio', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(68, 'Clip học mẫu', '', '', 0, 0, '2018-10-31 08:10:55', NULL, 1, NULL, '', '', '', '', '', 'Clip học mẫu', '', 'clip-hoc-mau', '', 1),
(75, 'Khóa học', '', '', 0, 0, '2018-11-09 15:11:20', NULL, 1, NULL, '', '', '', '', '', 'Khóa học', '', 'khoa-hoc', '', 1),
(76, 'Tin tức sự kiện', '<p>1</p>\r\n', '', 0, 0, '2019-02-13 17:02:56', NULL, 1, NULL, '', '', '', '', '', 'Tin tức sự kiện', '', 'tin-tuc-su-kien', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(131, 68, 'vn', 'Clip học mẫu', '', NULL, '', '', '', '', '', 0, 'clip-hoc-mau', '', 'Clip học mẫu', ''),
(132, 68, 'en', 'Tin Merican Skills', '', '', '', '', '', '', '', 0, 'tin-merican-skills', '', 'Tin Merican Skills', ''),
(145, 75, 'vn', 'Khóa học', '', NULL, '', '', '', '', '', 0, 'khoa-hoc', '', 'Khóa học', ''),
(146, 75, 'en', 'Chương trình học', '', '', '', '', '', '', '', 0, 'chuong-trinh-hoc', '', 'Chương trình học', ''),
(147, 76, 'vn', 'Tin tức sự kiện', '<p>1</p>\r\n', NULL, '', '', '', '', '', 1, 'tin-tuc-su-kien', '', 'Tin tức sự kiện', ''),
(148, 76, 'en', 'english version Tin tức', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'en-tin-tuc', '', 'Tin tức', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(211, 106, 'vn', 'Tiếng anh cho người mới', '<p>Lớp học d&agrave;nh cho những người mất gốc tiếng Anh v&agrave; bắt đầu từ con số 0. Gi&aacute;o vi&ecirc;n ngo&agrave;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ c&aacute;c bạn học tập,&nbsp;<strong>giao tiếp 24/24.</strong>&nbsp;Đội ngũ trợ giảng nhiệt t&igrave;nh năng động v&agrave; thấu hiểu những&nbsp;<strong>kh&oacute; khăn&nbsp;</strong>của bạn. Được&nbsp;<strong>sinh hoạt chung một m&aacute;i nh&agrave;</strong>, được giao tiếp tiếng Anh thường xuy&ecirc;n 24/24.</p>\r\n', '<p style=\"text-align:center\"><img alt=\"\" height=\"533\" src=\"/image/images/19437749_501012586917989_491159876606415518_n-750x500.jpg\" width=\"800\" /></p>\r\n\r\n<ul>\r\n	<li>Lớp học d&agrave;nh cho những người mất gốc tiếng Anh v&agrave; bắt đầu từ con số 0.</li>\r\n	<li>Thời gian kh&oacute;a học :<strong>&nbsp;1,5 th&aacute;ng</strong></li>\r\n	<li>Thời gian học : 20h30 &ndash; 22h &ndash; thứ 2 đến thứ 6 .</li>\r\n	<li>Gi&aacute;o vi&ecirc;n ngo&agrave;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ c&aacute;c bạn học tập,&nbsp;<strong>giao tiếp 24/24.</strong></li>\r\n	<li>Đội ngũ trợ giảng nhiệt t&igrave;nh năng động v&agrave; thấu hiểu những&nbsp;<strong>kh&oacute; khăn&nbsp;</strong>của bạn.</li>\r\n	<li>Được&nbsp;<strong>sinh hoạt chung một m&aacute;i nh&agrave;</strong>, được giao tiếp tiếng Anh thường xuy&ecirc;n 24/24.</li>\r\n	<li>Tất cả c&aacute;c hoạt động đều sử dụng tiếng anh,&nbsp;<strong>như đi du học nước ngo&agrave;i.</strong></li>\r\n	<li>D&atilde; ngoại, ngoại kho&aacute; cuối tuần.</li>\r\n	<li>Được ở v&agrave; sinh hoạt trực tiếp tại Homestay.</li>\r\n	<li>Cơ sở vật chất đầy đủ tiện nghi, phục vụ tốt nhất cho việc lưu tr&uacute; v&agrave; học tập của c&aacute;c bạn.</li>\r\n	<li>Bạn được SỐNG, được CHƠI, được HỌC c&ugrave;ng T&Acirc;Y !!</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong><img alt=\"\" height=\"600\" src=\"/image/images/21616231_533437603675487_2640800995619027055_n-768x576.jpg\" width=\"800\" /></strong></a></p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>096 552 1294&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; v&agrave; trải nghiệm sống c&ugrave;ng T&acirc;y nh&eacute;&nbsp;</p>\r\n', '', '', '', '', '', 0, 'tieng-anh-cho-nguoi-moi', 'Tiếng anh cho người mới', '', ''),
(212, 106, 'en', 'Toán mầm non', '', '', '', '', '', '', '', 0, 'toan-mam-non', 'Toán mầm non', '', ''),
(213, 107, 'vn', 'Tiếng anh cơ bản', '<p><strong>Kh&oacute;a học tiếng Anh&nbsp;cơ bản</strong>&nbsp;tại Homestay Việt Nam&nbsp;l&agrave; bước đi đầu ti&ecirc;n trong h&agrave;nh tr&igrave;nh chinh phục Tiếng Anh. Trước khi học những kiến thức s&acirc;u rộng ch&uacute;ng ta n&ecirc;n đi l&ecirc;n từ những điều cơ bản, bước đi của bạn sẽ vững v&agrave; bền hơn.&nbsp;Chỉ với 2 th&aacute;ng học, khả năng giao tiếp Tiếng Anh của bạn sẽ được cải thiện r&otilde; rệt.</p>\r\n', '<pre style=\"text-align:center\">\r\n<img alt=\"\" height=\"500\" src=\"/image/images/21149908_386796001723753_1126944015510169275_n-750x500.jpg\" width=\"750\" /></pre>\r\n\r\n<ul>\r\n	<li>Lớp học d&agrave;nh cho những bạn đ&atilde; c&oacute; nền tảng cơ bản với tiếng Anh.</li>\r\n	<li>Thời gian kh&oacute;a học :<strong>&nbsp;1,5 th&aacute;ng</strong></li>\r\n	<li>Thời gian học : 18h30 &ndash; 20h, thứ 2 đến thứ 6 .</li>\r\n	<li>Gi&aacute;o vi&ecirc;n ngo&agrave;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ c&aacute;c bạn học tập,&nbsp;<strong>giao tiếp 24/24.</strong></li>\r\n	<li>Đội ngũ trợ giảng nhiệt t&igrave;nh năng động v&agrave; thấu hiểu những&nbsp;<strong>kh&oacute; khăn&nbsp;</strong>của bạn.</li>\r\n	<li>Được&nbsp;<strong>sinh hoạt chung một m&aacute;i nh&agrave;</strong>, được giao tiếp tiếng Anh thường xuy&ecirc;n 24/24.</li>\r\n	<li>Tất cả c&aacute;c hoạt động đều sử dụng tiếng anh,&nbsp;<strong>như đi du học nước ngo&agrave;i.</strong></li>\r\n	<li>D&atilde; ngoại, ngoại kho&aacute; cuối tuần.</li>\r\n	<li>Được ở v&agrave; sinh hoạt trực tiếp tại Homestay.</li>\r\n	<li>Cơ sở vật chất đầy đủ tiện nghi, phục vụ tốt nhất cho việc lưu tr&uacute; v&agrave; học tập của c&aacute;c bạn.</li>\r\n	<li>Bạn được SỐNG, được CHƠI, được HỌC c&ugrave;ng T&Acirc;Y !!</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong><img alt=\"\" height=\"563\" src=\"/image/images/18319269_467008623651719_1760379024847776102_o-768x576.jpg\" width=\"750\" /></strong></a></p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>096 552 1294&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; v&agrave; trải nghiệm sống c&ugrave;ng T&acirc;y nh&eacute;&nbsp;<img alt=\"', '', '', '', '', '', 0, 'tieng-anh-co-ban', 'Tiếng anh cơ bản', '', ''),
(214, 107, 'en', 'Toán tiểu học', '', '', '', '', '', '', '', 0, 'toan-tieu-hoc', 'Toán tiểu học', '', ''),
(215, 108, 'vn', 'Tiếng anh trung cấp', '<p>Kh&aacute;c ho&agrave;n to&agrave;n với những chương tr&igrave;nh tiếng Anh s&aacute;ch vở kh&aacute;c, <strong>kh&oacute;a học tiếng Anh&nbsp;trung cấp</strong> tại Homestay Việt Nam&nbsp;sẽ đem đến cho học vi&ecirc;n những trải nghiệm mới về m&ocirc; h&igrave;nh học tiếng Anh thực tế tại địa điểm ph&ugrave; hợp, những kiến thức v&agrave; những t&igrave;nh huống thực tế sẽ gi&uacute;p bạn kh&ocirc;ng sợ bất cứ trở ngại n&agrave;o nữa!</p>\r\n', '<p style=\"text-align:center\"><img alt=\"\" height=\"500\" src=\"/image/images/khoa-hoc-tieng-anh-giao-tiep-trung-cap-thong-thuong.jpg\" width=\"750\" /></p>\r\n\r\n<ul>\r\n	<li>Lớp học d&agrave;nh cho những bạn đ&atilde; c&oacute; nền tảng tiếng Anh tốt v&agrave; mong muốn giao tiếp&nbsp;<strong>nhuần nhuyễn,&nbsp;</strong><strong>ch&eacute;m tiếng Anh như gi&oacute;&nbsp;</strong>v&agrave;&nbsp;<strong>sử dụng th&agrave;nh thạo tiếng Anh như: thuyết tr&igrave;nh,&hellip;</strong></li>\r\n	<li>Thời gian kh&oacute;a học :<strong>&nbsp;1,5 th&aacute;ng</strong></li>\r\n	<li>Thời gian học : 20h30 &ndash; 22h &ndash; thứ 2 đến thứ 6 .</li>\r\n	<li>Gi&aacute;o vi&ecirc;n ngo&agrave;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ c&aacute;c bạn học tập,&nbsp;<strong>giao tiếp 24/24.</strong></li>\r\n	<li>Đội ngũ trợ giảng nhiệt t&igrave;nh năng động v&agrave; thấu hiểu những&nbsp;<strong>kh&oacute; khăn&nbsp;</strong>của bạn.</li>\r\n	<li>Được&nbsp;<strong>sinh hoạt chung một m&aacute;i nh&agrave;</strong>, được giao tiếp tiếng Anh thường xuy&ecirc;n 24/24.</li>\r\n	<li>Tất cả c&aacute;c hoạt động đều sử dụng tiếng anh,&nbsp;<strong>như đi du học nước ngo&agrave;i.</strong></li>\r\n	<li>D&atilde; ngoại, ngoại kho&aacute; cuối tuần.</li>\r\n	<li>Được ở v&agrave; sinh hoạt trực tiếp tại Homestay.</li>\r\n	<li>Cơ sở vật chất đầy đủ tiện nghi, phục vụ tốt nhất cho việc lưu tr&uacute; v&agrave; học tập của c&aacute;c bạn.</li>\r\n	<li>Bạn được SỐNG, được CHƠI, được HỌC c&ugrave;ng T&Acirc;Y !!</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong><img alt=\"\" height=\"500\" src=\"/image/images/21149908_386796001723753_1126944015510169275_n-750x500.jpg\" width=\"750\" /></strong></a></p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>096 552 1294&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; v&agrave; trải nghiệm sống c&ugrave;ng T&acirc;y nh&eacute;&nbsp;</p>\r\n', '', '', '', '', '', 0, 'tieng-anh-trung-cap', 'Tiếng anh trung cấp', '', ''),
(216, 108, 'en', 'Toán THCS', '', '', '', '', '', '', '', 0, 'toan-thcs', 'Toán THCS', '', ''),
(217, 109, 'vn', 'Tiếng anh nâng cao', '<p><strong>Kh&oacute;a học tiếng Anh&nbsp;n&acirc;ng cao</strong> được&nbsp;thiết kế cho sinh vi&ecirc;n đại học &amp; những người đi l&agrave;m. Ph&aacute;t triển kỹ năng tiếng Anh giao tiếp tổng qu&aacute;t c&aacute;c kỹ năng như nghe -&nbsp;n&oacute;i - đọc - viết. Kh&oacute;a học c&ograve;n gi&uacute;p bạn n&acirc;ng cao vốn từ vựng về kinh tế, văn h&oacute;a, x&atilde; hội,&hellip;gi&uacute;p cho học vi&ecirc;n tự tin hơn khi sử dụng tiếng Anh.</p>\r\n', '<p style=\"text-align:center\"><img alt=\"\" height=\"500\" src=\"/image/images/16684204_301622896907731_6514306528625090718_n-750x500.jpg\" width=\"750\" /></p>\r\n\r\n<ul>\r\n	<li>Lớp học d&agrave;nh cho những bạn đ&atilde; c&oacute; nền tảng tiếng Anh tốt v&agrave; mong muốn giao tiếp&nbsp;<strong>nhuần nhuyễn,&nbsp;</strong><strong>ch&eacute;m tiếng Anh như gi&oacute;&nbsp;</strong>v&agrave;&nbsp;<strong>sử dụng th&agrave;nh thạo tiếng Anh như: thuyết tr&igrave;nh,&hellip;</strong></li>\r\n	<li>Thời gian kh&oacute;a học :<strong>&nbsp;1,5 th&aacute;ng</strong></li>\r\n	<li>Thời gian học : 20h30 &ndash; 22h &ndash; thứ 2 đến thứ 6 .</li>\r\n	<li>Gi&aacute;o vi&ecirc;n ngo&agrave;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ c&aacute;c bạn học tập,&nbsp;<strong>giao tiếp 24/24.</strong></li>\r\n	<li>Đội ngũ trợ giảng nhiệt t&igrave;nh năng động v&agrave; thấu hiểu những&nbsp;<strong>kh&oacute; khăn&nbsp;</strong>của bạn.</li>\r\n	<li>Được&nbsp;<strong>sinh hoạt chung một m&aacute;i nh&agrave;</strong>, được giao tiếp tiếng Anh thường xuy&ecirc;n 24/24.</li>\r\n	<li>Tất cả c&aacute;c hoạt động đều sử dụng tiếng anh,&nbsp;<strong>như đi du học nước ngo&agrave;i.</strong></li>\r\n	<li>D&atilde; ngoại, ngoại kho&aacute; cuối tuần.</li>\r\n	<li>Được ở v&agrave; sinh hoạt trực tiếp tại Homestay.</li>\r\n	<li>Cơ sở vật chất đầy đủ tiện nghi, phục vụ tốt nhất cho việc lưu tr&uacute; v&agrave; học tập của c&aacute;c bạn.</li>\r\n	<li>Bạn được SỐNG, được CHƠI, được HỌC c&ugrave;ng T&Acirc;Y !!</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong><img alt=\"\" height=\"563\" src=\"/image/images/23032727_837656869741023_1558384203872746011_n-768x576.jpg\" width=\"750\" /></strong></a></p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>096 552 1294&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; v&agrave; trải nghiệm sống c&ugrave;ng T&acirc;y nh&eacute;&nbsp;</p>\r\n', '', '', '', '', '', 0, 'tieng-anh-nang-cao', 'Tiếng anh nâng cao', '', ''),
(218, 109, 'en', 'Lisp Intensive Treatment', 'Nói ngọng là hiện tượng rối loạn ngôn ngữ. Ngôn ngữ của trẻ được hình thành trên cơ sở các phản xạ có điều kiện, dựa trên tác động của các yếu tố từ môi trường bên ngoài kích thích vào trung tâm nghe. Nếu có sự trục trặc nào đó trong quá trình hình thành ngôn ngữ sẽ xảy ra hiện tượng rối loạn ngôn ngữ ở trẻ, điển hình là ngọng.', '', '', '', '', '', '', 0, 'lisp-intensive-treatment-1', 'Lisp Intensive Treatment', '', ''),
(225, 113, 'vn', 'Làm gì để không trì hoãn', '<p>Th&oacute;i quen tr&igrave; ho&atilde;n l&agrave; th&oacute;i quen c&oacute; ở tất cả mọi người d&ugrave; l&agrave; th&agrave;nh c&ocirc;ng hay thất bại, d&ugrave; l&agrave; g&aacute;i hay trai, d&ugrave; n&ocirc;ng th&ocirc;n hay th&agrave;nh thị, d&ugrave; luật sư hay xe &ocirc;m, d&ugrave; triệu ph&uacute; hay ăn xin.</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"571\" src=\"http://homestayvn.com.vn/wp-content/uploads/2017/12/23130997_996658547143454_7902553436096416482_n-736x600.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&oacute;i quen tr&igrave; ho&atilde;n l&agrave; th&oacute;i quen c&oacute; ở tất cả mọi người d&ugrave; l&agrave; th&agrave;nh c&ocirc;ng hay thất bại, d&ugrave; l&agrave; g&aacute;i hay trai, d&ugrave; n&ocirc;ng th&ocirc;n hay th&agrave;nh thị, d&ugrave; luật sư hay xe &ocirc;m, d&ugrave; triệu ph&uacute; hay ăn xin.</p>\r\n\r\n<p>Những người ko c&oacute; th&oacute;i quen tr&igrave; ho&atilde;n thường được gọi l&agrave; &ldquo;phổi b&ograve;&rdquo; hay &ldquo;nhanh nhảu đoảng&rdquo; hay &ldquo;hấp tấp&rdquo;. N&ecirc;n dần dần cũng được &ldquo;cảm ho&aacute;&rdquo; th&agrave;nh người tr&igrave; ho&atilde;n với c&acirc;u thần ch&uacute;: &ldquo;cứ từ từ&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>N&oacute;i kh&ocirc;ng ngoa th&igrave; 100% nh&acirc;n loại đều tr&igrave; ho&atilde;n</strong></p>\r\n\r\n<p><strong>Theo định luật 1&nbsp;</strong>của Newton th&igrave; mọi vật c&oacute; khối lượng th&igrave; đều c&oacute;&nbsp;<em>qu&aacute;n t&iacute;nh</em>. Qu&aacute;n t&iacute;nh được gọi c&aacute;ch kh&aacute;c ch&iacute;nh l&agrave; sức ỳ. Điều n&agrave;y kh&ocirc;ng chỉ đ&uacute;ng với vật l&yacute;, với cơ học, m&agrave; c&ograve;n đ&uacute;ng với t&acirc;m l&yacute; con người. Con người th&iacute;ch l&agrave;m việc theo th&oacute;i quen, ngại sự thay đổi. Qu&aacute;n t&iacute;nh l&agrave; nếu đứng im th&igrave; cứ đứng im, nếu chuyển động th&igrave; cứ chuyển động. Một người đang l&agrave;m 10 việc m&agrave; bắt chỉ l&agrave;m 1 việc th&igrave; kh&ocirc;ng chịu được, c&oacute; giảm th&igrave; giảm xuống 9, xuống 8 rồi từ từ giảm. Một người đang l&agrave;m một việc m&agrave; bắt l&agrave;m 10 việc cũng kh&ocirc;ng l&agrave;m nổi v&igrave; chưa c&oacute; qu&aacute;n t&iacute;nh lớn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tr&igrave; ho&atilde;n l&agrave; th&oacute;i quen li&ecirc;n quan đến sức ỳ !</strong></p>\r\n\r\n<p>Khi định l&agrave;m c&aacute;i g&igrave; mới, t&acirc;m l&yacute;&nbsp;<strong><em>&ldquo;cứ từ từ&rdquo;</em></strong>&nbsp;sẽ khiến đầu &oacute;c, ch&acirc;n tay cứ l&agrave;m theo những c&ocirc;ng việc cũ.</p>\r\n\r\n<p>Ch&uacute;ng ta tr&igrave; ho&atilde;n những mục ti&ecirc;u mới, những c&ocirc;ng việc mới, những dự định mới.</p>\r\n\r\n<p>Khi chưa c&oacute; wifi, với 3G r&ugrave;a b&ograve; chỉ đủ để lướt v&agrave;i c&aacute;i web nhẹ, facebook chữ trước h&igrave;nh ảnh tải về sau, t&ocirc;i đ&atilde; hứa với bản th&acirc;n: khi n&agrave;o c&oacute; wifi mạnh, t&ocirc;i sẽ học tiếng Anh chăm chỉ. Nhưng khi lắp xong wifi , t&ocirc;i lại chỉ mải m&ecirc; xem phim, v&agrave;i c&aacute;i h&agrave;i nhảm nh&iacute; của T&agrave;u khựa, phim kiếm hiệp v&agrave; một số gameshow ăn kh&aacute;ch tr&ecirc;n truyền h&igrave;nh.</p>\r\n\r\n<p>Đầu năm t&ocirc;i hăm hở viết ra mục ti&ecirc;u cho năm mới n&agrave;o l&agrave; đọc s&aacute;ch, n&agrave;o l&agrave; kiếm tiền, n&agrave;o l&agrave; tập gym, n&agrave;o l&agrave; học tiếng Anh, n&agrave;o l&agrave; x&acirc;y dựng một c&ocirc;ng việc kinh doanh. Rồi một v&agrave;i việc đột xuất, t&ocirc;i phải ho&agrave;n th&agrave;nh trong thời gian ngắn. T&ocirc;i nỗ lực cho xong v&agrave; tự nhủ: xong việc n&agrave;y ta sẽ triển khai những việc kia. Xong việc, t&ocirc;i tự thưởng cho m&igrave;nh nghỉ ngơi v&agrave;i ng&agrave;y, xem v&agrave;i bộ phim d&agrave;i tập, đọc v&agrave;i cuốn s&aacute;ch giải tr&iacute;, lướt facebook, xem h&agrave;i, nghe nhạc. V&agrave; thời gian th&igrave; cứ tr&ocirc;i qua. Rồi kỳ thi đến, lại &ocirc;n thi. Rồi việc gấp cần ho&agrave;n th&agrave;nh lại đến, lại phải ho&agrave;n th&agrave;nh. Thoắt một c&aacute;i đ&atilde; nửa năm tr&ocirc;i qua. C&aacute;c mục ti&ecirc;u vẫn nằm tr&ecirc;n sổ tay, vẫn đ&oacute;ng bụi, nằm im v&agrave; vẹn nguy&ecirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lo sợ tuổi trẻ qua đi với với b&agrave;n tay trắng v&agrave; những thứ nh&agrave;n nhạt, v&agrave;i th&agrave;nh tựu con con, t&ocirc;i t&igrave;m hiểu c&aacute;ch m&agrave; những người kh&aacute;c ho&agrave;n th&agrave;nh mục ti&ecirc;u. Tr&igrave; ho&atilde;n l&agrave; kẻ th&ugrave; số 1. Kh&ocirc;ng phải con người ta kh&ocirc;ng đủ khả năng l&agrave; để l&agrave;m một việc mới, vấn đề chỉ l&agrave; người ta kh&oacute; để bắt đầu một c&aacute;i mới. Bao đời nay đ&atilde; đ&uacute;c kết một c&acirc;u: vạn sự khởi đầu nan. Người ta c&oacute; mu&ocirc;n v&agrave;n nỗi sợ, nỗi sợ bắt đầu một việc mới c&oacute; thể l&agrave;m người ta ướt sũng quần. Sợ bắt chuyện l&agrave;m quen với bạn g&aacute;i, sợ đứng giữa đ&aacute;m đ&ocirc;ng để h&aacute;t một b&agrave;i, sợ một đối t&aacute;c chưa gặp, sợ xin việc một người lạ hoắc,&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"404\" src=\"/image/images/1/23113622_1700637546660486_484617217_n-736x600.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&aacute;ch đơn giản để vượt qua nỗi sợ đ&oacute;, đơn giản l&agrave;: h&atilde;y cứ mạnh dạn bắt đầu !!!</strong></p>\r\n\r\n<p>Khi s&uacute;ng đ&atilde; nổ th&igrave; người l&iacute;nh ko muốn t&egrave; nữa. Bắt đầu h&aacute;t th&igrave; sẽ ko run. Khi muốn nghỉ việc th&igrave; cứ viết đơn v&agrave; đến gặp sếp. Khi muốn xin việc th&igrave; cứ đến gặp gi&aacute;m đốc v&agrave; g&otilde; cửa. Khi muốn học tiếng Anh th&igrave; cứ đăng k&yacute; v&agrave; đ&oacute;ng học ph&iacute;. Khi muốn học guitar th&igrave; cứ mua đ&agrave;n. Khi muốn start up th&igrave; cứ vay tiền v&agrave; sắm sửa thiết bị.</p>\r\n\r\n<p>Đặt v&agrave;o thế &ldquo;đ&atilde; rồi&rdquo; sẽ buộc ta phải bước tiếp.</p>\r\n\r\n<p>Xe m&aacute;y chỉ tốn xăng khi v&agrave;o số 1 v&agrave; k&eacute;o ga. Đi được rồi sẽ c&oacute; qu&aacute;n t&iacute;nh để ta đi tiếp những nhanh hơn.</p>\r\n\r\n<p>Đừng đợi những thứ c&oacute; đủ rồi mới bắt đầu. Đừng đợi tất cả đ&egrave;n bật xanh rồi mới đi. Cứ đi rồi sẽ đến.</p>\r\n\r\n<p><strong>Thời điểm th&iacute;ch hợp nhất l&agrave; &ldquo;b&acirc;y giờ&rdquo; chứ kh&ocirc;ng phải ng&agrave;y mai!</strong></p>\r\n\r\n<p>Nhớ một c&acirc;u chuyện, sau khi được tổng thống Mỹ giao cho trồng c&acirc;y, &ocirc;ng trợ l&yacute; đến gặp v&agrave; thắc mắc: c&acirc;y n&agrave;y phải 20 năm nữa mới ra quả. Tổng thống trả lời: vậy &ocirc;ng định trồng ngay h&ocirc;m nay hay đợi 20 năm nữa mới trồng?</p>\r\n\r\n<p><strong>H&atilde;y trồng c&acirc;y ngay h&ocirc;m nay, bắt đầu mọi thứ ngay h&ocirc;m nay chứ kh&ocirc;ng phải ng&agrave;y mai hay một ng&agrave;y đẹp trời n&agrave;o đ&acirc;u c&aacute;c bạn ạ !!!</strong></p>\r\n\r\n<p><strong>Đến với Homestay Việt Nam v&agrave; chinh phục tiếng Anh ngay l&uacute;c n&agrave;y!!&nbsp;</strong>Hi vọng qua những chia sẻ bổ &iacute;ch tr&ecirc;n sẽ gi&uacute;p bạn c&oacute; kỹ năng để bắt đầu học c&aacute;ch ph&aacute;t &acirc;m trong tiếng Anh chuẩn như người bản xứ dễ d&agrave;ng, đạt hiệu quả cao. Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<strong><em>0168 3122 994&nbsp;</em></strong>để được tư vấn cụ thể, miễn ph&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'lam-gi-de-khong-tri-hoan', 'Làm gì để không trì hoãn', '', ''),
(226, 113, 'en', 'english version video 1', 'english version ', 'english version <p>&lt;iframe width=&quot;100%&quot; height=&quot;200&quot; src=&quot;https://www.youtube.com/embed/grhzf6Vl0Ts&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen&gt;&lt;/iframe&gt;</p>\r\n', '', '', '', '', '', 0, 'en-video-1', 'video 1', '', ''),
(227, 114, 'vn', 'Bí quyết tạo thói quen học từ mới', '<p>Để&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">n&oacute;i tr&ocirc;i chảy tiếng Anh</a>, bạn cần c&oacute; vốn từ vựng s&acirc;u rộng. Ngữ ph&aacute;p c&oacute; thể l&agrave; yếu tố thứ yếu nhưng bạn chắc chắn kh&ocirc;ng thể bỏ qua được nền tảng của mọi loại ng&ocirc;n ngữ:&nbsp;<strong>&ldquo;từ vựng&rdquo;</strong>.&nbsp;Thực tế l&agrave; bạn kh&ocirc;ng thể nhớ hết cả quyển từ điển tiếng Anh chỉ trong một ng&agrave;y.</p>\r\n', '<p style=\"text-align:center\"><img alt=\"\" height=\"485\" src=\"/image/images/1/Picture1-768x533.png\" width=\"700\" /></p>\r\n\r\n<p>Để&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">n&oacute;i tr&ocirc;i chảy tiếng Anh</a>, bạn cần c&oacute; vốn từ vựng s&acirc;u rộng. Ngữ ph&aacute;p c&oacute; thể l&agrave; yếu tố thứ yếu nhưng bạn chắc chắn kh&ocirc;ng thể bỏ qua được nền tảng của mọi loại ng&ocirc;n ngữ:&nbsp;<strong>&ldquo;từ vựng&rdquo;</strong>.&nbsp;Thực tế l&agrave; bạn kh&ocirc;ng thể nhớ hết cả quyển từ điển tiếng Anh chỉ trong một ng&agrave;y.</p>\r\n\r\n<p>Dưới đ&acirc;y, Homestay Việt Nam sẽ chia sẻ với bạn một số&nbsp;b&iacute; quyết để l&agrave;m chủ ngoại ngữ n&agrave;y chỉ dưới 30 ph&uacute;t mỗi ng&agrave;y.</p>\r\n\r\n<p><strong>D&Agrave;NH KHOẢNG 10 ĐẾN 20 PH&Uacute;T MỖI NG&Agrave;Y</strong></p>\r\n\r\n<p>H&atilde;y&nbsp;<em><strong>thiết lập một mục ti&ecirc;u h&agrave;ng ng&agrave;y</strong></em>&nbsp;cho m&igrave;nh, nhưng cần đảm bảo t&iacute;nh thực tế v&agrave; b&aacute;m s&aacute;t n&oacute;. Bắt đầu bằng mục ti&ecirc;u mỗi ng&agrave;y một từ mới, sau đ&oacute;, theo lộ tr&igrave;nh, tăng dần từ hai đến năm từ mới mỗi ng&agrave;y. H&atilde;y tự hỏi bản th&acirc;n xem bạn c&oacute; thể d&agrave;nh tối đa bao nhi&ecirc;u thời gian cho việc học ngoại ngữ mỗi ng&agrave;y? Liệu m&igrave;nh c&oacute; thể đạt được mục ti&ecirc;u với khoảng 20 ph&uacute;t mỗi ng&agrave;y? Điều g&igrave; l&agrave; quan trọng trong qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh th&oacute;i quen học tiếng Anh h&agrave;ng ng&agrave;y. Tất nhi&ecirc;n, bạn cũng đừng qu&ecirc;n rằng 15 ph&uacute;t d&agrave;nh cho việc học mỗi ng&agrave;y chắc chắn sẽ đem lại kết quả tốt hơn việc chỉ d&agrave;nh 30 ph&uacute;t mỗi tuần.</p>\r\n\r\n<p><strong>C&Oacute; MỘT CUỐN SỔ GHI CH&Eacute;P TỪ VỰNG</strong></p>\r\n\r\n<p>Việc trang bị cho bản th&acirc;n một&nbsp;<em><strong>cuốn sổ ghi ch&eacute;p từ vựng</strong>&nbsp;</em>kh&ocirc;ng chỉ đơn giản l&agrave; cầm theo một cuốn sổ để ghi ch&eacute;p m&agrave; l&agrave; bạn đang lưu trữ mọi kiến thức bạn học trong một nguồn duy nhất. Nếu bạn th&iacute;ch sử dụng c&aacute;c ứng dụng tr&ecirc;n điện thoại, đừng ngần ngại sử dụng ch&uacute;ng. Điều quan trọng l&agrave; bạn thiết lập v&agrave; ph&aacute;t triển được cho bản th&acirc;n một hệ thống lưu trữ những từ vựng m&agrave; bạn đ&atilde; học được. Từ đ&oacute;, bạn sẽ dễ d&agrave;ng xem v&agrave; hệ thống lại ch&uacute;ng hai tuần một lần.</p>\r\n\r\n<h3>KH&Ocirc;NG CHỈ L&Agrave; HỌC TỪ MỚI</h3>\r\n\r\n<p>C&aacute;ch tốt nhất để l&agrave;m chủ vốn từ vựng cho bản th&acirc;n đ&oacute; l&agrave; sử dụng những từ ngữ m&agrave; bạn học được v&agrave; &aacute;p dụng ch&uacute;ng v&agrave;o ngữ cảnh ph&ugrave; hợp. Khi bạn x&acirc;y dựng vốn từ vựng tiếng Anh, h&atilde;y học th&ecirc;m cả c&aacute;c giới từ đi k&egrave;m với từ đ&oacute; cũng như &yacute; nghĩa của ch&uacute;ng.</p>\r\n\r\n<p>V&iacute; dụ: từ &lsquo;get away with&rsquo; sẽ c&oacute; nghĩa ho&agrave;n to&agrave;n kh&aacute;c mới &lsquo;get away from&rsquo;. Cụm từ đầu ti&ecirc;n c&oacute; nghĩa l&agrave; &lsquo;trốn tho&aacute;t&rsquo; &ndash; trốn tr&aacute;nh hoặc cố tho&aacute;t khỏi một c&aacute;i g&igrave; đ&oacute;, c&ograve;n &lsquo;get away from&rsquo; c&oacute; nghĩa l&agrave; &lsquo;tr&aacute;nh xa&rsquo; &ndash; n&eacute; tr&aacute;nh sự đổ lỗi, trừng phạt hoặc hệ quả kh&ocirc;ng mong muốn của một h&agrave;nh động sai tr&aacute;i hoặc lỗi lầm (Hắn nghĩ hắn c&oacute; thể tho&aacute;t khỏi h&igrave;nh phạt ngoại t&igrave;nh).</p>\r\n\r\n<h3>TỰ ĐƯA RA V&Agrave;I BA V&Iacute; DỤ</h3>\r\n\r\n<p>Sử dụng hay kh&ocirc;ng d&ugrave;ng c&aacute;c từ mới đ&oacute;. Cũng như ghi ch&eacute;p lại ch&uacute;ng sẽ chẳng bao giờ l&agrave; đủ. N&oacute; đ&ograve;i hỏi bạn phải ki&ecirc;n tr&igrave; luyện tập v&agrave; đưa v&agrave;o ngữ cảnh để quen dần với từ mới, v&igrave; thế h&atilde;y tận dụng ch&uacute;ng.</p>\r\n\r\n<h3><a href=\"https://www.facebook.com/homestayvn.com.vn/\">Một m&ocirc;i trường tốt l&agrave; kh&ocirc;ng thể thiếu</a></h3>\r\n\r\n<p>C&aacute;ch tốt nhất để bắt đầu l&agrave;m g&igrave; đ&oacute; chẳng phải l&agrave; bắt tay v&agrave;o l&agrave;m lu&ocirc;n hay sao. Bạn nghĩ sao nếu c&oacute; một m&ocirc;i trường 100% gi&aacute;o vi&ecirc;n nước ngo&agrave;i c&ugrave;ng sinh hoạt với bạn v&agrave; luyện tập tất cả những từ mới bạn vừa được học ngay lập tức. C&ograve;n g&igrave; tuyệt vời hơn &nbsp;ăn, học,uống, ngủ, nghỉ, ngấm tiếng anh trong c&ugrave;ng 1 nh&agrave; với người nước ngo&agrave;i. Tới Homestay Việt Nam v&agrave; trải nghiệm ngay nh&eacute;.</p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Ch&uacute;c bạn sớm chinh phục được mục ti&ecirc;u tiếng anh của m&igrave;nh nh&eacute;!!!</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>0168 3122 994&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; nh&eacute;&nbsp;<img alt=\"', '', '', '', '', '', 0, 'bi-quyet-tao-thoi-quen-hoc-tu-moi', 'Bí quyết tạo thói quen học từ mới', '', ''),
(228, 114, 'en', 'english version video 2', 'english version ', 'english version <p>&lt;iframe width=&quot;100%&quot; height=&quot;200&quot; src=&quot;https://www.youtube.com/embed/cbLFUMQZ-do&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen&gt;&lt;/iframe&gt;</p>\r\n', '', '', '', '', '', 0, 'en-video-2', 'video 2', '', ''),
(229, 115, 'vn', 'Những câu hỏi thường gặp khi bạn chuẩn bị học Tiếng Anh', '<p>M&igrave;nh nhận được rất nhiều c&acirc;u hỏi như vậy từ học vi&ecirc;n trong qu&aacute; tr&igrave;nh tư vấn, điều đầu ti&ecirc;n m&igrave;nh muốn n&oacute;i với c&aacute;c bạn l&agrave; trước khi bạn bắt đầu học tiếng anh, bạn cần phải biết bạn&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">học để l&agrave;m g&igrave;</a>? Ai cũng được dạy l&agrave; phải học giỏi tiếng anh, nhưng nhiều người kh&ocirc;ng thể n&oacute;i r&otilde; r&agrave;ng l&agrave; họ cần học để l&agrave;m c&aacute;i g&igrave;, nếu bạn kh&ocirc;ng trả lời được c&acirc;u hỏi đ&oacute;, bạn kh&ocirc;ng bao giờ ki&ecirc;n tr&igrave; để học được tiếng Anh.</p>\r\n', '<p style=\"text-align:center\"><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><img alt=\"\" height=\"469\" src=\"/image/images/1/Picture12-768x515.png\" width=\"700\" /></a></p>\r\n\r\n<p><strong>T&ocirc;i muốn học Tiếng Anh, nhưng t&ocirc;i đ&atilde; qu&ecirc;n hết rồi, t&ocirc;i sẽ phải bắt đầu như thế n&agrave;o ?</strong></p>\r\n\r\n<p>M&igrave;nh nhận được rất nhiều c&acirc;u hỏi như vậy từ học vi&ecirc;n trong qu&aacute; tr&igrave;nh tư vấn, điều đầu ti&ecirc;n m&igrave;nh muốn n&oacute;i với c&aacute;c bạn l&agrave; trước khi bạn bắt đầu học tiếng anh, bạn cần phải biết bạn&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">học để l&agrave;m g&igrave;</a>? Ai cũng được dạy l&agrave; phải học giỏi tiếng anh, nhưng nhiều người kh&ocirc;ng thể n&oacute;i r&otilde; r&agrave;ng l&agrave; họ cần học để l&agrave;m c&aacute;i g&igrave;, nếu bạn kh&ocirc;ng trả lời được c&acirc;u hỏi đ&oacute;, bạn kh&ocirc;ng bao giờ ki&ecirc;n tr&igrave; để học được tiếng Anh.</p>\r\n\r\n<p><em>1. T&ocirc;i phải học tiếng anh v&igrave; t&ocirc;i cần du học thạc sĩ ở nước ngo&agrave;i. Ch&iacute;nh x&aacute;c, bạn cần phải trả lời được như thế n&agrave;y v&igrave; mục ti&ecirc;u rất r&otilde; r&agrave;ng, nếu kh&ocirc;ng c&oacute; tiếng anh, bạn kh&ocirc;ng thể đi du học được, v&agrave; du học l&agrave; động lực cho việc học tiếng anh.</em></p>\r\n\r\n<p><em>2. T&ocirc;i phải học tiếng anh v&igrave; t&ocirc;i gh&eacute;t l&agrave;m việc cho c&aacute;c c&ocirc;ng ty Việt Nam, lương thấp, chế độ đ&atilde;i ngộ ngh&egrave;o n&agrave;n, n&oacute;i chung l&agrave; t&ocirc;i căm phẫn l&agrave;m việc trong một m&ocirc;i trường kh&ocirc;ng chuy&ecirc;n nghiệp. Ch&iacute;nh x&aacute;c, động lực của bạn ở đ&acirc;y l&agrave; cơ hội thăng tiến trong nghề nghiệp v&agrave; một mức lương cao hơn, đủ điều kiện t&agrave;i ch&iacute;nh để chăm lo cho gia đ&igrave;nh v&agrave; cơ hội thăng tiến trong tương lai.</em></p>\r\n\r\n<p>Bạn cần phải r&otilde; r&agrave;ng được mục ti&ecirc;u như vậy th&igrave; mới c&oacute; động lực học tập, ngo&agrave;i ra, trẻ con cũng c&oacute; thể n&oacute;i được phải học tiếng anh, nhưng kh&ocirc;ng ai cũng c&oacute; thể định nghĩa được học đến như thế n&agrave;o l&agrave; th&agrave;nh c&ocirc;ng . Với m&igrave;nh, một ai đ&oacute; được gọi l&agrave; th&agrave;nh c&ocirc;ng kh&ocirc;ng phải dựa tr&ecirc;n điểm thi IELTS hay iBT cao hơn, m&agrave; l&agrave; người đ&oacute; đ&atilde; thực sự đạt được mục đ&iacute;ch của m&igrave;nh đăt ra khi học tiếng anh ban đầu chưa. Nếu bạn chỉ dừng ở mức học tiếng anh để phục vụ c&ocirc;ng việc h&agrave;nh ch&iacute;nh, kinh doanh th&igrave; 6.5 IELT hoặc iBT 70 l&agrave; th&agrave;nh c&ocirc;ng, bạn ho&agrave;n to&agrave;n c&oacute; thể giao tiếp th&agrave;nh thạo với c&aacute;c đối t&aacute;c nước ngo&agrave;i, l&agrave;m việc với c&aacute;c sếp, đầu qu&acirc;n cho những tập đo&agrave;n đa quốc gia. C&ograve;n nếu bạn muốn học thạc sĩ, kiếm học bổng ở những trường TOP, bạn cần một con số cao hơn rất nhiều v&agrave; dĩ nhi&ecirc;n cũng đ&ograve;i hỏi thời gian d&agrave;i hơn.</p>\r\n\r\n<p>V&igrave; vậy, h&atilde;y đặt ra mục ti&ecirc;u cụ thể cho m&igrave;nh trong việc học v&iacute; dụ:</p>\r\n\r\n<ul>\r\n	<li><em>T&ocirc;i muốn chuyển c&ocirc;ng việc, t&ocirc;i muốn thử apply v&agrave;o c&aacute;c c&ocirc;ng ty nước ngo&agrave;i, ở một v&iacute; tr&iacute; cao hơn v&agrave; t&ocirc;i cần đạt 6.0 IELTS hay 70 iBT cho mục ti&ecirc;u n&agrave;y.</em></li>\r\n	<li><em>T&ocirc;i muốn học thạc sĩ n&ecirc;n t&ocirc;i phải thi được 6.5 IELTS cho mục ti&ecirc;u của t&ocirc;i</em></li>\r\n</ul>\r\n\r\n<p>Như vậy, c&aacute;c bạn c&oacute; thể lượng h&oacute;a v&agrave; nh&igrave;n r&otilde; mục ti&ecirc;u của m&igrave;nh. Điều quan trọng nhất ở đ&acirc;y m&igrave;nh muốn n&oacute;i l&agrave; bạn cần c&oacute; một mục ti&ecirc;u ph&ugrave; hợp với mục đ&iacute;ch của bạn v&igrave; kh&ocirc;ng ai l&agrave; tỷ ph&uacute; thời gian để cứ theo đuổi ho&agrave;i m&ocirc;n tiếng Anh n&agrave;y v&agrave; cuối c&ugrave;ng, n&oacute; chỉ l&agrave; một c&ocirc;ng cụ quan trọng phục vụ cuộc sống của ch&uacute;ng ta chứ kh&ocirc;ng phải l&agrave; mục ti&ecirc;u sống.</p>\r\n\r\n<p style=\"text-align:center\"><strong>Thời gian: T&ocirc;i muốn học tiếng anh để t&igrave;m kiếm cơ hội nghề nghiệp, mục đ&iacute;ch của t&ocirc;i l&agrave; 6.0 IELTS, t&ocirc;i sẽ phải học trong bao l&acirc;u ?</strong><br />\r\n<a href=\"https://www.facebook.com/homestayvn.com.vn/\"><img alt=\"\" height=\"350\" src=\"/image/images/1/Picture13-600x300.png\" width=\"700\" /></a><br />\r\nPhụ thuộc v&agrave;o tr&igrave;nh độ ban đầu v&agrave; năng khiếu của bạn. Tuy nhi&ecirc;n, nếu bạn đang ở tr&igrave;nh độ cơ bản (kiểu trước kia học cho c&oacute; ở trường đại học) th&igrave; bạn sẽ cần tối thiểu 8 th&aacute;ng để theo học (với những ai c&oacute; năng khiếu v&agrave; sự chăm chỉ). Tụi Anh n&oacute; đ&atilde; nghi&ecirc;n cứu l&agrave; mất 200 giờ để l&ecirc;n 1 điểm IELTS v&agrave; bạn cần x&aacute;c định thời gian như thế để c&oacute; thể học l&ecirc;n level m&igrave;nh muốn.</p>\r\n\r\n<p><strong>T&ocirc;i đang đi l&agrave;m, c&ocirc;ng việc ở cơ quan b&ugrave; đầu, t&ocirc;i rất muốn học tiếng anh, nhưng phải từ từ, l&uacute;c n&agrave;o rảnh t&ocirc;i sẽ học v&igrave; mất đến tận 8 th&aacute;ng đến 1 năm cơ m&agrave;?</strong></p>\r\n\r\n<p>Hầu hết những người kh&ocirc;ng học được tiếng anh đều cố t&igrave;m c&aacute;ch l&yacute; giải cho chuyện học h&agrave;nh như vậy, t&ocirc;i đ&atilde; từng n&oacute;i với nhiều bạn rằng, c&ocirc;ng việc của bạn sẽ c&agrave;ng ng&agrave;y c&agrave;ng bận l&ecirc;n khi bạn l&ecirc;n vị tr&iacute; cao hơn, nếu bạn kh&ocirc;ng bắt đầu từ b&acirc;y giờ, th&igrave; sau n&agrave;y sẽ c&agrave;ng kh&oacute; để bạn học, kh&ocirc;ng kể chuyện gia đ&igrave;nh, con c&aacute;i sẽ bao tr&ugrave;m lấy bạn v&agrave; kh&ocirc;ng cho bạn qu&atilde;ng thời gian nghỉ ngơi cho đến l&uacute;c th&agrave;nh c&aacute;t bụi.</p>\r\n\r\n<p>Do vậy, đừng bao giờ tr&igrave; ho&atilde;n v&igrave; hiện tại đang l&agrave; khoảng thời gian rảnh rỗi nhất của bạn. Bạn mất 1 năm học ngoại ngữ, nhưng n&oacute; c&oacute; thể l&aacute;i sự nghiệp của bạn sang một trang kh&aacute;c, đ&aacute;nh đổi 1 năm miệt m&agrave;i để lấy 30 năm sự nghiệp sau n&agrave;y, bạn chọn c&aacute;i n&agrave;o?</p>\r\n\r\n<p><strong>OK, T&ocirc;i đồng &yacute; với bạn l&agrave; phải học tiếng anh, vậy t&ocirc;i sẽ bắt đầu từ đ&acirc;u ?</strong></p>\r\n\r\n<p>C&acirc;u trả lời l&agrave; bạn cần 1 m&ocirc;i trường c&oacute; đủ kh&ocirc;ng gian v&agrave; động lực cho bạn theo đuổi. bạn nghĩ sao về việc sống trong c&ugrave;ng 1 nh&agrave; với c&aacute;c gi&aacute;o vi&ecirc;n nước ngo&agrave;i. Tất cả thời gian bạn về tới cổng l&agrave; chỉ c&ograve;n duy nhất 1 mục ti&ecirc;u để theo đuổi c&ugrave;ng c&aacute;c th&agrave;nh vi&ecirc;n kh&aacute;c trong nh&agrave; &ldquo;ENGLISH&rdquo;. Thử cảm nhận suốt 1 kh&oacute;a học c&ugrave;ng học v&agrave; luyện tập li&ecirc;n tục trực tiếp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i, kh&ocirc;ng c&oacute; chỗ cho VIETNAMESE th&igrave; cũng kh&ocirc;ng c&oacute; chỗ cho sự tr&igrave; ho&atilde;n của bạn đ&acirc;u. Nếu kh&ocirc;ng ngại thay đổi th&igrave; x&aacute;ch 1 t&acirc;m thế học hỏi đến&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">Homestay Việt Nam</a>&nbsp;v&agrave; bắt đầu thử th&aacute;ch bản th&acirc;n n&agrave;o!</p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>0168 3122 994&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; nh&eacute;&nbsp;</p>\r\n', '', '', '', '', '', 0, 'nhung-cau-hoi-thuong-gap-khi-ban-chuan-bi-hoc-tieng-anh', 'Những câu hỏi thường gặp khi bạn chuẩn bị học Tiếng Anh', '', ''),
(230, 115, 'en', 'english version Video 3', 'english version ', 'english version <p>&lt;iframe width=&quot;100%&quot; height=&quot;200&quot; src=&quot;https://www.youtube.com/embed/lA3s7FmVMH8&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen&gt;&lt;/iframe&gt;</p>\r\n', '', '', '', '', '', 0, 'en-video-3', 'Video 3', '', ''),
(231, 116, 'vn', 'Tại sao trẻ con trên Sapa lại bắn tiếng Anh như gió?', '<p>Mình đi săn tuyết trên Fansipan và phát hiện ra một bí mật động trời: <strong>trẻ con dân tộc <a href=\"https://www.facebook.com/homestayvn.com.vn/\">nói tiếng Anh như bão cấp 12, giật trên cấp 12.</a></strong> Các bạn lý giải giúp mình đi! Có bạn nói là do du lịch, muốn kiếm tiền từ Tây thì phải nói được tiếng Anh. <strong>Điều đó đúng nhưng chưa đủ.</strong></p>\r\n', '<p style=\"text-align:center\"><img alt=\"\" height=\"525\" src=\"/image/images/25445990_578247125861201_6425485205890864552_n-1-768x576.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; M&igrave;nh đi săn tuyết tr&ecirc;n Fansipan v&agrave; ph&aacute;t hiện ra một b&iacute; mật động trời:&nbsp;<strong>trẻ con d&acirc;n tộc&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">n&oacute;i tiếng Anh như b&atilde;o cấp 12, giật tr&ecirc;n cấp 12.</a></strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; C&aacute;c bạn l&yacute; giải gi&uacute;p m&igrave;nh đi! C&oacute; bạn n&oacute;i l&agrave; do du lịch, muốn kiếm tiền từ T&acirc;y th&igrave; phải n&oacute;i được tiếng Anh.&nbsp;<strong>Điều đ&oacute; đ&uacute;ng nhưng chưa đủ.</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Tại sao vậy? Đ&uacute;ng l&agrave; bởi c&oacute; T&acirc;y đi du lịch, v&agrave; động lực r&otilde; r&agrave;ng trước mắt l&agrave; c&aacute;c bạn nhỏ b&aacute;n h&agrave;ng cho t&acirc;y. Chưa đủ v&igrave; sao? V&igrave; c&aacute;c v&ugrave;ng du lịch nhiều như Vũng T&agrave;u, Sầm Sơn, Quất L&acirc;m, Hạ Long&hellip; m&agrave; trẻ con v&ugrave;ng đ&oacute; đ&acirc;u c&oacute; g&igrave; đặc biệt đ&acirc;u.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Theo bước những du kh&aacute;ch t&acirc;y v&agrave; theo v&agrave;o c&aacute;c bản l&agrave;ng, m&igrave;nh ph&aacute;t hiện ra một điều:&nbsp;<em><strong>đ</strong><strong>&oacute; l&agrave;&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">T&acirc;y qu&aacute; nhiều</a>, v&agrave; T&acirc;y sống ở đ&acirc;y cũng qu&aacute; nhiều.</strong>&nbsp;</em>Một m&ocirc;i trường đủ đậm đặc để c&oacute; thể đắm ch&igrave;m v&agrave;o tiếng Anh một c&aacute;ch tự nhi&ecirc;n nhất. L&uacute;c n&agrave;y mới nhớ đến lời của c&aacute;c bạn đi du học:&nbsp;<em><strong>sang Mỹ 2 th&aacute;ng bằng ở Việt Nam c&agrave;y tiếng Anh cả 2 năm.</strong></em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"933\" src=\"/image/images/25446458_578247132527867_2287907853674278681_n.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Đ&uacute;ng l&agrave; kh&ocirc;ng phải b&agrave;n c&atilde;i g&igrave; nhiều. N&oacute;i c&oacute; người nghe v&agrave; nghe c&oacute; người n&oacute;i. Kh&ocirc;ng thể giỏi nghe n&oacute;i tiếng Anh khi một ng&agrave;y quất tiếng Việt 24/24 được. V&agrave; cũng chẳng phải tranh luận nhiều khi c&aacute;c bạn săn T&acirc;y b&ecirc;n bờ hồ để tập giao tiếp, khả năng hơn hẳn những người chỉ &ocirc;m gi&aacute;o tr&igrave;nh v&agrave; nghe đĩa mp3.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; C&aacute;c bạn sinh vi&ecirc;n ở H&agrave; Nội vừa bận học vừa bận l&agrave;m kh&ocirc;ng phải mấy ai cũng x&aacute;ch m&ocirc;ng l&ecirc;n Sapa để được ch&igrave;m v&agrave;o c&aacute;i&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>m&ocirc;i trường đậm đặc tiếng Anh</strong></a>&nbsp;ấy được. Ố ồ, nhưng may qu&aacute;, Homestay Việt Nam đang c&oacute; chương tr&igrave;nh ăn c&ugrave;ng T&acirc;y, ở c&ugrave;ng T&acirc;y, học c&ugrave;ng T&acirc;y chẳng k&eacute;m g&igrave; Sapa. C&aacute;c bạn chỉ việc lết m&ocirc;ng đến&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">Homestay Việt Nam</a>&nbsp;ngay giữa thủ đ&ocirc; H&agrave; Nội để được sống 24/24 trong m&ocirc;i trường đặc sệt tiếng Anh, T&acirc;y đầy l&uacute;c nh&uacute;c nh&agrave; m&agrave; học ph&iacute; chỉ c&oacute; 3 triệu một th&aacute;ng, tha hồ bắn tiếng Anh. Sau một thời gian cũng&nbsp;<a href=\"https://www.facebook.com/homestayvn.com.vn/\">tiếng Anh như si&ecirc;u b&atilde;o</a>.</p>\r\n\r\n<p><a href=\"https://www.facebook.com/homestayvn.com.vn/\"><strong>Sống c&ugrave;ng T&acirc;y &ndash; Chơi c&ugrave;ng T&acirc;y &ndash; Học c&ugrave;ng T&acirc;y.&nbsp;HỌC KHI CHƠI, CHƠI KHI HỌC !</strong></a>&nbsp;Đ&oacute; ch&iacute;nh l&agrave; những điều Homestay Việt Nam muốn mang tới cho bạn.</p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a học tại Homestay Việt Nam, h&atilde;y li&ecirc;n hệ trực tiếp qua hotline&nbsp;<em><strong>0168 3122 994&nbsp;</strong></em>để được tư vấn cụ thể, miễn ph&iacute; nh&eacute;&nbsp;</p>\r\n', '', '', '', '', '', 1, 'tai-sao-tre-con-tren-sapa-lai-ban-tieng-anh-nhu-gio', 'Tại sao trẻ con trên Sapa lại bắn tiếng Anh như gió?', '', ''),
(232, 116, 'en', 'english version video 4', 'english version 1', '<p>english version</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"200\" src=\"https://www.youtube.com/embed/fzIxD1jXn44\" width=\"100%\"></iframe></p>\r\n', '', '', '', '', '', 1, 'en-video-41', 'video ', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_ban_tin`
--

CREATE TABLE `nhan_ban_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_ban_tin`
--

INSERT INTO `nhan_ban_tin` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 13:54:44'),
(2, 'donguyenthinh30031989@gmail.com', '2017-12-23 01:12:33'),
(3, 'truongquangtuan3110@gmail.com', '2018-01-03 12:04:35'),
(4, 'truongquangtuan3110@gmail.com', '2018-01-03 12:12:05'),
(5, 'donguyenthinh30031989@gmail.com', '2018-01-04 07:40:46'),
(6, 'truongquangtuan3110@gmail.com', '2018-01-04 09:02:07'),
(7, 'donguyenthinh30031989@gmail.com', '2018-01-04 09:31:40'),
(8, 'donguyenthinh30031989@gmail.com', '2018-01-04 10:17:09'),
(9, 'viethung95cute@gmail.com', '2018-03-27 07:55:42'),
(10, 'viethung95cute@gmail.com', '2018-03-28 05:08:41'),
(11, 'viethung95cute@gmail.com', '2018-03-28 05:12:29'),
(12, 'viethung95cute@gmail.com', '2018-03-28 05:13:40'),
(13, 'viethung95cute@gmail.com', '2018-03-28 05:45:42'),
(14, 'viethung95cute@gmail.com', '2018-03-28 05:48:44'),
(15, 'hung71483@gmail.com', '2018-03-28 05:51:51'),
(16, 'hung71483@gmail.com', '2018-03-28 05:54:44'),
(17, 'hung71483@gmail.com', '2018-03-28 06:01:14'),
(18, 'hung71483@gmail.com', '2018-03-28 06:03:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_tai_lieu`
--

CREATE TABLE `nhan_tai_lieu` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_tai_lieu`
--

INSERT INTO `nhan_tai_lieu` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 12:33:22'),
(2, 'manh@gmail.com', '2017-12-02 11:58:58'),
(3, 'ngockhanh260614@gmail.com', '2017-12-03 04:05:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `obsolete_products_file`
--

CREATE TABLE `obsolete_products_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `obsolete_products_file`
--

INSERT INTO `obsolete_products_file` (`id`, `name`) VALUES
(3, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `operating_file`
--

CREATE TABLE `operating_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `operating_file`
--

INSERT INTO `operating_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'Giới thiệu', '', '', '17761076_1333587866719468_3529098457172812176_o.jpg', '2017-05-11 16:05:22', '2018-11-14 16:11:55', 1, '', '', '', '', '', '', 'Giới thiệu', '', 'gioi-thieu', 1),
(36, 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', NULL, '2017-05-11 16:05:03', '2019-02-16 16:02:17', 1, '', '', '', '', '', 'báo giá dịch vụ', 'Báo giá', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"', 'bao-gia', 1),
(37, 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', NULL, '2017-05-18 02:05:05', '2017-06-08 08:06:21', 1, '', '', '', '', '', 'tuyên cộng tác viên', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', 'tuyen-cong-tac-vien', 1),
(39, 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Tiêu đề tin tức</h1>\r\n                                \r\n                                <p class=\"desPageNews\" style=\"width:100%; margin:10px 0px; font-weight:bold; font-size:14px;\">Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết</p>\r\n                                <img src=\"../image/slide1.jpg\">\r\n                                \r\n                                <h2>Thẻ h2</h2>\r\n    \r\n                                <p>Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết. Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết</p>\r\n                                \r\n                                <h2>Thẻ h2</h2>\r\n    \r\n                                <p>Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết. Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết</p>\r\n                                <img src=\"../image/formImgCate.jpg\">', NULL, '2017-07-10 15:07:50', '2017-07-10 15:07:35', 1, '', '', '', '', '', '', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế', 'cau-hoi-thuong-gap', 1),
(40, 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', NULL, '2017-07-10 22:07:44', '2017-07-11 02:07:46', 1, '', '', '', '', '', '', 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 1),
(41, 'Sống cùng Tây', 'Sống cùng mái nhà 24/24 cùng 100% người nước ngoài. Được sinh hoạt chung một mái nhà, được giao tiếp tiếng Anh thường xuyên 24/24. Tất cả các hoạt động đều sử dụng tiếng anh, như đi du học nước ngoài.', '', 'i2.png', '2017-07-10 22:07:03', '2019-02-13 00:02:59', 1, '', '', '', '', '', '', 'Sống cùng Tây', '', 'chinh-sach-doi-tra', 1),
(42, 'Immerse English', 'Phương pháp học hiện đại, sáng tạo, đưa bạn vào một môi trường mà ở đó, tiếng Anh tồn tại trong từng bước chân, từng câu nói, từng nhịp thở giúp bạn có thể nói và sử dụng tiếng Anh thường xuyên như người nước ngoài.', '', 'i4.png', '2017-07-10 22:07:22', '2019-02-13 00:02:05', 1, '', '', '', '', '', '', 'Immerse English', '', 'he-thong-nha-thuoc', 1),
(43, 'Môi trường quốc tế', 'Homestay Việt Nam mang đến môi trường quốc tế tại Việt Nam - Nơi bạn được sống cùng Giáo viên nước ngoài 24/24 và học tiếng Anh bất cứ khi nào bạn có thể. Bạn được SỐNG, được CHƠI, được HỌC cùng TÂY !!', '', 'i3.png', '2017-07-10 22:07:41', '2019-02-13 00:02:05', 1, '', '', '', '', '', '', 'Môi trường quốc tế', '', 'hinh-thuc-giao-hang', 1),
(44, '100% GV nước ngoài', '100% giáo viên Homestay là giáo viên nước ngoài đến từ những quốc gia có tiếng Anh là ngôn ngữ mẹ đẻ. Giáo viên ngoài luôn sẵn sàng hỗ trợ các bạn học tập, giao tiếp 24/24.', '', 'i1.png', '2017-07-10 22:07:55', '2019-02-13 00:02:12', 1, '', '', '', '', '', '', '100% GV nước ngoài', '', 'hinh-thuc-thanh-toan', 1),
(46, 'Homestay việt nam là gì ?', 'Homestay Việt Nam mang đến cho bạn một trải nghiệm học tiếng Anh hoàn toàn mới mẻ và khác biệt. Đến với Homestay Việt Nam, bạn sẽ được đưa vào một môi trường hoàn toàn 100% tiếng Anh: Sống cùng Tây, Ở cùng Tây, Học cùng Tây. Ở đó, bạn sẽ được học tiếng Anh, trải nghiệm tiếng Anh thông qua những hoạt động đời thường nhất, gần gũi nhất: nấu ăn, sinh hoạt, giao lưu, chém gió,... Và chính bởi sự gần gũi ấy mà tiếng Anh nhẹ nhàng thẩm thấu vào từng tế bào, trong từng nhịp thở của bạn. Với Homestay Việt Nam - Tiếng Anh là những gì dễ dàng và gần gũi nhất.', '', NULL, '2018-03-27 11:03:18', '2019-02-13 00:02:35', 1, '', '', '', '', '', '', 'Homestay việt nam là gì', '', 'he-thong', 1),
(47, 'PHẢN XẠ TIẾNG ANH KÉM', 'Khi trả lời đều cố gắng dịch từ Tiếng Việt\r\n                                    sang\r\n                                    Tiếng Anh. Không có phản xạ Tiếng Anh', '', '', '2019-02-16 16:02:40', NULL, 1, '<i class=\"fa fa-child\" aria-hidden=\"true\"></i>', '', '', '', '', '', 'PHẢN XẠ TIẾNG ANH KÉM', '', 'phan-xa-tieng-anh-kem', 1),
(48, 'SỢ SAI KHI GIAO TIẾP', 'Phát âm không chuẩn, nghe Tiếng Anh như\r\n                                    vịt nghe\r\n                                    sấm, không tự tin khi giao tiếp', '', '', '2019-02-16 16:02:36', NULL, 1, '<i class=\"fa fa-headphones\"\r\n                                                                           aria-hidden=\"true\"></i>', '', '', '', '', '', 'SỢ SAI KHI GIAO TIẾP', '', 'so-sai-khi-giao-tiep', 1),
(49, 'MẤT GỐC TIẾNG ANH', 'Học Tiếng Anh từ nhỏ nhưng đến giờ vẫn mù\r\n                                    tịt,\r\n                                    không biết bắt đầu từ đâu', '', '', '2019-02-16 16:02:15', NULL, 1, '<i class=\"fa fa-ban\" aria-hidden=\"true\"></i>', '', '', '', '', '', 'MẤT GỐC TIẾNG ANH', '', 'mat-goc-tieng-anh', 1),
(50, 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', 'Chỉ học trên sách vở, không cọ xát giao\r\n                                    tiếp với\r\n                                    môi trường thực tế', '', '', '2019-02-16 16:02:58', NULL, 1, '<i class=\"fa fa-window-close\"\r\n                                                                            aria-hidden=\"true\"></i>', '', '', '', '', '', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', '', 'hoc-khong-di-doi-voi-hanh', 1),
(51, 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', 'Chỉ học trên sách vở, không cọ xát giao\r\n                                    tiếp với\r\n                                    môi trường thực tế', '', '', '2019-02-16 16:02:46', NULL, 1, '<i class=\"fa fa-comments-o\"\r\n                                                                            aria-hidden=\"true\"></i>', '', '', '', '', '', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', '', 'hoc-khong-di-doi-voi-hanh-1', 1),
(52, 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', 'Chỉ học trên sách vở, không cọ xát giao\r\n                                    tiếp với\r\n                                    môi trường thực tế', '', '', '2019-02-16 16:02:35', NULL, 1, '<i class=\"fa fa-calendar\"\r\n                                                                            aria-hidden=\"true\"></i>', '', '', '', '', '', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', '', 'hoc-khong-di-doi-voi-hanh-2', 1),
(53, '100% ENGLISH', 'Với nội quy đầu tiên trong nhà chung Benative là \"No Vietnamese\", các bạn sẽ được trải nghiệm\r\n                        một môi trường sống hoàn toàn bản ngữ, điều kiện tiên quyết để rèn luyện&nbsp;phản xạ Tiếng Anh\r\n                        tự nhiên.', '', '', '2019-02-16 16:02:52', NULL, 1, '', '', '', '', '', '', '100% ENGLISH', '', '100-english', 1),
(54, 'XÂY DỰNG NỀN TẢNG PHÁT ÂM', 'Với các bài giảng bài bản từ cách phát âm từng âm tiết, từ đơn âm tiết đến cách luyến láy, nuốt\r\n                        âm, xử lý ngữ điệu trong câu cho đúng ngữ cảnh, các bạn sẽ hoàn toàn tự tin nói Tiếng Anh với\r\n                        người bản ngữ.&nbsp;', '', '', '2019-02-16 16:02:22', NULL, 1, '', '', '', '', '', '', 'XÂY DỰNG NỀN TẢNG PHÁT ÂM', '', 'xay-dung-nen-tang-phat-am', 1),
(55, 'PHƯƠNG PHÁP TƯ DUY QUA PHIM ẢNH', 'Làm sao để vừa có thể giải trí lại vừa có thể học Tiếng Anh? Benative mang đến cho bạn phương án\r\n                        2 trong 1: Học Tiếng Anh qua các bộ phim Âu-Mỹ hot nhất được các chuyên gia Benative trực tiếp\r\n                        chọn lọc.', '', '', '2019-02-16 16:02:33', NULL, 1, '', '', '', '', '', '', 'PHƯƠNG PHÁP TƯ DUY QUA PHIM ẢNH', '', 'phuong-phap-tu-duy-qua-phim-anh', 1),
(56, 'Pronunciation Skill', 'Kĩ năng phát âm Tiếng Anh chuẩn: thuần thục xử lý ngữ điệu\r\n                        trong câu, cách luyến láy, nhấn trọng âm, đọc âm chuẩn trong câu.', '', '', '2019-02-16 16:02:31', NULL, 1, '<i class=\"fa fa-headphones\"></i>', '', '', '', '', '', 'Pronunciation Skill', '', 'pronunciation-skill', 1),
(57, 'Listening Skill', 'Kĩ năng nghe thuần thục, hiểu được 80% nội dung giao tiếp\r\n                        hàng ngày. Tự tin xem phim, nghe nhạc không cần subtitle.', '', '', '2019-02-16 16:02:14', NULL, 1, '<i class=\"fa fa-comments\"></i>', '', '', '', '', '', 'Listening Skill', '', 'listening-skill', 1),
(58, 'Pronunciation Skill', 'Thành thạo kĩ năng nói trong giao tiếp hàng ngày. Tự tin giao\r\n                        tiếp với người bản ngữ bất kể nơi đâu.', '', '', '2019-02-16 16:02:53', NULL, 1, '<i class=\"fa fa-book\"></i>', '', '', '', '', '', 'Pronunciation Skill', '', 'pronunciation-skill-1', 1),
(59, 'Grammar', 'Áp dụng thành thạo hơn 350 cấu trúc câu trong giao tiếp hàng\r\n                        ngày từ chào hỏi, giới thiệu bản thân đến các chủ đề trong công việc.', '', '', '2019-02-16 16:02:32', NULL, 1, '<i class=\"fa fa-file-text\"></i>', '', '', '', '', '', 'Grammar', '', 'grammar', 1),
(60, 'English Reflex Skill', 'Phản xạ Tiếng Anh hoàn toàn tự nhiên trong giao tiếp. Rèn\r\n                        luyện phản xạ ngôn ngữ qua các tình huống thực tế, thiết thực.', '', '', '2019-02-16 16:02:10', NULL, 1, '<i class=\"fa fa-lightbulb-o\"></i>', '', '', '', '', '', 'English Reflex Skill', '', 'english-reflex-skill', 1),
(61, 'Vocabulary', 'Nắm chắc hơn 1500 từ vựng thông dụng trong giao tiếp hàng\r\n                        ngày. Làm quen với phương pháp ghi nhớ từ lâu dài.', '', '', '2019-02-16 16:02:48', NULL, 1, '<i class=\"fa fa-diamond\"></i>', '', '', '', '', '', 'Vocabulary', '', 'vocabulary', 1),
(62, 'Chương trình học đa dạng cho mọi lứa tuổi', 'Với sự kết hợp không chỉ về ngôn ngữ, kiến thức mà còn các kĩ năng mềm như tư duy phản biện, tư duy công nghệ và các chương trình hè thực tế giúp học sinh phát triển kĩ năng xã hội và\r\nsự tự tin.', '', 'value-box-1-a.jpg', '2019-02-16 17:02:30', NULL, 1, '', '', '', '', '', '', 'Chương trình học đa dạng cho mọi lứa tuổi', '', 'chuong-trinh-hoc-da-dang-cho-moi-lua-tuoi', 1),
(63, 'Cam kết Kết quả tối ưu', 'Không ngừng gia tăng và cam kết điểm số cho học sinh thông qua những chương trình được đúc kết, nghiên cứu chuyên sâu về phát triển ngôn ngữ, kĩ năng xử lý trong mọi tình huống, cách tư duy lẫn chiến thuật làm bài.', '', 'value-box-2-a.jpg', '2019-02-16 17:02:22', NULL, 1, '', '', '', '', '', '', 'Cam kết Kết quả tối ưu', '', 'cam-ket-ket-qua-toi-uu', 1),
(64, 'Đội ngũ giáo viên đạt trình độ quốc tế', 'Là một trong số ít tổ chức kết hợp giữa các giáo viên nước ngoài và Việt Nam tốt nghiệp từ các trường đại học lớn của thế giới giúp tối ưu hóa phương pháp dạy & học và truyền lửa cho học sinh.', '', 'value-box-3-a.jpg', '2019-02-16 17:02:01', NULL, 1, '', '', '', '', '', '', 'Đội ngũ giáo viên đạt trình độ quốc tế', '', 'doi-ngu-giao-vien-dat-trinh-do-quoc-te', 1),
(65, 'Chương trình học thuật được nghiên cứu kĩ', 'Chương trình học thuật được nghiên cứu chuyên sâu tập trung vào phát triển ngôn ngữ và khả năng tư duy, dựa vào chuẩn quốc tế và thiết kế phù hợp với nhu cầu học sinh Việt Nam.', '', 'value-box-4-a.jpg', '2019-02-16 17:02:50', NULL, 1, '', '', '', '', '', '', 'Chương trình học thuật được nghiên cứu kĩ', '', 'chuong-trinh-hoc-thuat-duoc-nghien-cuu-ki', 1),
(66, 'Ứng dụng nền tảng truyền thống và trực tuyến', 'Tiên phong trong việc sử dụng công nghệ online (trực tuyến) để khuyến khích việc tự học và tối ưu hoá giờ học trên lớp, đồng thời tạo hệ thống cộng đồng chia sẻ kinh nghiệm giữa các học viên thành công đi trước  tạo động lực cho học viên Yola đạt kết quả tốt nhất.', '', 'value-box-5-a.jpg', '2019-02-16 17:02:25', NULL, 1, '', '', '', '', '', '', 'Ứng dụng nền tảng truyền thống và trực tuyến', '', 'ung-dung-nen-tang-truyen-thong-va-truc-tuyen', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'Giới thiệu', '', '<p>123</p>\r\n', '', '', '', '', '', 1, 'gioi-thieu', 'Giới thiệu', '', ''),
(36, 35, 'en', 'Giới thiệu', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" height=\"564\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right\" width=\"670\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1, 'gioi-thieu', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(37, 36, 'vn', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 1, 'bao-gia', 'Báo giá', 'báo giá dịch vụ', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"'),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 1, 'bao-gia-en', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(39, 37, 'vn', 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(40, 37, 'en', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(43, 39, 'vn', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Tiêu đề tin tức</h1>\r\n                                \r\n                                <p class=\"desPageNews\" style=\"width:100%; margin:10px 0px; font-weight:bold; font-size:14px;\">Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết</p>\r\n                                <img src=\"../image/slide1.jpg\">\r\n                                \r\n                                <h2>Thẻ h2</h2>\r\n    \r\n                                <p>Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết. Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết</p>\r\n                                \r\n                                <h2>Thẻ h2</h2>\r\n    \r\n                                <p>Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết. Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết</p>\r\n                                <img src=\"../image/formImgCate.jpg\">', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(44, 39, 'en', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h2>THẺ H2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(45, 40, 'vn', 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(47, 41, 'vn', 'Sống cùng Tây', 'Sống cùng mái nhà 24/24 cùng 100% người nước ngoài. Được sinh hoạt chung một mái nhà, được giao tiếp tiếng Anh thường xuyên 24/24. Tất cả các hoạt động đều sử dụng tiếng anh, như đi du học nước ngoài.', '', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Sống cùng Tây', '', ''),
(48, 41, 'en', 'Chính sách đổi - trả', '', '<p>Nội dung Ch&iacute;nh s&aacute;ch đổi - trả</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(49, 42, 'vn', 'Immerse English', 'Phương pháp học hiện đại, sáng tạo, đưa bạn vào một môi trường mà ở đó, tiếng Anh tồn tại trong từng bước chân, từng câu nói, từng nhịp thở giúp bạn có thể nói và sử dụng tiếng Anh thường xuyên như người nước ngoài.', '', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Immerse English', '', ''),
(50, 42, 'en', 'Hệ thống nhà thuốc', '', '<p>Nội dung&nbsp;Hệ thống nh&agrave; thuốc</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(51, 43, 'vn', 'Môi trường quốc tế', 'Homestay Việt Nam mang đến môi trường quốc tế tại Việt Nam - Nơi bạn được sống cùng Giáo viên nước ngoài 24/24 và học tiếng Anh bất cứ khi nào bạn có thể. Bạn được SỐNG, được CHƠI, được HỌC cùng TÂY !!', '', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Môi trường quốc tế', '', ''),
(52, 43, 'en', 'Hình thức giao hàng', '', '<p>Nội dung H&igrave;nh thức giao h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(53, 44, 'vn', '100% GV nước ngoài', '100% giáo viên Homestay là giáo viên nước ngoài đến từ những quốc gia có tiếng Anh là ngôn ngữ mẹ đẻ. Giáo viên ngoài luôn sẵn sàng hỗ trợ các bạn học tập, giao tiếp 24/24.', '', '', '', '', '', '', 1, 'hinh-thuc-thanh-toan', '100% GV nước ngoài', '', ''),
(54, 44, 'en', 'Hình thức thanh toán', '123', '<p>Nội dung&nbsp;H&igrave;nh thức thanh to&aacute;n</p>\r\n', '', '', '', '', '', 1, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(57, 46, 'vn', 'Homestay việt nam là gì ?', 'Homestay Việt Nam mang đến cho bạn một trải nghiệm học tiếng Anh hoàn toàn mới mẻ và khác biệt. Đến với Homestay Việt Nam, bạn sẽ được đưa vào một môi trường hoàn toàn 100% tiếng Anh: Sống cùng Tây, Ở cùng Tây, Học cùng Tây. Ở đó, bạn sẽ được học tiếng Anh, trải nghiệm tiếng Anh thông qua những hoạt động đời thường nhất, gần gũi nhất: nấu ăn, sinh hoạt, giao lưu, chém gió,... Và chính bởi sự gần gũi ấy mà tiếng Anh nhẹ nhàng thẩm thấu vào từng tế bào, trong từng nhịp thở của bạn. Với Homestay Việt Nam - Tiếng Anh là những gì dễ dàng và gần gũi nhất.', '<p>1</p>\r\n', '', '', '', '', '', 1, 'he-thong', 'Homestay việt nam là gì', '', ''),
(58, 46, 'en', ' hệ thống1', '1', '<p>11</p>\r\n', '', '', '', '', '', 1, 'he-thong1', ' hệ thống', '', ''),
(59, 47, 'vn', 'PHẢN XẠ TIẾNG ANH KÉM', 'Khi trả lời đều cố gắng dịch từ Tiếng Việt\r\n                                    sang\r\n                                    Tiếng Anh. Không có phản xạ Tiếng Anh', '', '<i class=\"fa fa-child\" aria-hidden=\"true\"></i>', '', '', '', '', 0, 'phan-xa-tieng-anh-kem', 'PHẢN XẠ TIẾNG ANH KÉM', '', ''),
(60, 47, 'en', 'english version PHẢN XẠ TIẾNG ANH KÉM', 'english version Khi trả lời đều cố gắng dịch từ Tiếng Việt\r\n                                    sang\r\n                                    Tiếng Anh. Không có phản xạ Tiếng Anh', 'english version ', '<i class=\"fa fa-child\" aria-hidden=\"true\"></i>', '', '', '', '', 0, 'en-phan-xa-tieng-anh-kem', 'PHẢN XẠ TIẾNG ANH KÉM', '', ''),
(61, 48, 'vn', 'SỢ SAI KHI GIAO TIẾP', 'Phát âm không chuẩn, nghe Tiếng Anh như\r\n                                    vịt nghe\r\n                                    sấm, không tự tin khi giao tiếp', '', '<i class=\"fa fa-headphones\"\r\n                                                                           aria-hidden=\"true\"></i>', '', '', '', '', 0, 'so-sai-khi-giao-tiep', 'SỢ SAI KHI GIAO TIẾP', '', ''),
(62, 48, 'en', 'english version SỢ SAI KHI GIAO TIẾP', 'english version Phát âm không chuẩn, nghe Tiếng Anh như\r\n                                    vịt nghe\r\n                                    sấm, không tự tin khi giao tiếp', 'english version ', '<i class=\"fa fa-headphones\"\r\n                                                                           aria-hidden=\"true\"></i>', '', '', '', '', 0, 'en-so-sai-khi-giao-tiep', 'SỢ SAI KHI GIAO TIẾP', '', ''),
(63, 49, 'vn', 'MẤT GỐC TIẾNG ANH', 'Học Tiếng Anh từ nhỏ nhưng đến giờ vẫn mù\r\n                                    tịt,\r\n                                    không biết bắt đầu từ đâu', '', '<i class=\"fa fa-ban\" aria-hidden=\"true\"></i>', '', '', '', '', 0, 'mat-goc-tieng-anh', 'MẤT GỐC TIẾNG ANH', '', ''),
(64, 49, 'en', 'english version MẤT GỐC TIẾNG ANH', 'english version Học Tiếng Anh từ nhỏ nhưng đến giờ vẫn mù\r\n                                    tịt,\r\n                                    không biết bắt đầu từ đâu', 'english version ', '<i class=\"fa fa-ban\" aria-hidden=\"true\"></i>', '', '', '', '', 0, 'en-mat-goc-tieng-anh', 'MẤT GỐC TIẾNG ANH', '', ''),
(65, 50, 'vn', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', 'Chỉ học trên sách vở, không cọ xát giao\r\n                                    tiếp với\r\n                                    môi trường thực tế', '', '<i class=\"fa fa-window-close\"\r\n                                                                            aria-hidden=\"true\"></i>', '', '', '', '', 0, 'hoc-khong-di-doi-voi-hanh', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', '', ''),
(66, 50, 'en', 'english version HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', 'english version Chỉ học trên sách vở, không cọ xát giao\r\n                                    tiếp với\r\n                                    môi trường thực tế', 'english version ', '<i class=\"fa fa-window-close\"\r\n                                                                            aria-hidden=\"true\"></i>', '', '', '', '', 0, 'en-hoc-khong-di-doi-voi-hanh', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', '', ''),
(67, 51, 'vn', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', 'Chỉ học trên sách vở, không cọ xát giao\r\n                                    tiếp với\r\n                                    môi trường thực tế', '', '<i class=\"fa fa-comments-o\"\r\n                                                                            aria-hidden=\"true\"></i>', '', '', '', '', 0, 'hoc-khong-di-doi-voi-hanh-1', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', '', ''),
(68, 51, 'en', 'english version HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', 'english version Chỉ học trên sách vở, không cọ xát giao\r\n                                    tiếp với\r\n                                    môi trường thực tế', 'english version ', '<i class=\"fa fa-comments-o\"\r\n                                                                            aria-hidden=\"true\"></i>', '', '', '', '', 0, 'en-hoc-khong-di-doi-voi-hanh-1', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', '', ''),
(69, 52, 'vn', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', 'Chỉ học trên sách vở, không cọ xát giao\r\n                                    tiếp với\r\n                                    môi trường thực tế', '', '<i class=\"fa fa-calendar\"\r\n                                                                            aria-hidden=\"true\"></i>', '', '', '', '', 0, 'hoc-khong-di-doi-voi-hanh-2', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', '', ''),
(70, 52, 'en', 'english version HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', 'english version Chỉ học trên sách vở, không cọ xát giao\r\n                                    tiếp với\r\n                                    môi trường thực tế', 'english version ', '<i class=\"fa fa-calendar\"\r\n                                                                            aria-hidden=\"true\"></i>', '', '', '', '', 0, 'en-hoc-khong-di-doi-voi-hanh-2', 'HỌC KHÔNG ĐI ĐÔI VỚI HÀNH', '', ''),
(71, 53, 'vn', '100% ENGLISH', 'Với nội quy đầu tiên trong nhà chung Benative là \"No Vietnamese\", các bạn sẽ được trải nghiệm\r\n                        một môi trường sống hoàn toàn bản ngữ, điều kiện tiên quyết để rèn luyện&nbsp;phản xạ Tiếng Anh\r\n                        tự nhiên.', '', '', '', '', '', '', 0, '100-english', '100% ENGLISH', '', ''),
(72, 53, 'en', 'english version 100% ENGLISH', 'english version Với nội quy đầu tiên trong nhà chung Benative là \"No Vietnamese\", các bạn sẽ được trải nghiệm\r\n                        một môi trường sống hoàn toàn bản ngữ, điều kiện tiên quyết để rèn luyện&nbsp;phản xạ Tiếng Anh\r\n                        tự nhiên.', 'english version ', '', '', '', '', '', 0, 'en-100-english', '100% ENGLISH', '', ''),
(73, 54, 'vn', 'XÂY DỰNG NỀN TẢNG PHÁT ÂM', 'Với các bài giảng bài bản từ cách phát âm từng âm tiết, từ đơn âm tiết đến cách luyến láy, nuốt\r\n                        âm, xử lý ngữ điệu trong câu cho đúng ngữ cảnh, các bạn sẽ hoàn toàn tự tin nói Tiếng Anh với\r\n                        người bản ngữ.&nbsp;', '', '', '', '', '', '', 0, 'xay-dung-nen-tang-phat-am', 'XÂY DỰNG NỀN TẢNG PHÁT ÂM', '', ''),
(74, 54, 'en', 'english version XÂY DỰNG NỀN TẢNG PHÁT ÂM', 'english version Với các bài giảng bài bản từ cách phát âm từng âm tiết, từ đơn âm tiết đến cách luyến láy, nuốt\r\n                        âm, xử lý ngữ điệu trong câu cho đúng ngữ cảnh, các bạn sẽ hoàn toàn tự tin nói Tiếng Anh với\r\n                        người bản ngữ.&nbsp;', 'english version ', '', '', '', '', '', 0, 'en-xay-dung-nen-tang-phat-am', 'XÂY DỰNG NỀN TẢNG PHÁT ÂM', '', ''),
(75, 55, 'vn', 'PHƯƠNG PHÁP TƯ DUY QUA PHIM ẢNH', 'Làm sao để vừa có thể giải trí lại vừa có thể học Tiếng Anh? Benative mang đến cho bạn phương án\r\n                        2 trong 1: Học Tiếng Anh qua các bộ phim Âu-Mỹ hot nhất được các chuyên gia Benative trực tiếp\r\n                        chọn lọc.', '', '', '', '', '', '', 0, 'phuong-phap-tu-duy-qua-phim-anh', 'PHƯƠNG PHÁP TƯ DUY QUA PHIM ẢNH', '', ''),
(76, 55, 'en', 'english version PHƯƠNG PHÁP TƯ DUY QUA PHIM ẢNH', 'english version Làm sao để vừa có thể giải trí lại vừa có thể học Tiếng Anh? Benative mang đến cho bạn phương án\r\n                        2 trong 1: Học Tiếng Anh qua các bộ phim Âu-Mỹ hot nhất được các chuyên gia Benative trực tiếp\r\n                        chọn lọc.', 'english version ', '', '', '', '', '', 0, 'en-phuong-phap-tu-duy-qua-phim-anh', 'PHƯƠNG PHÁP TƯ DUY QUA PHIM ẢNH', '', ''),
(77, 56, 'vn', 'Pronunciation Skill', 'Kĩ năng phát âm Tiếng Anh chuẩn: thuần thục xử lý ngữ điệu\r\n                        trong câu, cách luyến láy, nhấn trọng âm, đọc âm chuẩn trong câu.', '', '<i class=\"fa fa-headphones\"></i>', '', '', '', '', 0, 'pronunciation-skill', 'Pronunciation Skill', '', ''),
(78, 56, 'en', 'english version Pronunciation Skill', 'english version Kĩ năng phát âm Tiếng Anh chuẩn: thuần thục xử lý ngữ điệu\r\n                        trong câu, cách luyến láy, nhấn trọng âm, đọc âm chuẩn trong câu.', 'english version ', '<i class=\"fa fa-headphones\"></i>', '', '', '', '', 0, 'en-pronunciation-skill', 'Pronunciation Skill', '', ''),
(79, 57, 'vn', 'Listening Skill', 'Kĩ năng nghe thuần thục, hiểu được 80% nội dung giao tiếp\r\n                        hàng ngày. Tự tin xem phim, nghe nhạc không cần subtitle.', '', '<i class=\"fa fa-comments\"></i>', '', '', '', '', 0, 'listening-skill', 'Listening Skill', '', ''),
(80, 57, 'en', 'english version Listening Skill', 'english version Kĩ năng nghe thuần thục, hiểu được 80% nội dung giao tiếp\r\n                        hàng ngày. Tự tin xem phim, nghe nhạc không cần subtitle.', 'english version ', '<i class=\"fa fa-comments\"></i>', '', '', '', '', 0, 'en-listening-skill', 'Listening Skill', '', ''),
(81, 58, 'vn', 'Pronunciation Skill', 'Thành thạo kĩ năng nói trong giao tiếp hàng ngày. Tự tin giao\r\n                        tiếp với người bản ngữ bất kể nơi đâu.', '', '<i class=\"fa fa-book\"></i>', '', '', '', '', 0, 'pronunciation-skill-1', 'Pronunciation Skill', '', ''),
(82, 58, 'en', 'english version Pronunciation Skill', 'english version Thành thạo kĩ năng nói trong giao tiếp hàng ngày. Tự tin giao\r\n                        tiếp với người bản ngữ bất kể nơi đâu.', 'english version ', '<i class=\"fa fa-book\"></i>', '', '', '', '', 0, 'en-pronunciation-skill-1', 'Pronunciation Skill', '', ''),
(83, 59, 'vn', 'Grammar', 'Áp dụng thành thạo hơn 350 cấu trúc câu trong giao tiếp hàng\r\n                        ngày từ chào hỏi, giới thiệu bản thân đến các chủ đề trong công việc.', '', '<i class=\"fa fa-file-text\"></i>', '', '', '', '', 0, 'grammar', 'Grammar', '', ''),
(84, 59, 'en', 'english version Grammar', 'english version Áp dụng thành thạo hơn 350 cấu trúc câu trong giao tiếp hàng\r\n                        ngày từ chào hỏi, giới thiệu bản thân đến các chủ đề trong công việc.', 'english version ', '<i class=\"fa fa-file-text\"></i>', '', '', '', '', 0, 'en-grammar', 'Grammar', '', ''),
(85, 60, 'vn', 'English Reflex Skill', 'Phản xạ Tiếng Anh hoàn toàn tự nhiên trong giao tiếp. Rèn\r\n                        luyện phản xạ ngôn ngữ qua các tình huống thực tế, thiết thực.', '', '<i class=\"fa fa-lightbulb-o\"></i>', '', '', '', '', 0, 'english-reflex-skill', 'English Reflex Skill', '', ''),
(86, 60, 'en', 'english version English Reflex Skill', 'english version Phản xạ Tiếng Anh hoàn toàn tự nhiên trong giao tiếp. Rèn\r\n                        luyện phản xạ ngôn ngữ qua các tình huống thực tế, thiết thực.', 'english version ', '<i class=\"fa fa-lightbulb-o\"></i>', '', '', '', '', 0, 'en-english-reflex-skill', 'English Reflex Skill', '', ''),
(87, 61, 'vn', 'Vocabulary', 'Nắm chắc hơn 1500 từ vựng thông dụng trong giao tiếp hàng\r\n                        ngày. Làm quen với phương pháp ghi nhớ từ lâu dài.', '', '<i class=\"fa fa-diamond\"></i>', '', '', '', '', 0, 'vocabulary', 'Vocabulary', '', ''),
(88, 61, 'en', 'english version Vocabulary', 'english version Nắm chắc hơn 1500 từ vựng thông dụng trong giao tiếp hàng\r\n                        ngày. Làm quen với phương pháp ghi nhớ từ lâu dài.', 'english version ', '<i class=\"fa fa-diamond\"></i>', '', '', '', '', 0, 'en-vocabulary', 'Vocabulary', '', ''),
(89, 62, 'vn', 'Chương trình học đa dạng cho mọi lứa tuổi', 'Với sự kết hợp không chỉ về ngôn ngữ, kiến thức mà còn các kĩ năng mềm như tư duy phản biện, tư duy công nghệ và các chương trình hè thực tế giúp học sinh phát triển kĩ năng xã hội và\r\nsự tự tin.', '', '', '', '', '', '', 0, 'chuong-trinh-hoc-da-dang-cho-moi-lua-tuoi', 'Chương trình học đa dạng cho mọi lứa tuổi', '', ''),
(90, 62, 'en', 'english version Chương trình học đa dạng cho mọi lứa tuổi', 'english version Với sự kết hợp không chỉ về ngôn ngữ, kiến thức mà còn các kĩ năng mềm như tư duy phản biện, tư duy công nghệ và các chương trình hè thực tế giúp học sinh phát triển kĩ năng xã hội và\r\nsự tự tin.', 'english version ', '', '', '', '', '', 0, 'en-chuong-trinh-hoc-da-dang-cho-moi-lua-tuoi', 'Chương trình học đa dạng cho mọi lứa tuổi', '', ''),
(91, 63, 'vn', 'Cam kết Kết quả tối ưu', 'Không ngừng gia tăng và cam kết điểm số cho học sinh thông qua những chương trình được đúc kết, nghiên cứu chuyên sâu về phát triển ngôn ngữ, kĩ năng xử lý trong mọi tình huống, cách tư duy lẫn chiến thuật làm bài.', '', '', '', '', '', '', 0, 'cam-ket-ket-qua-toi-uu', 'Cam kết Kết quả tối ưu', '', ''),
(92, 63, 'en', 'english version Cam kết Kết quả tối ưu', 'english version Không ngừng gia tăng và cam kết điểm số cho học sinh thông qua những chương trình được đúc kết, nghiên cứu chuyên sâu về phát triển ngôn ngữ, kĩ năng xử lý trong mọi tình huống, cách tư duy lẫn chiến thuật làm bài.', 'english version ', '', '', '', '', '', 0, 'en-cam-ket-ket-qua-toi-uu', 'Cam kết Kết quả tối ưu', '', ''),
(93, 64, 'vn', 'Đội ngũ giáo viên đạt trình độ quốc tế', 'Là một trong số ít tổ chức kết hợp giữa các giáo viên nước ngoài và Việt Nam tốt nghiệp từ các trường đại học lớn của thế giới giúp tối ưu hóa phương pháp dạy & học và truyền lửa cho học sinh.', '', '', '', '', '', '', 0, 'doi-ngu-giao-vien-dat-trinh-do-quoc-te', 'Đội ngũ giáo viên đạt trình độ quốc tế', '', ''),
(94, 64, 'en', 'english version Đội ngũ giáo viên đạt trình độ quốc tế', 'english version Là một trong số ít tổ chức kết hợp giữa các giáo viên nước ngoài và Việt Nam tốt nghiệp từ các trường đại học lớn của thế giới giúp tối ưu hóa phương pháp dạy & học và truyền lửa cho học sinh.', 'english version ', '', '', '', '', '', 0, 'en-doi-ngu-giao-vien-dat-trinh-do-quoc-te', 'Đội ngũ giáo viên đạt trình độ quốc tế', '', ''),
(95, 65, 'vn', 'Chương trình học thuật được nghiên cứu kĩ', 'Chương trình học thuật được nghiên cứu chuyên sâu tập trung vào phát triển ngôn ngữ và khả năng tư duy, dựa vào chuẩn quốc tế và thiết kế phù hợp với nhu cầu học sinh Việt Nam.', '', '', '', '', '', '', 0, 'chuong-trinh-hoc-thuat-duoc-nghien-cuu-ki', 'Chương trình học thuật được nghiên cứu kĩ', '', ''),
(96, 65, 'en', 'english version Chương trình học thuật được nghiên cứu kĩ', 'english version Chương trình học thuật được nghiên cứu chuyên sâu tập trung vào phát triển ngôn ngữ và khả năng tư duy, dựa vào chuẩn quốc tế và thiết kế phù hợp với nhu cầu học sinh Việt Nam.', 'english version ', '', '', '', '', '', 0, 'en-chuong-trinh-hoc-thuat-duoc-nghien-cuu-ki', 'Chương trình học thuật được nghiên cứu kĩ', '', ''),
(97, 66, 'vn', 'Ứng dụng nền tảng truyền thống và trực tuyến', 'Tiên phong trong việc sử dụng công nghệ online (trực tuyến) để khuyến khích việc tự học và tối ưu hoá giờ học trên lớp, đồng thời tạo hệ thống cộng đồng chia sẻ kinh nghiệm giữa các học viên thành công đi trước  tạo động lực cho học viên Yola đạt kết quả tốt nhất.', '', '', '', '', '', '', 0, 'ung-dung-nen-tang-truyen-thong-va-truc-tuyen', 'Ứng dụng nền tảng truyền thống và trực tuyến', '', ''),
(98, 66, 'en', 'english version Ứng dụng nền tảng truyền thống và trực tuyến', 'english version Tiên phong trong việc sử dụng công nghệ online (trực tuyến) để khuyến khích việc tự học và tối ưu hoá giờ học trên lớp, đồng thời tạo hệ thống cộng đồng chia sẻ kinh nghiệm giữa các học viên thành công đi trước  tạo động lực cho học viên Yola đạt kết quả tốt nhất.', 'english version ', '', '', '', '', '', 0, 'en-ung-dung-nen-tang-truyen-thong-va-truc-tuyen', 'Ứng dụng nền tảng truyền thống và trực tuyến', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_favorite` int(11) NOT NULL,
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_favorite`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`) VALUES
(27, 'Rèm vải 01', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', 760000, 0, 0, 'product3.jpg', '[\"{\\\"image\\\":\\\"7_12.jpg\\\"}\",\"{\\\"image\\\":\\\"7_8.jpg\\\"}\",\"{\\\"image\\\":\\\"7_6.jpg\\\"}\",\"{\\\"image\\\":\\\"7_3_0.jpg\\\"}\",\"{\\\"image\\\":\\\"7_2_0.jpg\\\"}\"]', '2017-05-22 00:05:19', '2018-06-22 10:06:58', 0, 1, 0, 1, 0, '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'Rèm vải 01', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'rem-vai-01', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', 4, NULL, NULL),
(28, 'Rèm vải 02', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 760000, 0, 0, '7_1_0.jpg', '[\"{\\\"image\\\":\\\"7_12.jpg\\\"}\",\"{\\\"image\\\":\\\"7_8.jpg\\\"}\",\"{\\\"image\\\":\\\"7_6.jpg\\\"}\",\"{\\\"image\\\":\\\"7_5.jpg\\\"}\",\"{\\\"image\\\":\\\"7_3_0.jpg\\\"}\"]', '2017-05-22 00:05:54', '2017-05-22 00:05:13', 110, 0, 0, 0, 0, '02', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Rèm vải 02', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'rem-vai-02', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', 5, NULL, NULL),
(29, 'Rèm vải 03', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 760000, 0, 0, '7_1_0.jpg', '[\"{\\\"image\\\":\\\"7_12.jpg\\\"}\",\"{\\\"image\\\":\\\"7_8.jpg\\\"}\",\"{\\\"image\\\":\\\"7_6.jpg\\\"}\",\"{\\\"image\\\":\\\"7_5.jpg\\\"}\",\"{\\\"image\\\":\\\"7_3_0.jpg\\\"}\"]', '2017-05-22 00:05:49', '2017-05-22 08:05:16', 110, 1, 0, 1, 0, '03', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Rèm vải 03', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'rem-vai-03', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', 3, NULL, NULL),
(30, 'Rèm vải 04', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 7600000, 10, 0, '7_1_0.jpg', '[]', '2017-05-22 00:05:38', '2018-07-13 16:07:33', 0, 1, 0, 1, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Rèm vải 04', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'rem-vai-04', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, NULL),
(31, 'Rèm vải 05', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 760000, 0, 0, '7_1_0.jpg', '[]', '2017-05-22 00:05:30', '2017-05-22 07:05:37', 110, 1, 0, 1, 0, '05', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Rèm vải 05', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'rem-vai-05', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, NULL),
(32, 'Rèm vải 06', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 7600000, 10000000, 0, '7_1_0.jpg', '[]', '2017-05-22 00:05:13', '2017-05-22 07:05:47', 110, 0, 0, 0, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Rèm vải 06', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'rem-vai-06', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, NULL),
(33, 'Rèm vải 07', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 760000, 0, 0, '7_1_0.jpg', '[]', '2017-05-22 00:05:50', '2017-05-22 00:05:48', 110, 0, 0, 0, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Rèm vải 07', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'rem-vai-07', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, NULL);
INSERT INTO `product` (`product_id`, `product_name`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_favorite`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`) VALUES
(34, 'Rèm vải 08', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 760000, 0, 0, 'nikon8.jpg', '[]', '2017-05-22 00:05:32', '2018-07-13 14:07:25', 0, 0, 0, 0, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Rèm vải 08', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'rem-vai-08', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, '139,139'),
(35, 'Rèm vải 09', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 760000, 0, 0, 'nikon7.jpg', '[]', '2017-05-22 00:05:17', '2018-07-13 14:07:14', 0, 1, 0, 1, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Rèm vải 09', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'rem-vai-09', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, '139,139'),
(36, 'Rèm vải 10', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 7600000, 10, 0, 'nikon6.jpg', '[]', '2017-05-22 00:05:50', '2018-07-13 14:07:27', 0, 0, 0, 0, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Rèm vải 10', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'rem-vai-10', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', 4, NULL, '139,139'),
(37, '4u-1', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', 135000, 0, 0, 'nikon5.jpg', '[\"{\\\"image\\\":\\\"7_12.jpg\\\"}\",\"{\\\"image\\\":\\\"7_8.jpg\\\"}\",\"{\\\"image\\\":\\\"7_6.jpg\\\"}\",\"{\\\"image\\\":\\\"7_5.jpg\\\"}\",\"{\\\"image\\\":\\\"7_3_0.jpg\\\"}\"]', '2017-05-22 00:05:55', '2018-07-13 14:07:47', 0, 1, 0, 1, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-1', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-1', '4u-1', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '139,139'),
(38, '4u-2', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 135000, 0, 0, 'nikon4.jpg', '[]', '2017-05-22 00:05:39', '2018-07-13 14:07:34', 0, 1, 0, 1, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-2', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-2', '4u-2', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '139,139'),
(39, '4u-3', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 135000, 0, 0, 'nikon3.jpg', '[]', '2017-05-22 00:05:13', '2018-07-13 14:07:10', 0, 0, 0, 0, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-3', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-3', '4u-3', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '139,139'),
(40, '4u-4', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 135000, 0, 0, 'nikon2.jpg', '[]', '2017-05-22 00:05:53', '2018-07-13 14:07:20', 0, 1, 0, 1, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-4', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-4', '4u-4', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '139,139'),
(41, '4u-5', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 13500000, 15, 0, 'nikon1.jpg', '[]', '2017-05-22 00:05:31', '2018-07-13 16:07:43', 0, 0, 1, 0, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-5', '4u-5 Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-5', '4u-5', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '139,139'),
(42, 'ANTRI GP', '<p>ANTRI GP gi&uacute;p khắc phục bệnh trĩ, suy tĩnh mạch trực tiếp, hiệu quả nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n\r\n<ul>\r\n	<li>Khắc phục nhanh c&aacute;c chứng trĩ cấp, m&atilde;n, đi cầu ra m&aacute;u, đau r&aacute;t, sa b&uacute;i trĩ</li>\r\n	<li>Chống suy tĩnh mạch, gi&atilde;n tĩnh mạch</li>\r\n	<li>An to&agrave;n khi sử dụng, c&oacute; thể sử dụng được cho phụ nữ trong sau sinh, c&oacute; thể sử dụng l&acirc;u d&agrave;i ph&ograve;ng bệnh suy tĩnh mạch.</li>\r\n	<li>Sản phẩm được c&aacute;c b&aacute;c sĩ, dược si khuy&ecirc;n d&ugrave;ng cho bệnh nh&acirc;n trĩ, suy tĩnh mạch.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức tối ưu</h2>\r\n\r\n<p>C&ocirc;ng thức của ANTRI GP l&agrave; nghi&ecirc;n cứu của c&aacute;c Dược sĩ đại học Dược H&agrave; Nội, kết hợp giữa tinh chất Diosmin nhập khẩu từ Ph&aacute;p, rutin v&agrave; c&aacute;c thảo dược thi&ecirc;n nhi&ecirc;n đặc hiệu cho bệnh trĩ, tăng cường bền vũng th&agrave;nh mạch m&aacute;u, giảm ph&ugrave; nề b&uacute;i trĩ, hết đau r&aacute;t chảy m&aacute;u nhanh, th&uacute;c đẩy qu&aacute; tr&igrave;nh co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p c&aacute;c th&agrave;nh mạch m&aacute;u bền vững hơn, th&uacute;c đẩy qu&aacute; tr&igrave;nh giảm ph&ugrave; nề, đau r&aacute;t b&uacute;i trĩ, đi cầu ra m&aacute;u v&agrave; co b&uacute;i trĩ nhanh nhất.<br />\r\nGiảm hết t&aacute;o b&oacute;n, ổn định bệnh trĩ, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nTr&aacute;nh xơ vữa, suy tĩnh mạch, gi&atilde;n tĩnh mạch.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/menu4_1.jpg\" /></p>\r\n\r\n<h2>2.C&ocirc;ng dụng của ANTRI GP</h2>\r\n\r\n<p>ANTRI GP gi&uacute;p giảm phề, đau r&aacute;t, chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p khắc phục c&aacute;c chứng trĩ cấp, m&atilde;n, t&aacute;o b&oacute;n, đau r&aacute;t, đi cầu ra m&aacute;u.<br />\r\nBền vững th&agrave;nh mạch, chống suy tĩnh mạch, gi&atilde;n tĩnh mạch, xơ vữa mạch m&aacute;u, xuất huyết dưới da.</p>\r\n\r\n<h2>3.Th&agrave;nh phần</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Diosmin</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rutin</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao diếp c&aacute;</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MgO</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin C</td>\r\n			<td>30mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>1mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>15mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kem Gluconate</td>\r\n			<td>70mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>T&aacute; dược vừa đủ 01 vi&ecirc;n bao phim tan trong ruột.</td>\r\n					</tr>\r\n					<tr>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng ANTRI GP:</h2>\r\n\r\n<p>Uống 04 vi&ecirc;n/ ng&agrave;y/ 02 lần, trước hoặc trong bữa ăn.<br />\r\n- C&oacute; thể d&ugrave;ng 06 vi&ecirc;n/ng&agrave;y/02 lần, trong trường hợp trĩ cấp, chảy m&aacute;u nhiều, đau r&aacute;t nhiều.<br />\r\n- C&oacute; thể d&ugrave;ng h&agrave;ng ng&agrave;y, ph&ograve;ng bệnh trĩ t&aacute;i ph&aacute;t v&agrave; chống suy tĩnh mạch, xơ vữa mạch m&aacute;u.</p>\r\n\r\n<p><a href=\"#\"><img alt=\"\" src=\"/image/menu4_2.jpg\" /></a></p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>C&aacute;c kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng Diosmin tr&ecirc;n thế giới từ 1950- 2011 cho thấy:<br />\r\nTr&ecirc;n tổng 2344 người bị bệnh trĩ v&agrave; suy tĩnh mạch, gi&atilde;n tĩnh mạch:<br />\r\n- 95% số người bị bệnh trĩ kiểm so&aacute;t t&igrave;nh trạng đi cầu ra m&aacute;u, đau r&aacute;t ở bệnh trĩ.<br />\r\n- Ngo&agrave;i ra, c&aacute;c bằng chứng khi nghi&ecirc;n cứu, Diosmin c&oacute; lợi rất lớn cho bệnh nh&acirc;n suy tĩnh mạch, nguy cơ suy tĩnh mạch v&agrave; xuất huyết dưới da.<br />\r\n- Theo th&ocirc;ng k&ecirc; từ 9/2015 đến 1/2017 tr&ecirc;n 3257 b&ecirc;nh nh&acirc;n trĩ tại H&agrave; Nội, TPHCM v&agrave; 1 số tỉnh miền bắc sử dụng ANTRI GP:<br />\r\n73% số người bị bệnh trĩ giảm hẳn đau r&aacute;t v&agrave; đi cầu ra m&aacute;u sau 03 ng&agrave;y sử dụng.<br />\r\n96% bệnh nh&acirc;n bị bệnh trĩ hết đau r&aacute;t, đi cầu ra m&aacute;u sau 07 ng&agrave;y sử dụng.<br />\r\n84% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 07 ng&agrave;y sử dụng v&agrave; 95% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 14 ng&agrave;y sử dụng.<br />\r\n87.3% kh&aacute;ch h&agrave;ng sử dụng đủ liệu tr&igrave;nh 08 hộp, kh&ocirc;ng t&aacute;i ph&aacute;t lại sau 01 năm.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm!- Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa ANTRI GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>ANTRI GP khắc phục bệnh trĩ tận gốc dựa tr&ecirc;n cơ chế r&otilde; r&agrave;ng của nền y học hiện đại.<br />\r\nCơ chế t&aacute;c dụng hiệp đồng, vừa l&agrave;m hết ph&ugrave; nề b&uacute;i trĩ, vừa khắc phục tận gốc nguy&ecirc;n nh&acirc;n g&acirc;y ra bệnh trĩ.<br />\r\n+ Hết ph&ugrave; nề b&uacute;i trĩ, l&agrave;m hết đau r&aacute;t chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, bền vững hơn.<br />\r\n+ Hết t&aacute;o b&oacute;n, ngăn ngừa bệnh trĩ quay trở lại.<br />\r\nNguy&ecirc;n liệu Diosmin trong ANTRI GP, dạng micronized, hạt si&ecirc;u nhỏ, 5um. Bằng 1/20 kich thước hạt Diosmin th&ocirc;ng thường. gi&uacute;p dễ d&agrave;ng hấp thu hơn nhiều lần. nhập khẩu từ ph&aacute;p.<br />\r\nKh&aacute;c với sản phẩm trĩ c&ugrave;ng d&ograve;ng kh&aacute;c, mất nhiều thời gian để thấy t&aacute;c dụng. ANTRI GP cho t&aacute;c dụng nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img alt=\"\" src=\"/image/giayCN.jpg\" /> <img alt=\"\" src=\"/image/formImgCate.jpg\" /></p>\r\n', '', '', 205000, 0, 0, 'p1.jpg', '[]', '2017-07-09 18:07:02', '2017-09-29 07:09:34', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ANTRI GP', '', 'antri-gp', '', 1, '', '', '', NULL, NULL, '135,130,129'),
(43, 'HOẠT HUYẾT GP', '<p>HOẠT HUYẾT GP  là sản phẩm giành riêng cho bệnh nhân tiền đình & căng thẳng mất ngủ. Ngoài ra HOẠT HUYẾT GP hỗ trợ tăng cường tuần hoàn máu não, chống thiểu năng tuần hoàn máu não.<br /></p>\r\n\r\n                                    <ul>\r\n\r\n<li>Khắc phục nhanh các chứng đau đầu, chóng mặt buồn nôn, căng thẳng mất ngủ, ngủ không  ngon.</li>\r\n<li>Sản phẩm an toàn với người sử dụng,  dùng được hàng ngày để dưỡng não, ngủ sâu giấc hơn. Phòng bệnh tiền đình quay trở lại.</li>\r\n<li>Được các bác sĩ khuyên dùng cho bệnh nhân tiền đình, căng thẳng rối loan giấc ngủ và tăng cường tuần hoàn máu não.</li>\r\n\r\n\r\n</ul>', '', '', '<h2>1.C&ocirc;ng thức b&agrave;o chế tối ưu</h2>\r\n\r\n<p>HOẠT HUY&Ecirc;T GP l&agrave; sản phẩm được b&agrave;o chế tối ưu cho bệnh nh&acirc;n bị tiền đ&igrave;nh &amp; mất ngủ, stress.<br />\r\nVới Gingko biloba, Cao từ củ đinh lăng h&agrave;m lượng cao sẽ tối đa qu&aacute; tr&igrave;nh đưa m&aacute;u l&ecirc;n n&atilde;o, tăng tuần ho&agrave;n m&aacute;u n&atilde;o, cung cấp đủ oxy cho n&atilde;o hoạt động.<br />\r\nVới Cinnarizin/ Mg-B6: gi&uacute;p giảm căng thẳng, ngủ s&acirc;u giấc hơn. đặc biệt cinnarizin t&aacute;c dụng trực tiếp l&ecirc;n tuyến tiền đ&igrave;nh, gi&uacute;p khắc phục nhanh ch&oacute;ng bệnh tiền đ&igrave;nh, đau đầu ch&oacute;ng mặt, &ugrave; tai.</p>\r\n\r\n<h2>2.Th&agrave;nh phần của HOẠT HUYẾT GP</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Gingko biloba</td>\r\n			<td>250mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao Đinh Lăng</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cinnarizine</td>\r\n			<td>25mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Magie gluconate</td>\r\n			<td>30mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B6</td>\r\n			<td>10mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>2mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B12</td>\r\n			<td>50mcg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>3.C&ocirc;ng dụng của HOẠT HUYẾT GP</h2>\r\n\r\n<p>Gi&uacute;p tăng cường tuần ho&agrave;n m&aacute;u n&atilde;o, chống thiểu năng tuần ho&agrave;n m&aacute;u n&atilde;o, rối loạn tuần ho&agrave;n m&aacute;u n&atilde;o.<br />\r\nKhắc phục bệnh tiền đ&igrave;nh, đau đầu ch&oacute;ng mặt &ugrave; tai, buồn n&ocirc;n.<br />\r\nGiảm căng thẳng mệt mỏi, ngủ ngon hơn, s&acirc;u hơn.</p>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng HOẠT HUYẾT GP:</h2>\r\n\r\n<p>Trước khi sử dụng HOẠT HUYẾT GP hay bất kỳ d&ograve;ng sản phẩm c&oacute; t&aacute;c dụng tăng tuần ho&agrave;n m&aacute;u n&atilde;o th&igrave; qu&yacute; kh&aacute;ch n&ecirc;n kiểm tra lại huyết &aacute;p của m&igrave;nh. Kh&ocirc;ng được sử dụng mọi sản phẩm c&oacute; t&aacute;c dụng tăng cường tuần ho&agrave;n n&atilde;o khi huyết &aacute;p của qu&yacute; kh&aacute;ch đang tăng tr&ecirc;n 150/90 mmHg.<br />\r\nLiều d&ugrave;ng HOẠT HUYẾT GP:<br />\r\n- Đang ch&oacute;ng mặt &ugrave; tai: 03 vi&ecirc;n/ ng&agrave;y/ 2 lần.<br />\r\n- D&ugrave;ng h&agrave;ng ng&agrave;y, duy tr&igrave; 02 vi&ecirc;n/ng&agrave;y/2 lần.</p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>93% người sử dụng ngủ ngon hơn, s&acirc;u hơn sau 03 ng&agrave;y sử dụng.<br />\r\n95% người sử dụng hết ch&oacute;ng mặt &ugrave; tai, l&acirc;ng l&acirc;ng, đau đầu.<br />\r\n83% người bị vi&ecirc;m đại tr&agrave;ng cấp, m&atilde;n ổn định tr&ecirc;n 06 th&aacute;ng sau khi d&ugrave;ng đủ 02 th&aacute;ng.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm DP GREEN-PHAR - Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa ĐẠI TR&Agrave;NG GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>Gingko biloba/ Cinnarizin: 250/25mg, khắc phục bệnh tiền đ&igrave;nh nhanh ch&oacute;ng, sau 02- 04 vi&ecirc;n.<br />\r\nHOẠT HUYẾT GP kh&ocirc;ng chỉ l&agrave; sản phẩm hoạt huyết, tăng cường m&aacute;u n&atilde;o. HOẠT HUYẾT GP l&agrave; sản phẩm chuy&ecirc;n gi&agrave;nh cho b&ecirc;nh nh&acirc;n tiền đ&igrave;nh &amp; căng thẳng mất ngủ.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img src=\"/image/CN_hoathuyetGP.jpg\" /> <img src=\"/image/formImgCate_5.jpg\" /></p>\r\n', '', '', 225000, 0, 0, 'hoathuyetGP.jpg', '[]', '2017-07-09 18:07:18', '2017-07-11 00:07:31', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'HOẠT HUYẾT GP', '', 'hoat-huyet-gp', '', 1, '', '', '', NULL, NULL, NULL);
INSERT INTO `product` (`product_id`, `product_name`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_favorite`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`) VALUES
(44, 'BOGAN GP', '<p>Giải ph&aacute;p cho bệnh về men gan v&agrave; mụn nhọt mẩn ngứa. t&aacute;c động theo 03 cơ chế thải độc ch&iacute;nh của gan.</p>\r\n\r\n<ul>\r\n	<li>Hạ men gan sau 01 th&aacute;ng sử dung, dựa tr&ecirc;n 03 cơ chế t&aacute;c dụng</li>\r\n	<li>Hết mụn nhọt, mụn lưng sau 06 tuần.</li>\r\n	<li>Bảo vệ tế b&agrave;o gan khỏi c&aacute;c chất độc, kh&ocirc;ng bị ph&aacute; hủy. Tăng cường chức năng gan, thanh nhiệt, giải độc.</li>\r\n	<li>Sản phẩm n&agrave;y an to&agrave;n, c&oacute; thể d&ugrave;ng h&agrave;ng ng&agrave;y để gan lu&ocirc;n khỏe mạnh.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức b&agrave;o chế tối ưu</h2>\r\n\r\n<p>C&ocirc;ng thức b&agrave;o chế của BOGAN GP, tối ưu h&oacute;a qu&aacute; tr&igrave;nh đ&agrave;o thải độc tố khỏi cơ thể tại gan v&agrave; bảo vệ tế b&agrave;o gan. C&ocirc;ng thức BOGAN GP c&oacute; 03 cơ chế t&aacute;c động l&ecirc;n qu&aacute; tr&igrave;nh thải độc tại gan<br />\r\nT&aacute;c động trực tiếp l&ecirc;n chu tr&igrave;nh chuyển h&oacute;a ure, tăng cường đ&agrave;o thải độc tố v&agrave; men gan: L-Arginine h&agrave;m lượng cao, Methionin, L- Ornithin.<br />\r\nT&aacute;c động v&agrave;o Cytochrom P450 năm tại ty thể b&ecirc;n trong tế b&agrave;o gan, gi&uacute;p bảo vệ tế b&agrave;o gan, ổn định m&agrave;ng tế b&agrave;o tr&aacute;nh tế b&agrave;o gan bị ph&aacute; hủy v&agrave; k&iacute;ch th&iacute;ch tế b&agrave;o gan hoạt động, đ&agrave;o thải độc tố: Silymarine.<br />\r\nC&aacute;c thảo dược qu&yacute; từ thi&ecirc;n nhi&ecirc;n, m&aacute;t gan, lợi mật. Đặc biệt Kim Ng&acirc;n Hoa, mệnh danh l&agrave; vua thanh nhiệt l&agrave;m hết mụn nhọt, mẩn ngứa: Diệp hạ ch&acirc;u đắng, Kim ng&acirc;n hoa.</p>\r\n\r\n<h2>2.Th&agrave;nh phần của 01 vi&ecirc;n BOGAN GP</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>L-Arginine</td>\r\n			<td>400mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Methionin</td>\r\n			<td>50mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L-Ornithin</td>\r\n			<td>50mg (T&aacute;c động trực tiếp chu tr&igrave;nh Ure tại gan)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Silymarine</td>\r\n			<td>100mg ( T&aacute;c động v&agrave;o Cytochrom P450)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Diệp hạ ch&acirc;u đắng</td>\r\n			<td>250mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kim Ng&acirc;n Hoa</td>\r\n			<td>300mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>15mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B2</td>\r\n			<td>1.5 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>Phụ liệu vừa đủ 01 vi&ecirc;n n&eacute;n bao phim.</td>\r\n					</tr>\r\n					<tr>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>3.C&ocirc;ng dụng của BOGAN GP</h2>\r\n\r\n<p>Gi&uacute;p thanh nhiệt, giải độc, m&aacute;t cơ thể.<br />\r\nTăng cường chức năng gan, thải độc gan. bảo vệ tế b&agrave;o gan trong c&aacute;c trường hợp: vi&ecirc;m gan, men gan cao, rối loạn chức năng gan, gan nhiễm mỡ, uống rượu bia nhiều, d&ugrave;ng thuốc, h&oacute;a chất nhiều.<br />\r\nNgười c&oacute; chức năng gan suy giảm, rượu bia, thuốc hay người cao tuổi bị l&atilde;o h&oacute;a dẫn đến mụn nhọt mẩn ngứa, ăn uống kh&oacute; ti&ecirc;u n&ecirc;n d&ugrave;ng.</p>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng BOGAN GP:</h2>\r\n\r\n<p>Trẻ em: 1- 2 vi&ecirc;n/ng&agrave;y/ 1- 2 lần/ sau ăn trước ăn đều được<br />\r\nNgười lớn: men gan cao: 3- 4 vi&ecirc;n/ ng&agrave;y/ 2 lần. Uống thải độc, tăng cường chức năng gan: 02 vi&ecirc;n/ng&agrave;y/ 2 lần.</p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>100% người thử nghiệm hạ men gan sau 01 th&aacute;ng. Đối tượng thử nghiệm người tăng men gan do rượu bia, v&agrave; suy giảm chức năng gan do qu&aacute; tr&igrave;nh sinh hoạt.<br />\r\n96% Người bị mụn nhọt, mụn lưng hết hẳn sau 06 tuần sử dụng sản phẩm.<br />\r\nNgười bị vi&ecirc;m gan B, vi&ecirc;m gan, xơ gan do rượu cũng c&oacute; kết quả khả quan, men gan kh&ocirc;ng tăng. Nh&oacute;m thử nghiệm kết hợp thuốc điều trị nguy&ecirc;n nh&acirc;n ( thuốc ức chế virus vi&ecirc;m gan B, C v&agrave; ngừng uống rượu ) men gan giảm mạnh.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm DP GREEN-PHAR - Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa BOGAN GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>C&ocirc;ng thức b&agrave;o chế BOGAN GP c&oacute; t&aacute;c dụng tối ưu trong việc đ&agrave;o thải độc tố khỏi gan dựa tr&ecirc;n 03 cơ chế. Vừa tăng đ&agrave;o thải vừa bảo vệ tế b&agrave;o gan kh&ocirc;ng bị ph&aacute; hủy.<br />\r\nH&agrave;m lượng hoạt chất v&agrave; chất lượng nguy&ecirc;n liệu vượt trội so với c&aacute;c sản phẩm kh&aacute;c.<br />\r\nCh&uacute;ng t&ocirc;i cam kết ho&agrave;n tiền 100% cho qu&yacute; kh&aacute;ch nếu men gan kh&ocirc;ng hạ sau 01 th&aacute;ng, kh&ocirc;ng hết mụn lưng sau 06 tuần sử dụng.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img alt=\"\" src=\"/image/CN_boganGP.jpg\" /> <img alt=\"\" src=\"/image/formImgCate_2.jpg\" /></p>\r\n', '', '', 180000, 0, 0, 'boganGP.jpg', '[]', '2017-07-09 18:07:07', '2017-09-27 16:09:13', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'BOGAN GP', '', 'bogan-gp', '', 1, '', '', '', NULL, NULL, '[\"{\\\"product_cat\\\":\\\"130\\\"}\",\"{\\\"product_cat\\\":\\\"126\\\"}\"]'),
(45, 'Calcimom GP', '<p>CALCIMOM HỮU CƠ GP bổ sung calci cho người c&oacute; nguy cơ thiếu calci.</p>\r\n\r\n<ul>\r\n	<li>Calci dạng hữu cơ, dễ hấp thu, kh&ocirc;ng lắng đọng tạo sỏi.</li>\r\n	<li>C&ocirc;ng thức b&agrave;o chế tối ưu, khắc phục nhanh c&aacute;c hiện tượng thiếu calci, chuột r&uacute;t, đau mỏi ch&acirc;n tay, mỏi h&ocirc;ng, lo&atilde;ng xương&hellip;.v&hellip;v</li>\r\n	<li>Sản phẩm được c&aacute;c b&aacute;c si khuy&ecirc;n d&ugrave;ng cho phụ nữ mang thai, cho con b&uacute;, người gi&agrave; c&oacute; nguy cơ lo&atilde;ng xương, trẻ em, thanh thi&ecirc;u ni&ecirc;n đang ph&aacute;t triển.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức b&agrave;o chế tối ưu</h2>\r\n\r\n<p>CALCIMOM HỮU CƠ GP được b&agrave;o chế để tối ưu h&oacute;a qu&aacute; tr&igrave;nh hấp thu v&agrave; cấu tạo n&ecirc;n xương. Qu&aacute; tr&igrave;nh hấp thu calci trải qua 02 giai đoạn:<br />\r\nCalci từ ruột v&agrave;o m&aacute;u: Giai đoạn n&agrave;y phụ thuộc nồng độ calci v&agrave; vitamin D3.<br />\r\nCalci từ m&aacute;u v&agrave;o xương, cấu tạo n&ecirc;n xương: Giai đoạn n&agrave;y phụ thuộc Ca++, Mg++ v&agrave; phospho.. l&agrave; những th&agrave;nh phần ch&iacute;nh cấu tạo n&ecirc;n xương<br />\r\nCALCIMOM HỮU CƠ GP chứa c&aacute;c th&agrave;nh phần Ca++, Mg++, phospho v&agrave; Vitamin D3 h&agrave;m lượng cao v&agrave; giải ph&oacute;ng dần dần, gi&uacute;p hấp thu tối đa v&agrave;o m&aacute;u, tham gia v&agrave;o qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh n&ecirc;n xương bền vững hơn. Nguy&ecirc;n liệu sử dụng l&agrave; Calci hữu cơ, hạn chế tối đa qu&aacute; tr&igrave;nh lắng đọng g&acirc;y sỏi thận, t&aacute;o b&oacute;n, n&oacute;ng g&acirc;y mụn nhọt.</p>\r\n\r\n<h2>2.Th&agrave;nh phần của CALCIMOM HỮU CƠ GP</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Calci dihdrophosphat anhydrous</td>\r\n			<td>800mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Calci gluconate</td>\r\n			<td>400mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Magie gluconate</td>\r\n			<td>120mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin D3</td>\r\n			<td>250UI</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>Phụ liệu vừa đủ 01 vi&ecirc;n n&eacute;n bao phim.</td>\r\n					</tr>\r\n					<tr>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>3.C&ocirc;ng dụng của CALCIMOM HỮU CƠ GP</h2>\r\n\r\n<p>Bổ sung calci cho người c&oacute; nguy cơ thiếu calci: Người gi&agrave;, bệnh lo&atilde;ng xương, Phụ nữ mang thai. Thanh thiếu ni&ecirc;n đang ph&aacute;t triển chiều cao.<br />\r\nGiảm nhanh c&aacute;c triệu chứng do thiếu calci như: đau mỏi xương khớp, đau mỏi h&ocirc;ng, chuột r&uacute;t. V&atilde; mồ h&ocirc;i trộm, bồn chồn, hồi hộp lo lắng v&ocirc; cớ.</p>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng BABY CALCIMOM HỮU CƠ GP:</h2>\r\n\r\n<p>Uống 01 vi&ecirc;n/ ng&agrave;y/ s&aacute;ng.<br />\r\nKhi thiếu nhiều, hay cần nhiều calci c&oacute; thể uống 2 vi&ecirc;n/ ng&agrave;y/ 01 lần s&aacute;ng. ( phụ nữ mang bầu, lo&atilde;ng xương&hellip;v.v..v).</p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>100% b&agrave; bầu sử dụng hết chuột r&uacute;t sau 15 ng&agrave;y sử dụng sản phẩm, mỏi h&ocirc;ng giảm mạnh. nồng độ Calci huyết ổn định.<br />\r\nMật độ xương tăng 10.3% sau 03 th&aacute;ng sử dụng.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm DP GREEN-PHAR - Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa CALCIMOM HỮU CƠ GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>H&agrave;m lượng calci nguy&ecirc;n tố trong CALCIMOM HỮU CƠ GP l&agrave; 550mg Ca++, cao hơn nhiều so với c&aacute;c sản phẩm kh&aacute;c.<br />\r\nC&ocirc;ng thức b&agrave;o chế tối ưu, hấp thu tốt v&agrave; tham gia v&agrave;o h&igrave;nh th&agrave;nh xương nhanh hơn.<br />\r\nCh&uacute;ng t&ocirc;i cam kết ho&agrave;n tiền 100%, sau 15 ng&agrave;y sử dụng kh&ocirc;ng hết chuột r&uacute;t.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img alt=\"\" src=\"/image/CN_calcimomGP.jpg\" /> <img alt=\"\" src=\"/image/formImgCate_3.jpg\" /></p>\r\n', '', '', 225000, 0, 0, 'CalcimomGP.jpg', '[]', '2017-07-09 18:07:18', '2017-09-27 16:09:27', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Calcimom GP', '', 'calcimom-gp', '', 1, '', '', '', NULL, NULL, '[\"{\\\"product_cat\\\":\\\"130\\\"}\",\"{\\\"product_cat\\\":\\\"129\\\"}\",\"{\\\"product_cat\\\":\\\"127\\\"}\"]'),
(46, ' Bé Khánh Linh 5 tuổi (MS: 002)', '<p>B&eacute; Kh&aacute;nh Linh rất xinh g&aacute;i, dễ thương ahihi&nbsp;</p>\r\n', '', '', '<h2>Bảng kết quả học tập của b&eacute; Kh&aacute;nh Linh</h2>\r\n\r\n<h2 style=\"text-align:center\"><img alt=\"\" height=\"390\" src=\"/image/images/americanskills/1462789727-sao-nhi--5-_2mhft5s9bj727.jpg\" width=\"600\" /></h2>\r\n\r\n<p>Đề nghị gia đ&igrave;nh k&egrave;m cặp em nhiều hơn trong việc học tập.</p>\r\n', '', '', 55000, 0, 0, 'gia-su-tieu-hoc-tphcm.jpg', '[]', '2017-07-09 18:07:29', '2018-04-16 09:04:29', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, ' Bé Khánh Linh 5 tuổi (MS: 002)', '', 'be-khanh-linh-5-tuoi-ms-002', '', 1, '', '', '', NULL, NULL, '137,137'),
(47, ' Bé Gia Bảo 9 tuổi (MS: 001)', '<p>B&eacute; Bảo &quot;Ngậu&quot; rất giỏi aaaaha haaaaaaaaaaaaa</p>\r\n', '', '', '<h3>Bảng điểm b&eacute; Gia Bảo</h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"501\" src=\"/image/images/americanskills/xem_b_ng__i_m_chi_ti_t_c_a_h_c_sinh.png\" width=\"617\" /></p>\r\n', '', '', 100000, 0, 0, 'depositphotos_24442095-stock-photo-unhappy-male-student-working-at.jpg', '[]', '2017-07-09 18:07:40', '2018-04-16 09:04:25', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, ' Bé Gia Bảo 9 tuổi (MS: 001)', '', 'be-gia-bao-9-tuoi-ms-001', '', 1, '', '', '', NULL, NULL, '137,137'),
(48, 'ANTRI GP (HỘP TO)', '<p>ANTRI GP gi&uacute;p khắc phục bệnh trĩ, suy tĩnh mạch trực tiếp, hiệu quả nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n\r\n<ul>\r\n	<li>Khắc phục nhanh c&aacute;c chứng trĩ cấp, m&atilde;n, đi cầu ra m&aacute;u, đau r&aacute;t, sa b&uacute;i trĩ</li>\r\n	<li>Chống suy tĩnh mạch, gi&atilde;n tĩnh mạch</li>\r\n	<li>An to&agrave;n khi sử dụng, c&oacute; thể sử dụng được cho phụ nữ trong sau sinh, c&oacute; thể sử dụng l&acirc;u d&agrave;i ph&ograve;ng bệnh suy tĩnh mạch.</li>\r\n	<li>Sản phẩm được c&aacute;c b&aacute;c sĩ, dược si khuy&ecirc;n d&ugrave;ng cho bệnh nh&acirc;n trĩ, suy tĩnh mạch.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức tối ưu</h2>\r\n\r\n<p>C&ocirc;ng thức của ANTRI GP l&agrave; nghi&ecirc;n cứu của c&aacute;c Dược sĩ đại học Dược H&agrave; Nội, kết hợp giữa tinh chất Diosmin nhập khẩu từ Ph&aacute;p, rutin v&agrave; c&aacute;c thảo dược thi&ecirc;n nhi&ecirc;n đặc hiệu cho bệnh trĩ, tăng cường bền vũng th&agrave;nh mạch m&aacute;u, giảm ph&ugrave; nề b&uacute;i trĩ, hết đau r&aacute;t chảy m&aacute;u nhanh, th&uacute;c đẩy qu&aacute; tr&igrave;nh co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p c&aacute;c th&agrave;nh mạch m&aacute;u bền vững hơn, th&uacute;c đẩy qu&aacute; tr&igrave;nh giảm ph&ugrave; nề, đau r&aacute;t b&uacute;i trĩ, đi cầu ra m&aacute;u v&agrave; co b&uacute;i trĩ nhanh nhất.<br />\r\nGiảm hết t&aacute;o b&oacute;n, ổn định bệnh trĩ, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nTr&aacute;nh xơ vữa, suy tĩnh mạch, gi&atilde;n tĩnh mạch.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/menu4_1.jpg\" /></p>\r\n\r\n<h2>2.C&ocirc;ng dụng của ANTRI GP</h2>\r\n\r\n<p>ANTRI GP gi&uacute;p giảm phề, đau r&aacute;t, chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p khắc phục c&aacute;c chứng trĩ cấp, m&atilde;n, t&aacute;o b&oacute;n, đau r&aacute;t, đi cầu ra m&aacute;u.<br />\r\nBền vững th&agrave;nh mạch, chống suy tĩnh mạch, gi&atilde;n tĩnh mạch, xơ vữa mạch m&aacute;u, xuất huyết dưới da.</p>\r\n\r\n<h2>3.Th&agrave;nh phần</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Diosmin</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rutin</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao diếp c&aacute;</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MgO</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin C</td>\r\n			<td>30mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>1mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>15mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kem Gluconate</td>\r\n			<td>70mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>T&aacute; dược vừa đủ 01 vi&ecirc;n bao phim tan trong ruột.</td>\r\n					</tr>\r\n					<tr>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng ANTRI GP:</h2>\r\n\r\n<p>Uống 04 vi&ecirc;n/ ng&agrave;y/ 02 lần, trước hoặc trong bữa ăn.<br />\r\n- C&oacute; thể d&ugrave;ng 06 vi&ecirc;n/ng&agrave;y/02 lần, trong trường hợp trĩ cấp, chảy m&aacute;u nhiều, đau r&aacute;t nhiều.<br />\r\n- C&oacute; thể d&ugrave;ng h&agrave;ng ng&agrave;y, ph&ograve;ng bệnh trĩ t&aacute;i ph&aacute;t v&agrave; chống suy tĩnh mạch, xơ vữa mạch m&aacute;u.</p>\r\n\r\n<p><a href=\"#\"><img alt=\"\" src=\"/image/menu4_2.jpg\" /></a></p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>C&aacute;c kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng Diosmin tr&ecirc;n thế giới từ 1950- 2011 cho thấy:<br />\r\nTr&ecirc;n tổng 2344 người bị bệnh trĩ v&agrave; suy tĩnh mạch, gi&atilde;n tĩnh mạch:<br />\r\n- 95% số người bị bệnh trĩ kiểm so&aacute;t t&igrave;nh trạng đi cầu ra m&aacute;u, đau r&aacute;t ở bệnh trĩ.<br />\r\n- Ngo&agrave;i ra, c&aacute;c bằng chứng khi nghi&ecirc;n cứu, Diosmin c&oacute; lợi rất lớn cho bệnh nh&acirc;n suy tĩnh mạch, nguy cơ suy tĩnh mạch v&agrave; xuất huyết dưới da.<br />\r\n- Theo th&ocirc;ng k&ecirc; từ 9/2015 đến 1/2017 tr&ecirc;n 3257 b&ecirc;nh nh&acirc;n trĩ tại H&agrave; Nội, TPHCM v&agrave; 1 số tỉnh miền bắc sử dụng ANTRI GP:<br />\r\n73% số người bị bệnh trĩ giảm hẳn đau r&aacute;t v&agrave; đi cầu ra m&aacute;u sau 03 ng&agrave;y sử dụng.<br />\r\n96% bệnh nh&acirc;n bị bệnh trĩ hết đau r&aacute;t, đi cầu ra m&aacute;u sau 07 ng&agrave;y sử dụng.<br />\r\n84% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 07 ng&agrave;y sử dụng v&agrave; 95% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 14 ng&agrave;y sử dụng.<br />\r\n87.3% kh&aacute;ch h&agrave;ng sử dụng đủ liệu tr&igrave;nh 08 hộp, kh&ocirc;ng t&aacute;i ph&aacute;t lại sau 01 năm.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm!- Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa ANTRI GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>ANTRI GP khắc phục bệnh trĩ tận gốc dựa tr&ecirc;n cơ chế r&otilde; r&agrave;ng của nền y học hiện đại.<br />\r\nCơ chế t&aacute;c dụng hiệp đồng, vừa l&agrave;m hết ph&ugrave; nề b&uacute;i trĩ, vừa khắc phục tận gốc nguy&ecirc;n nh&acirc;n g&acirc;y ra bệnh trĩ.<br />\r\n+ Hết ph&ugrave; nề b&uacute;i trĩ, l&agrave;m hết đau r&aacute;t chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, bền vững hơn.<br />\r\n+ Hết t&aacute;o b&oacute;n, ngăn ngừa bệnh trĩ quay trở lại.<br />\r\nNguy&ecirc;n liệu Diosmin trong ANTRI GP, dạng micronized, hạt si&ecirc;u nhỏ, 5um. Bằng 1/20 kich thước hạt Diosmin th&ocirc;ng thường. gi&uacute;p dễ d&agrave;ng hấp thu hơn nhiều lần. nhập khẩu từ ph&aacute;p.<br />\r\nKh&aacute;c với sản phẩm trĩ c&ugrave;ng d&ograve;ng kh&aacute;c, mất nhiều thời gian để thấy t&aacute;c dụng. ANTRI GP cho t&aacute;c dụng nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img alt=\"\" src=\"/image/giayCN.jpg\" /> <img alt=\"\" src=\"/image/formImgCate.jpg\" /></p>\r\n', '', '', 799000, 0, 0, 'product8.jpg', '[]', '2017-07-11 00:07:31', '2018-07-13 15:07:01', 0, 0, 0, 0, 0, 'FNP1127US20GS120 (0100-16320)', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ANTRI GP (HỘP TO)', '', 'antri-gp-hop-to', '', 1, '', '', 'FireNET', NULL, NULL, '140,130,129,129'),
(49, 'Hình ảnh sôi động Lễ Hội American Skills Long Biên', '', '', '', '', '', '', 0, 0, 0, 'product7.jpg', '[\"{\\\"image\\\":\\\"thumb_14665040398269_13393977_585369601636975_3431445518694990846_n.jpg\\\"}\",\"{\\\"image\\\":\\\"thumb_14665040415616_13407078_585370381636897_427809477680829256_n.jpg\\\"}\",\"{\\\"image\\\":\\\"thumb_14665040419321_13417435_585370258303576_3636360098352839377_n.jpg\\\"}\",\"{\\\"image\\\":\\\"thumb_14665040423295_13418747_585369251637010_3247308734397122599_n.jpg\\\"}\"]', '2017-07-11 00:07:45', '2018-07-13 15:07:52', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Hình ảnh sôi động Lễ Hội American Skills Long Biên', '', 'hinh-anh-soi-dong-le-hoi-american-skills-long-bien', '', 1, '', '', '', NULL, NULL, '140,140'),
(50, 'HÌNH ẢNH SÂN CHƠI TRÍ TUỆ AMERICAN SKILLS', '', '', '', '', '', '', 0, 0, 0, 'product6.jpg', '[\"{\\\"image\\\":\\\"logo.png\\\"}\",\"{\\\"image\\\":\\\"fastrackids-3-460.png\\\"}\",\"{\\\"image\\\":\\\"tuyen-dung-nhan-vien-phu-trach-xuat-ban-sach-toan-hoc.jpg\\\"}\",\"{\\\"image\\\":\\\"thong-tin-tuyen-dung1.jpg\\\"}\",\"{\\\"image\\\":\\\"Le Ngoc Trang_TOEIC 820.jpg\\\"}\"]', '2017-09-21 23:09:49', '2018-07-13 15:07:42', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'HÌNH ẢNH SÂN CHƠI TRÍ TUỆ AMERICAN SKILLS', '', 'hinh-anh-san-choi-tri-tue-american-skills', '', 1, '', '', '', NULL, NULL, '140,140'),
(51, 'American Skill', '', '', '', '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/4J4YFw5EjF8\" width=\"560\"></iframe></p>\r\n', '', '', 0, 0, 0, 'product5.jpg', '[]', '2018-03-28 08:03:53', '2018-07-13 15:07:36', 0, 0, 1, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'American Skill', '', 'american-skill', '', 1, '', '', '', NULL, NULL, '140,140'),
(52, 'Đội ngũ giáo viên trình độ cao', '<p>Ch&uacute;ng t&ocirc;i cam kết bảo mật tuyệt đối th&ocirc;ng tin của Kh&aacute;ch h&agrave;ng, v&igrave; ch&uacute;ng t&ocirc;i hiểu r&otilde; v&agrave; lu&ocirc;n t&ocirc;n trọng gi&aacute; trị đạo đức trong kinh doanh.<br />\r\n- Uy t&iacute;n v&agrave; ch&acirc;n th&agrave;nh l&agrave; hai gi&aacute; trị văn h&oacute;a quan trọng nhất của Nguy&ecirc;n Anh.<br />\r\n- To&agrave;n bộ nh&acirc;n sự Nguy&ecirc;n Anh lu&ocirc;n xem lợi &iacute;ch của Kh&aacute;ch h&agrave;ng l&agrave; t&acirc;m niệm để l&agrave;m việc.</p>\r\n', '', '', '', '', '', 0, 0, 0, 'product4.jpg', '[]', '2018-03-28 13:03:43', '2018-07-13 15:07:29', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Đội ngũ giáo viên trình độ cao', '', 'doi-ngu-giao-vien-trinh-do-cao', '', 1, '', '', '', NULL, NULL, '140,140'),
(53, 'Chương trình Chuẩn quốc tế', '<p>-Nội dung chương tr&igrave;nh chuẩn quốc tế</p>\r\n', '', '', '', '', '', 0, 0, 0, 'product3.jpg', '[]', '2018-03-28 13:03:34', '2018-07-13 15:07:21', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Chương trình Chuẩn quốc tế', '', 'chuong-trinh-chuan-quoc-te', '', 1, '', '', '', NULL, NULL, '140,140'),
(54, 'Phương pháp học tiên tiến', '<p>- Mọi y&ecirc;u cầu của Bạn đều được Nguy&ecirc;n Anh thực hiện nhanh ch&oacute;ng, đầy đủ v&agrave; b&aacute;o c&aacute;o thường xuy&ecirc;n<br />\r\n- Quy tr&igrave;nh kết nối l&agrave;m việc đơn giản, thuận tiện với thời gian v&agrave; y&ecirc;u cầu của Bạn<br />\r\n- Bộ phận tư vấn của Nguy&ecirc;n Anh lu&ocirc;n hỗ trợ Bạn 24/7 qua c&aacute;c k&ecirc;nh hotline, email, zalo, viber hoặc c&aacute;c k&ecirc;nh kh&aacute;c ph&ugrave; hợp với Bạn.</p>\r\n', '', '', '', '', '', 5000, 0, 0, 'product2.jpg', '[]', '2018-03-28 13:03:36', '2018-07-13 19:07:48', 0, 0, 1, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Phương pháp học tiên tiến', '', 'phuong-phap-hoc-tien-tien', '', 1, '', '', 'Sony', NULL, NULL, '140,140'),
(55, 'Cơ sở vật chất hiện đại', '<p>This stylish hamper is a wonderful way to welcome a new baby into the world. Little Pink Bunny is a gorgeously soft and snuggly friend, she is so huggably, hoppily soft she makes the perfect bedtime buddy. The hamper also contains our award winning, all-natural skincare, designed specifically for a newborn baby&rsquo;s delicate skin and this gift hamper is finished with our stunning baby bud posy containing six pairs of fabulous stay-on socks.tu</p>\r\n', '', '', '<p>This welcome hamper contains: The lovely Little Pink Bunny with pretty pink trim and a rattle, perfect for sensory play. She is 24 cm high and suitable from birth.&nbsp;<br />\r\nOne 150ml moisturising baby lotion. This is a soothing, fragrance free lotion designed especially for a baby&rsquo;s delicate skin. Handmade in Cornwall using no parabens, sodium lauryl sulphate, fragrances, palm oil or lanolin the all-natural ingredients include beeswax, wheatgerm, honey and evening primrose oil.&nbsp;<br />\r\nOne 60ml baby care cream. This is our most popular cream and mums love how effective it is on everything from nappy rash to eczema. Again, handmade in Cornwall and completely natural it contains calendula to soothe and reduce redness, lavender for relaxation and its antiseptic properties, wheat germ to soothe and rejuvenate and finally honey for its ability to attract and maintain moisture, helping to soften and protect delicate skin.&nbsp;<br />\r\nOne baby bud posy &ndash; the six pairs of &lsquo;stay on&rsquo; socks within the posy contain 67% cotton, 29% nylon, 4% spandex.&nbsp;<br />\r\nPerfectly packaged in a beautifully illustrated gift box with a gift card bearing your message, this is a wonderful gift for a new mum. tu</p>\r\n\r\n<p>Đặc biệt, ch&uacute;ng t&ocirc;i lu&ocirc;n cập nhật c&aacute;c sản phẩm c&ocirc;ng nghệ mới v&agrave; lu&ocirc;n c&oacute; c&aacute;c chương tr&igrave;nh khuyến m&atilde;i đặc sắc: gi&aacute; cả ưu đ&atilde;i, qu&agrave; tặng phong ph&uacute; tới Kh&aacute;ch h&agrave;ng.</p>\r\n', '', '', 123000, 3, 0, 'product1.jpg', '[\"{\\\"image\\\":\\\"product2.jpg\\\"}\"]', '2018-03-28 13:03:01', '2018-07-13 14:07:01', 0, 0, 1, 0, 0, 'asdf', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Cơ sở vật chất hiện đại', '', 'co-so-vat-chat-hien-dai', '', 1, '', '', 'FireNET', NULL, NULL, '140,140');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(111, 'Rèm điều khiển tự động', '<p>&nbsp; L&agrave; sản phẩm c&oacute; xuất xứ từ Ph&aacute;p, d&agrave;nh ri&ecirc;ng cho kh&ocirc;ng gian nội thất, c&oacute; thể được lắp đặt tr&ecirc;n tất cả c&aacute;c loại m&agrave;nh, r&egrave;m trong, ngo&agrave;i nh&agrave;: r&egrave;m rủ, r&egrave;m roman, m&agrave;nh cầu vồng, m&agrave;nh cuốn... Cho ph&eacute;p bạn xếp h&agrave;ng tất cả c&aacute;c r&egrave;m của bạn ho&agrave;n hảo với 1 điều khiển từ xa.&nbsp;</p>\r\n', '<p>&nbsp; L&agrave; sản phẩm c&oacute; xuất xứ từ Ph&aacute;p, d&agrave;nh ri&ecirc;ng cho kh&ocirc;ng gian nội thất, c&oacute; thể được lắp đặt tr&ecirc;n tất cả c&aacute;c loại m&agrave;nh, r&egrave;m trong, ngo&agrave;i nh&agrave;: r&egrave;m rủ, r&egrave;m roman, m&agrave;nh cầu vồng, m&agrave;nh cuốn... Cho ph&eacute;p bạn xếp h&agrave;ng tất cả c&aacute;c r&egrave;m của bạn ho&agrave;n hảo với 1 điều khiển từ xa.&nbsp;</p>\r\n', 0, 0, 'tyc1355713641.jpg', '2017-05-22 00:05:45', NULL, '', '', '', '', '', 0, 'Rèm điều khiển tự động', '  Là sản phẩm có xuất xứ từ Pháp, dành riêng cho không gian nội thất, có thể được lắp đặt trên tất cả các loại mành, rèm trong, ngoài nhà: rèm rủ, rèm roman, mành cầu vồng, mành cuốn... Cho phép bạn xếp hàng tất cả các rèm của bạn hoàn hảo với 1 điều khiển từ xa. ', 'rem-dieu-khien-tu-dong', 'Rèm điều khiển tự động', NULL),
(114, 'Rèm cổ điển', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', 0, 0, '_mg_0400.jpg', '2017-05-22 00:05:48', NULL, '', '', '', '', '', 0, 'Rèm cổ điển', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.', 'rem-co-dien', 'Rèm cổ điển', NULL),
(115, 'Vải Thailand', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', 0, 0, 'vai_thai.jpg', '2017-05-22 00:05:17', NULL, '', '', '', '', '', 0, 'Vải Thailand', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.', 'vai-thailand', 'Vải Thailand', NULL),
(116, 'Vải Sunbrella', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', 0, 0, 'vai_my.jpg', '2017-05-22 00:05:45', NULL, '', '', '', '', '', 0, 'Vải Sunbrella', 'Sunbrella là một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella – Mỹ. Vải Sunberlla được sản xuất trên dây truyền tiên tiến nhất,dưới đôi bàn tay của các kỹ sư lâu năm kinh nghiệm trong ngành sản xuất vải của Mỹ.Vải Sunbrella được làm từ 100% chất liệu acrylic, màu sắc của vải được nhuộm ngay từ công đoạn đầu tiên trong quy trình sản xuất ngay cả trước khi các sợi vải được hình thành lên.Chính vì vậy màu sắc của vải Sunbrella chịu được ánh sáng mặt trời và các điều kiện khắc nghiệt của thời tiết. ', 'vai-sunbrella', 'Vải Sunbrella', NULL),
(119, 'Vải Bỉ', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', 0, 0, '39313_513317235364775_737552300_n.jpg', '2017-05-22 00:05:02', NULL, '', '', '', '', '', 0, 'Vải Bỉ', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.', 'vai-bi', 'Vải Bỉ', NULL),
(124, 'Giấy Dán Tường', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', 0, 2, 'images_3_0.jpg', '2018-07-13 16:07:12', NULL, '', '', '', '', '', 0, 'Giấy Dán Tường', ' So sánh tuổi thọ của sơn thì giấy dán tường có độ bền không bằng nhưng giấy dán tường hàn quốc lại giúp bạn dễ dàng tạo được một không gian nhiều màu sắc, hình khối như mong muốn, thi công nhanh chóng.', 'giay-dan-tuong', 'Giấy Dán Tường', NULL),
(139, 'Máy ảnh, máy quay nikon', '', '', 0, 1, NULL, '2018-07-13 16:07:02', NULL, '', '', '', '', '', 1, 'Máy ảnh, máy quay nikon', '', 'may-anh-may-quay-nikon', '', 1),
(140, 'Máy ảnh, máy quay canon', '', '', 0, 0, NULL, '2018-07-13 16:07:39', NULL, '', '', '', '', '', 1, 'Máy ảnh, máy quay canon', '', 'may-anh-may-quay-canon', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(207, 111, 'Rèm điều khiển tự động', 'vn', '<p>&nbsp; L&agrave; sản phẩm c&oacute; xuất xứ từ Ph&aacute;p, d&agrave;nh ri&ecirc;ng cho kh&ocirc;ng gian nội thất, c&oacute; thể được lắp đặt tr&ecirc;n tất cả c&aacute;c loại m&agrave;nh, r&egrave;m trong, ngo&agrave;i nh&agrave;: r&egrave;m rủ, r&egrave;m roman, m&agrave;nh cầu vồng, m&agrave;nh cuốn... Cho ph&eacute;p bạn xếp h&agrave;ng tất cả c&aacute;c r&egrave;m của bạn ho&agrave;n hảo với 1 điều khiển từ xa.&nbsp;</p>\r\n', '<p>&nbsp; L&agrave; sản phẩm c&oacute; xuất xứ từ Ph&aacute;p, d&agrave;nh ri&ecirc;ng cho kh&ocirc;ng gian nội thất, c&oacute; thể được lắp đặt tr&ecirc;n tất cả c&aacute;c loại m&agrave;nh, r&egrave;m trong, ngo&agrave;i nh&agrave;: r&egrave;m rủ, r&egrave;m roman, m&agrave;nh cầu vồng, m&agrave;nh cuốn... Cho ph&eacute;p bạn xếp h&agrave;ng tất cả c&aacute;c r&egrave;m của bạn ho&agrave;n hảo với 1 điều khiển từ xa.&nbsp;</p>\r\n', '', '', '', '', '', 0, 'rem-dieu-khien-tu-dong', 'Rèm điều khiển tự động', 'Rèm điều khiển tự động', '  Là sản phẩm có xuất xứ từ Pháp, dành riêng cho không gian nội thất, có thể được lắp đặt trên tất cả các loại mành, rèm trong, ngoài nhà: rèm rủ, rèm roman, mành cầu vồng, mành cuốn... Cho phép bạn xếp hàng tất cả các rèm của bạn hoàn hảo với 1 điều khiển từ xa. '),
(208, 111, 'Rèm điều khiển tự động', 'en', '<p>&nbsp; L&agrave; sản phẩm c&oacute; xuất xứ từ Ph&aacute;p, d&agrave;nh ri&ecirc;ng cho kh&ocirc;ng gian nội thất, c&oacute; thể được lắp đặt tr&ecirc;n tất cả c&aacute;c loại m&agrave;nh, r&egrave;m trong, ngo&agrave;i nh&agrave;: r&egrave;m rủ, r&egrave;m roman, m&agrave;nh cầu vồng, m&agrave;nh cuốn... Cho ph&eacute;p bạn xếp h&agrave;ng tất cả c&aacute;c r&egrave;m của bạn ho&agrave;n hảo với 1 điều khiển từ xa.&nbsp;</p>\r\n', '<p>&nbsp; L&agrave; sản phẩm c&oacute; xuất xứ từ Ph&aacute;p, d&agrave;nh ri&ecirc;ng cho kh&ocirc;ng gian nội thất, c&oacute; thể được lắp đặt tr&ecirc;n tất cả c&aacute;c loại m&agrave;nh, r&egrave;m trong, ngo&agrave;i nh&agrave;: r&egrave;m rủ, r&egrave;m roman, m&agrave;nh cầu vồng, m&agrave;nh cuốn... Cho ph&eacute;p bạn xếp h&agrave;ng tất cả c&aacute;c r&egrave;m của bạn ho&agrave;n hảo với 1 điều khiển từ xa.&nbsp;</p>\r\n', '', '', '', '', '', 0, 'rem-dieu-khien-tu-dong', 'Rèm điều khiển tự động', 'Rèm điều khiển tự động', '  Là sản phẩm có xuất xứ từ Pháp, dành riêng cho không gian nội thất, có thể được lắp đặt trên tất cả các loại mành, rèm trong, ngoài nhà: rèm rủ, rèm roman, mành cầu vồng, mành cuốn... Cho phép bạn xếp hàng tất cả các rèm của bạn hoàn hảo với 1 điều khiển từ xa. '),
(213, 114, 'Rèm cổ điển', 'vn', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '', '', '', '', '', 0, 'rem-co-dien', 'Rèm cổ điển', 'Rèm cổ điển', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.'),
(214, 114, 'Rèm cổ điển', 'en', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '', '', '', '', '', 0, 'rem-co-dien', 'Rèm cổ điển', 'Rèm cổ điển', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.'),
(215, 115, 'Vải Thailand', 'vn', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '', '', '', '', '', 0, 'vai-thailand', 'Vải Thailand', 'Vải Thailand', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.'),
(216, 115, 'Vải Thailand', 'en', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '', '', '', '', '', 0, 'vai-thailand', 'Vải Thailand', 'Vải Thailand', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.'),
(217, 116, 'Vải Sunbrella', 'vn', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', '', '', '', '', '', 0, 'vai-sunbrella', 'Vải Sunbrella', 'Vải Sunbrella', 'Sunbrella là một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella – Mỹ. Vải Sunberlla được sản xuất trên dây truyền tiên tiến nhất,dưới đôi bàn tay của các kỹ sư lâu năm kinh nghiệm trong ngành sản xuất vải của Mỹ.Vải Sunbrella được làm từ 100% chất liệu acrylic, màu sắc của vải được nhuộm ngay từ công đoạn đầu tiên trong quy trình sản xuất ngay cả trước khi các sợi vải được hình thành lên.Chính vì vậy màu sắc của vải Sunbrella chịu được ánh sáng mặt trời và các điều kiện khắc nghiệt của thời tiết. '),
(218, 116, 'Vải Sunbrella', 'en', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', '<p>Sunbrella l&agrave; một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella &ndash; Mỹ. Vải Sunberlla được sản xuất tr&ecirc;n d&acirc;y truyền ti&ecirc;n tiến nhất,dưới đ&ocirc;i b&agrave;n tay của c&aacute;c kỹ sư l&acirc;u năm kinh nghiệm trong ng&agrave;nh sản xuất vải của Mỹ.Vải Sunbrella được l&agrave;m từ 100% chất liệu acrylic, m&agrave;u sắc của vải được nhuộm ngay từ c&ocirc;ng đoạn đầu ti&ecirc;n trong quy tr&igrave;nh sản xuất ngay cả trước khi c&aacute;c sợi vải được h&igrave;nh th&agrave;nh l&ecirc;n.Ch&iacute;nh v&igrave; vậy m&agrave;u sắc của vải Sunbrella chịu được &aacute;nh s&aacute;ng mặt trời v&agrave; c&aacute;c điều kiện khắc nghiệt&nbsp;của thời tiết.&nbsp;</p>\r\n', '', '', '', '', '', 0, 'vai-sunbrella', 'Vải Sunbrella', 'Vải Sunbrella', 'Sunbrella là một trong những sản phẩm về vải đứng đầu của thương hiệu sản xuất vải nổi tiếng Sunbrella – Mỹ. Vải Sunberlla được sản xuất trên dây truyền tiên tiến nhất,dưới đôi bàn tay của các kỹ sư lâu năm kinh nghiệm trong ngành sản xuất vải của Mỹ.Vải Sunbrella được làm từ 100% chất liệu acrylic, màu sắc của vải được nhuộm ngay từ công đoạn đầu tiên trong quy trình sản xuất ngay cả trước khi các sợi vải được hình thành lên.Chính vì vậy màu sắc của vải Sunbrella chịu được ánh sáng mặt trời và các điều kiện khắc nghiệt của thời tiết. '),
(223, 119, 'Vải Bỉ', 'vn', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '', '', '', '', '', 0, 'vai-bi', 'Vải Bỉ', 'Vải Bỉ', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.'),
(224, 119, 'Vải Bỉ', 'en', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '<p>Chiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.</p>\r\n', '', '', '', '', '', 0, 'vai-bi', 'Vải Bỉ', 'Vải Bỉ', 'Chiếc rèm cửa không chỉ đơn giản là vật chắn sáng hay tạo khoảng không riêng tư, nó còn tạo cho mỗi căn phòng một ấn tượng và cảm xúc khác nhau, tùy theo cách chọn lựa của chủ nhân.'),
(233, 124, 'Giấy Dán Tường', 'vn', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '', '', '', '', '', 0, 'giay-dan-tuong', 'Giấy Dán Tường', 'Giấy Dán Tường', ' So sánh tuổi thọ của sơn thì giấy dán tường có độ bền không bằng nhưng giấy dán tường hàn quốc lại giúp bạn dễ dàng tạo được một không gian nhiều màu sắc, hình khối như mong muốn, thi công nhanh chóng.'),
(234, 124, 'Giấy Dán Tường', 'en', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '', '', '', '', '', 0, 'giay-dan-tuong', 'Giấy Dán Tường', 'Giấy Dán Tường', ' So sánh tuổi thọ của sơn thì giấy dán tường có độ bền không bằng nhưng giấy dán tường hàn quốc lại giúp bạn dễ dàng tạo được một không gian nhiều màu sắc, hình khối như mong muốn, thi công nhanh chóng.'),
(263, 139, 'Máy ảnh, máy quay nikon', 'vn', '', '', '', '', '', '', '', 0, 'may-anh-may-quay-nikon', '', 'Máy ảnh, máy quay nikon', ''),
(264, 139, ' Tại sao chọn American Skills', 'en', '', '', '', '', '', '', '', 0, 'tai-sao-chon-american-skills', '', ' Tại sao chọn American Skills', ''),
(265, 140, 'Máy ảnh, máy quay canon', 'vn', '', '', '', '', '', '', '', 0, 'may-anh-may-quay-canon', '', 'Máy ảnh, máy quay canon', ''),
(266, 140, 'Kết quả học tập của bé', 'en', '', '', '', '', '', '', '', 0, 'ket-qua-hoc-tap-cua-be', '', 'Kết quả học tập của bé', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_catalogs_file`
--

CREATE TABLE `product_catalogs_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_catalogs_file`
--

INSERT INTO `product_catalogs_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(41, 27, 'vn', 'Rèm vải 01', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-01', 'Rèm vải 01', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(42, 27, 'en', 'Rèm vải 01', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-01', 'Rèm vải 01', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(43, 28, 'vn', 'Rèm vải 02', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '02', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-02', 'Rèm vải 02', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(44, 28, 'en', 'Rèm vải 02', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '02', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-02', 'Rèm vải 02', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(45, 29, 'vn', 'Rèm vải 03', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '03', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-03', 'Rèm vải 03', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(46, 29, 'en', 'Rèm vải 03', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '03', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-03', 'Rèm vải 03', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(47, 30, 'vn', 'Rèm vải 04', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-04', 'Rèm vải 04', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(48, 30, 'en', 'Rèm vải 04', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-04', 'Rèm vải 04', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải');
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(49, 31, 'vn', 'Rèm vải 05', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '05', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-05', 'Rèm vải 05', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(50, 31, 'en', 'Rèm vải 05', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '05', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-05', 'Rèm vải 05', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(51, 32, 'vn', 'Rèm vải 06', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-06', 'Rèm vải 06', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(52, 32, 'en', 'Rèm vải 06', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-06', 'Rèm vải 06', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(53, 33, 'vn', 'Rèm vải 07', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-07', 'Rèm vải 07', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(54, 33, 'en', 'Rèm vải 07', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-07', 'Rèm vải 07', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(55, 34, 'vn', 'Rèm vải 08', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-08', 'Rèm vải 08', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(56, 34, 'en', 'Rèm vải 08', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-08', 'Rèm vải 08', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải');
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(57, 35, 'vn', 'Rèm vải 09', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-09', 'Rèm vải 09', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(58, 35, 'en', 'Rèm vải 09', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-09', 'Rèm vải 09', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(59, 36, 'vn', 'Rèm vải 10', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-10', 'Rèm vải 10', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(60, 36, 'en', 'Rèm vải 10', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-10', 'Rèm vải 10', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(61, 37, 'vn', '4u-1', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-1', '4u-1', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-1'),
(62, 37, 'en', '4u-1', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-1', '4u-1', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-1'),
(63, 38, 'vn', '4u-2', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-2', '4u-2', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-2'),
(64, 38, 'en', '4u-2', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-2', '4u-2', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-2'),
(65, 39, 'vn', '4u-3', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-3', '4u-3', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-3'),
(66, 39, 'en', '4u-3', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-3', '4u-3', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-3'),
(67, 40, 'vn', '4u-4', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-4', '4u-4', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-4');
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(68, 40, 'en', '4u-4', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-4', '4u-4', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-4'),
(69, 41, 'vn', '4u-5', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-5', '4u-5', '4u-5 Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-5'),
(70, 41, 'en', '4u-5', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-5', '4u-5', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-5'),
(71, 42, 'vn', 'ANTRI GP', '<p>ANTRI GP gi&uacute;p khắc phục bệnh trĩ, suy tĩnh mạch trực tiếp, hiệu quả nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n\r\n<ul>\r\n	<li>Khắc phục nhanh c&aacute;c chứng trĩ cấp, m&atilde;n, đi cầu ra m&aacute;u, đau r&aacute;t, sa b&uacute;i trĩ</li>\r\n	<li>Chống suy tĩnh mạch, gi&atilde;n tĩnh mạch</li>\r\n	<li>An to&agrave;n khi sử dụng, c&oacute; thể sử dụng được cho phụ nữ trong sau sinh, c&oacute; thể sử dụng l&acirc;u d&agrave;i ph&ograve;ng bệnh suy tĩnh mạch.</li>\r\n	<li>Sản phẩm được c&aacute;c b&aacute;c sĩ, dược si khuy&ecirc;n d&ugrave;ng cho bệnh nh&acirc;n trĩ, suy tĩnh mạch.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức tối ưu</h2>\r\n\r\n<p>C&ocirc;ng thức của ANTRI GP l&agrave; nghi&ecirc;n cứu của c&aacute;c Dược sĩ đại học Dược H&agrave; Nội, kết hợp giữa tinh chất Diosmin nhập khẩu từ Ph&aacute;p, rutin v&agrave; c&aacute;c thảo dược thi&ecirc;n nhi&ecirc;n đặc hiệu cho bệnh trĩ, tăng cường bền vũng th&agrave;nh mạch m&aacute;u, giảm ph&ugrave; nề b&uacute;i trĩ, hết đau r&aacute;t chảy m&aacute;u nhanh, th&uacute;c đẩy qu&aacute; tr&igrave;nh co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p c&aacute;c th&agrave;nh mạch m&aacute;u bền vững hơn, th&uacute;c đẩy qu&aacute; tr&igrave;nh giảm ph&ugrave; nề, đau r&aacute;t b&uacute;i trĩ, đi cầu ra m&aacute;u v&agrave; co b&uacute;i trĩ nhanh nhất.<br />\r\nGiảm hết t&aacute;o b&oacute;n, ổn định bệnh trĩ, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nTr&aacute;nh xơ vữa, suy tĩnh mạch, gi&atilde;n tĩnh mạch.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/menu4_1.jpg\" /></p>\r\n\r\n<h2>2.C&ocirc;ng dụng của ANTRI GP</h2>\r\n\r\n<p>ANTRI GP gi&uacute;p giảm phề, đau r&aacute;t, chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p khắc phục c&aacute;c chứng trĩ cấp, m&atilde;n, t&aacute;o b&oacute;n, đau r&aacute;t, đi cầu ra m&aacute;u.<br />\r\nBền vững th&agrave;nh mạch, chống suy tĩnh mạch, gi&atilde;n tĩnh mạch, xơ vữa mạch m&aacute;u, xuất huyết dưới da.</p>\r\n\r\n<h2>3.Th&agrave;nh phần</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Diosmin</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rutin</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao diếp c&aacute;</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MgO</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin C</td>\r\n			<td>30mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>1mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>15mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kem Gluconate</td>\r\n			<td>70mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>T&aacute; dược vừa đủ 01 vi&ecirc;n bao phim tan trong ruột.</td>\r\n					</tr>\r\n					<tr>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng ANTRI GP:</h2>\r\n\r\n<p>Uống 04 vi&ecirc;n/ ng&agrave;y/ 02 lần, trước hoặc trong bữa ăn.<br />\r\n- C&oacute; thể d&ugrave;ng 06 vi&ecirc;n/ng&agrave;y/02 lần, trong trường hợp trĩ cấp, chảy m&aacute;u nhiều, đau r&aacute;t nhiều.<br />\r\n- C&oacute; thể d&ugrave;ng h&agrave;ng ng&agrave;y, ph&ograve;ng bệnh trĩ t&aacute;i ph&aacute;t v&agrave; chống suy tĩnh mạch, xơ vữa mạch m&aacute;u.</p>\r\n\r\n<p><a href=\"#\"><img alt=\"\" src=\"/image/menu4_2.jpg\" /></a></p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>C&aacute;c kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng Diosmin tr&ecirc;n thế giới từ 1950- 2011 cho thấy:<br />\r\nTr&ecirc;n tổng 2344 người bị bệnh trĩ v&agrave; suy tĩnh mạch, gi&atilde;n tĩnh mạch:<br />\r\n- 95% số người bị bệnh trĩ kiểm so&aacute;t t&igrave;nh trạng đi cầu ra m&aacute;u, đau r&aacute;t ở bệnh trĩ.<br />\r\n- Ngo&agrave;i ra, c&aacute;c bằng chứng khi nghi&ecirc;n cứu, Diosmin c&oacute; lợi rất lớn cho bệnh nh&acirc;n suy tĩnh mạch, nguy cơ suy tĩnh mạch v&agrave; xuất huyết dưới da.<br />\r\n- Theo th&ocirc;ng k&ecirc; từ 9/2015 đến 1/2017 tr&ecirc;n 3257 b&ecirc;nh nh&acirc;n trĩ tại H&agrave; Nội, TPHCM v&agrave; 1 số tỉnh miền bắc sử dụng ANTRI GP:<br />\r\n73% số người bị bệnh trĩ giảm hẳn đau r&aacute;t v&agrave; đi cầu ra m&aacute;u sau 03 ng&agrave;y sử dụng.<br />\r\n96% bệnh nh&acirc;n bị bệnh trĩ hết đau r&aacute;t, đi cầu ra m&aacute;u sau 07 ng&agrave;y sử dụng.<br />\r\n84% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 07 ng&agrave;y sử dụng v&agrave; 95% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 14 ng&agrave;y sử dụng.<br />\r\n87.3% kh&aacute;ch h&agrave;ng sử dụng đủ liệu tr&igrave;nh 08 hộp, kh&ocirc;ng t&aacute;i ph&aacute;t lại sau 01 năm.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm!- Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa ANTRI GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>ANTRI GP khắc phục bệnh trĩ tận gốc dựa tr&ecirc;n cơ chế r&otilde; r&agrave;ng của nền y học hiện đại.<br />\r\nCơ chế t&aacute;c dụng hiệp đồng, vừa l&agrave;m hết ph&ugrave; nề b&uacute;i trĩ, vừa khắc phục tận gốc nguy&ecirc;n nh&acirc;n g&acirc;y ra bệnh trĩ.<br />\r\n+ Hết ph&ugrave; nề b&uacute;i trĩ, l&agrave;m hết đau r&aacute;t chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, bền vững hơn.<br />\r\n+ Hết t&aacute;o b&oacute;n, ngăn ngừa bệnh trĩ quay trở lại.<br />\r\nNguy&ecirc;n liệu Diosmin trong ANTRI GP, dạng micronized, hạt si&ecirc;u nhỏ, 5um. Bằng 1/20 kich thước hạt Diosmin th&ocirc;ng thường. gi&uacute;p dễ d&agrave;ng hấp thu hơn nhiều lần. nhập khẩu từ ph&aacute;p.<br />\r\nKh&aacute;c với sản phẩm trĩ c&ugrave;ng d&ograve;ng kh&aacute;c, mất nhiều thời gian để thấy t&aacute;c dụng. ANTRI GP cho t&aacute;c dụng nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img alt=\"\" src=\"/image/giayCN.jpg\" /> <img alt=\"\" src=\"/image/formImgCate.jpg\" /></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'antri-gp', 'ANTRI GP', '', ''),
(72, 42, 'en', 'ANTRI GP', 'fgdfgdg', '', '', '<p>xdgvzxvxc</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'antri-gp', 'ANTRI GP', '', ''),
(73, 43, 'vn', 'HOẠT HUYẾT GP', '<p>HOẠT HUYẾT GP  là sản phẩm giành riêng cho bệnh nhân tiền đình & căng thẳng mất ngủ. Ngoài ra HOẠT HUYẾT GP hỗ trợ tăng cường tuần hoàn máu não, chống thiểu năng tuần hoàn máu não.<br /></p>\r\n\r\n                                    <ul>\r\n\r\n<li>Khắc phục nhanh các chứng đau đầu, chóng mặt buồn nôn, căng thẳng mất ngủ, ngủ không  ngon.</li>\r\n<li>Sản phẩm an toàn với người sử dụng,  dùng được hàng ngày để dưỡng não, ngủ sâu giấc hơn. Phòng bệnh tiền đình quay trở lại.</li>\r\n<li>Được các bác sĩ khuyên dùng cho bệnh nhân tiền đình, căng thẳng rối loan giấc ngủ và tăng cường tuần hoàn máu não.</li>\r\n\r\n\r\n</ul>', '', '', '<h2>1.C&ocirc;ng thức b&agrave;o chế tối ưu</h2>\r\n\r\n<p>HOẠT HUY&Ecirc;T GP l&agrave; sản phẩm được b&agrave;o chế tối ưu cho bệnh nh&acirc;n bị tiền đ&igrave;nh &amp; mất ngủ, stress.<br />\r\nVới Gingko biloba, Cao từ củ đinh lăng h&agrave;m lượng cao sẽ tối đa qu&aacute; tr&igrave;nh đưa m&aacute;u l&ecirc;n n&atilde;o, tăng tuần ho&agrave;n m&aacute;u n&atilde;o, cung cấp đủ oxy cho n&atilde;o hoạt động.<br />\r\nVới Cinnarizin/ Mg-B6: gi&uacute;p giảm căng thẳng, ngủ s&acirc;u giấc hơn. đặc biệt cinnarizin t&aacute;c dụng trực tiếp l&ecirc;n tuyến tiền đ&igrave;nh, gi&uacute;p khắc phục nhanh ch&oacute;ng bệnh tiền đ&igrave;nh, đau đầu ch&oacute;ng mặt, &ugrave; tai.</p>\r\n\r\n<h2>2.Th&agrave;nh phần của HOẠT HUYẾT GP</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Gingko biloba</td>\r\n			<td>250mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao Đinh Lăng</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cinnarizine</td>\r\n			<td>25mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Magie gluconate</td>\r\n			<td>30mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B6</td>\r\n			<td>10mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>2mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B12</td>\r\n			<td>50mcg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>3.C&ocirc;ng dụng của HOẠT HUYẾT GP</h2>\r\n\r\n<p>Gi&uacute;p tăng cường tuần ho&agrave;n m&aacute;u n&atilde;o, chống thiểu năng tuần ho&agrave;n m&aacute;u n&atilde;o, rối loạn tuần ho&agrave;n m&aacute;u n&atilde;o.<br />\r\nKhắc phục bệnh tiền đ&igrave;nh, đau đầu ch&oacute;ng mặt &ugrave; tai, buồn n&ocirc;n.<br />\r\nGiảm căng thẳng mệt mỏi, ngủ ngon hơn, s&acirc;u hơn.</p>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng HOẠT HUYẾT GP:</h2>\r\n\r\n<p>Trước khi sử dụng HOẠT HUYẾT GP hay bất kỳ d&ograve;ng sản phẩm c&oacute; t&aacute;c dụng tăng tuần ho&agrave;n m&aacute;u n&atilde;o th&igrave; qu&yacute; kh&aacute;ch n&ecirc;n kiểm tra lại huyết &aacute;p của m&igrave;nh. Kh&ocirc;ng được sử dụng mọi sản phẩm c&oacute; t&aacute;c dụng tăng cường tuần ho&agrave;n n&atilde;o khi huyết &aacute;p của qu&yacute; kh&aacute;ch đang tăng tr&ecirc;n 150/90 mmHg.<br />\r\nLiều d&ugrave;ng HOẠT HUYẾT GP:<br />\r\n- Đang ch&oacute;ng mặt &ugrave; tai: 03 vi&ecirc;n/ ng&agrave;y/ 2 lần.<br />\r\n- D&ugrave;ng h&agrave;ng ng&agrave;y, duy tr&igrave; 02 vi&ecirc;n/ng&agrave;y/2 lần.</p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>93% người sử dụng ngủ ngon hơn, s&acirc;u hơn sau 03 ng&agrave;y sử dụng.<br />\r\n95% người sử dụng hết ch&oacute;ng mặt &ugrave; tai, l&acirc;ng l&acirc;ng, đau đầu.<br />\r\n83% người bị vi&ecirc;m đại tr&agrave;ng cấp, m&atilde;n ổn định tr&ecirc;n 06 th&aacute;ng sau khi d&ugrave;ng đủ 02 th&aacute;ng.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm DP GREEN-PHAR - Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa ĐẠI TR&Agrave;NG GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>Gingko biloba/ Cinnarizin: 250/25mg, khắc phục bệnh tiền đ&igrave;nh nhanh ch&oacute;ng, sau 02- 04 vi&ecirc;n.<br />\r\nHOẠT HUYẾT GP kh&ocirc;ng chỉ l&agrave; sản phẩm hoạt huyết, tăng cường m&aacute;u n&atilde;o. HOẠT HUYẾT GP l&agrave; sản phẩm chuy&ecirc;n gi&agrave;nh cho b&ecirc;nh nh&acirc;n tiền đ&igrave;nh &amp; căng thẳng mất ngủ.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img src=\"/image/CN_hoathuyetGP.jpg\" /> <img src=\"/image/formImgCate_5.jpg\" /></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hoat-huyet-gp', 'HOẠT HUYẾT GP', '', ''),
(74, 43, 'en', 'HOẠT HUYẾT GP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hoat-huyet-gp', 'HOẠT HUYẾT GP', '', ''),
(75, 44, 'vn', 'BOGAN GP', '<p>Giải ph&aacute;p cho bệnh về men gan v&agrave; mụn nhọt mẩn ngứa. t&aacute;c động theo 03 cơ chế thải độc ch&iacute;nh của gan.</p>\r\n\r\n<ul>\r\n	<li>Hạ men gan sau 01 th&aacute;ng sử dung, dựa tr&ecirc;n 03 cơ chế t&aacute;c dụng</li>\r\n	<li>Hết mụn nhọt, mụn lưng sau 06 tuần.</li>\r\n	<li>Bảo vệ tế b&agrave;o gan khỏi c&aacute;c chất độc, kh&ocirc;ng bị ph&aacute; hủy. Tăng cường chức năng gan, thanh nhiệt, giải độc.</li>\r\n	<li>Sản phẩm n&agrave;y an to&agrave;n, c&oacute; thể d&ugrave;ng h&agrave;ng ng&agrave;y để gan lu&ocirc;n khỏe mạnh.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức b&agrave;o chế tối ưu</h2>\r\n\r\n<p>C&ocirc;ng thức b&agrave;o chế của BOGAN GP, tối ưu h&oacute;a qu&aacute; tr&igrave;nh đ&agrave;o thải độc tố khỏi cơ thể tại gan v&agrave; bảo vệ tế b&agrave;o gan. C&ocirc;ng thức BOGAN GP c&oacute; 03 cơ chế t&aacute;c động l&ecirc;n qu&aacute; tr&igrave;nh thải độc tại gan<br />\r\nT&aacute;c động trực tiếp l&ecirc;n chu tr&igrave;nh chuyển h&oacute;a ure, tăng cường đ&agrave;o thải độc tố v&agrave; men gan: L-Arginine h&agrave;m lượng cao, Methionin, L- Ornithin.<br />\r\nT&aacute;c động v&agrave;o Cytochrom P450 năm tại ty thể b&ecirc;n trong tế b&agrave;o gan, gi&uacute;p bảo vệ tế b&agrave;o gan, ổn định m&agrave;ng tế b&agrave;o tr&aacute;nh tế b&agrave;o gan bị ph&aacute; hủy v&agrave; k&iacute;ch th&iacute;ch tế b&agrave;o gan hoạt động, đ&agrave;o thải độc tố: Silymarine.<br />\r\nC&aacute;c thảo dược qu&yacute; từ thi&ecirc;n nhi&ecirc;n, m&aacute;t gan, lợi mật. Đặc biệt Kim Ng&acirc;n Hoa, mệnh danh l&agrave; vua thanh nhiệt l&agrave;m hết mụn nhọt, mẩn ngứa: Diệp hạ ch&acirc;u đắng, Kim ng&acirc;n hoa.</p>\r\n\r\n<h2>2.Th&agrave;nh phần của 01 vi&ecirc;n BOGAN GP</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>L-Arginine</td>\r\n			<td>400mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Methionin</td>\r\n			<td>50mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L-Ornithin</td>\r\n			<td>50mg (T&aacute;c động trực tiếp chu tr&igrave;nh Ure tại gan)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Silymarine</td>\r\n			<td>100mg ( T&aacute;c động v&agrave;o Cytochrom P450)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Diệp hạ ch&acirc;u đắng</td>\r\n			<td>250mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kim Ng&acirc;n Hoa</td>\r\n			<td>300mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>15mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B2</td>\r\n			<td>1.5 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>Phụ liệu vừa đủ 01 vi&ecirc;n n&eacute;n bao phim.</td>\r\n					</tr>\r\n					<tr>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>3.C&ocirc;ng dụng của BOGAN GP</h2>\r\n\r\n<p>Gi&uacute;p thanh nhiệt, giải độc, m&aacute;t cơ thể.<br />\r\nTăng cường chức năng gan, thải độc gan. bảo vệ tế b&agrave;o gan trong c&aacute;c trường hợp: vi&ecirc;m gan, men gan cao, rối loạn chức năng gan, gan nhiễm mỡ, uống rượu bia nhiều, d&ugrave;ng thuốc, h&oacute;a chất nhiều.<br />\r\nNgười c&oacute; chức năng gan suy giảm, rượu bia, thuốc hay người cao tuổi bị l&atilde;o h&oacute;a dẫn đến mụn nhọt mẩn ngứa, ăn uống kh&oacute; ti&ecirc;u n&ecirc;n d&ugrave;ng.</p>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng BOGAN GP:</h2>\r\n\r\n<p>Trẻ em: 1- 2 vi&ecirc;n/ng&agrave;y/ 1- 2 lần/ sau ăn trước ăn đều được<br />\r\nNgười lớn: men gan cao: 3- 4 vi&ecirc;n/ ng&agrave;y/ 2 lần. Uống thải độc, tăng cường chức năng gan: 02 vi&ecirc;n/ng&agrave;y/ 2 lần.</p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>100% người thử nghiệm hạ men gan sau 01 th&aacute;ng. Đối tượng thử nghiệm người tăng men gan do rượu bia, v&agrave; suy giảm chức năng gan do qu&aacute; tr&igrave;nh sinh hoạt.<br />\r\n96% Người bị mụn nhọt, mụn lưng hết hẳn sau 06 tuần sử dụng sản phẩm.<br />\r\nNgười bị vi&ecirc;m gan B, vi&ecirc;m gan, xơ gan do rượu cũng c&oacute; kết quả khả quan, men gan kh&ocirc;ng tăng. Nh&oacute;m thử nghiệm kết hợp thuốc điều trị nguy&ecirc;n nh&acirc;n ( thuốc ức chế virus vi&ecirc;m gan B, C v&agrave; ngừng uống rượu ) men gan giảm mạnh.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm DP GREEN-PHAR - Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa BOGAN GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>C&ocirc;ng thức b&agrave;o chế BOGAN GP c&oacute; t&aacute;c dụng tối ưu trong việc đ&agrave;o thải độc tố khỏi gan dựa tr&ecirc;n 03 cơ chế. Vừa tăng đ&agrave;o thải vừa bảo vệ tế b&agrave;o gan kh&ocirc;ng bị ph&aacute; hủy.<br />\r\nH&agrave;m lượng hoạt chất v&agrave; chất lượng nguy&ecirc;n liệu vượt trội so với c&aacute;c sản phẩm kh&aacute;c.<br />\r\nCh&uacute;ng t&ocirc;i cam kết ho&agrave;n tiền 100% cho qu&yacute; kh&aacute;ch nếu men gan kh&ocirc;ng hạ sau 01 th&aacute;ng, kh&ocirc;ng hết mụn lưng sau 06 tuần sử dụng.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img alt=\"\" src=\"/image/CN_boganGP.jpg\" /> <img alt=\"\" src=\"/image/formImgCate_2.jpg\" /></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'bogan-gp', 'BOGAN GP', '', ''),
(76, 44, 'en', 'BOGAN GP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'bogan-gp', 'BOGAN GP', '', ''),
(77, 45, 'vn', 'Calcimom GP', '<p>CALCIMOM HỮU CƠ GP bổ sung calci cho người c&oacute; nguy cơ thiếu calci.</p>\r\n\r\n<ul>\r\n	<li>Calci dạng hữu cơ, dễ hấp thu, kh&ocirc;ng lắng đọng tạo sỏi.</li>\r\n	<li>C&ocirc;ng thức b&agrave;o chế tối ưu, khắc phục nhanh c&aacute;c hiện tượng thiếu calci, chuột r&uacute;t, đau mỏi ch&acirc;n tay, mỏi h&ocirc;ng, lo&atilde;ng xương&hellip;.v&hellip;v</li>\r\n	<li>Sản phẩm được c&aacute;c b&aacute;c si khuy&ecirc;n d&ugrave;ng cho phụ nữ mang thai, cho con b&uacute;, người gi&agrave; c&oacute; nguy cơ lo&atilde;ng xương, trẻ em, thanh thi&ecirc;u ni&ecirc;n đang ph&aacute;t triển.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức b&agrave;o chế tối ưu</h2>\r\n\r\n<p>CALCIMOM HỮU CƠ GP được b&agrave;o chế để tối ưu h&oacute;a qu&aacute; tr&igrave;nh hấp thu v&agrave; cấu tạo n&ecirc;n xương. Qu&aacute; tr&igrave;nh hấp thu calci trải qua 02 giai đoạn:<br />\r\nCalci từ ruột v&agrave;o m&aacute;u: Giai đoạn n&agrave;y phụ thuộc nồng độ calci v&agrave; vitamin D3.<br />\r\nCalci từ m&aacute;u v&agrave;o xương, cấu tạo n&ecirc;n xương: Giai đoạn n&agrave;y phụ thuộc Ca++, Mg++ v&agrave; phospho.. l&agrave; những th&agrave;nh phần ch&iacute;nh cấu tạo n&ecirc;n xương<br />\r\nCALCIMOM HỮU CƠ GP chứa c&aacute;c th&agrave;nh phần Ca++, Mg++, phospho v&agrave; Vitamin D3 h&agrave;m lượng cao v&agrave; giải ph&oacute;ng dần dần, gi&uacute;p hấp thu tối đa v&agrave;o m&aacute;u, tham gia v&agrave;o qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh n&ecirc;n xương bền vững hơn. Nguy&ecirc;n liệu sử dụng l&agrave; Calci hữu cơ, hạn chế tối đa qu&aacute; tr&igrave;nh lắng đọng g&acirc;y sỏi thận, t&aacute;o b&oacute;n, n&oacute;ng g&acirc;y mụn nhọt.</p>\r\n\r\n<h2>2.Th&agrave;nh phần của CALCIMOM HỮU CƠ GP</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Calci dihdrophosphat anhydrous</td>\r\n			<td>800mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Calci gluconate</td>\r\n			<td>400mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Magie gluconate</td>\r\n			<td>120mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin D3</td>\r\n			<td>250UI</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>Phụ liệu vừa đủ 01 vi&ecirc;n n&eacute;n bao phim.</td>\r\n					</tr>\r\n					<tr>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>3.C&ocirc;ng dụng của CALCIMOM HỮU CƠ GP</h2>\r\n\r\n<p>Bổ sung calci cho người c&oacute; nguy cơ thiếu calci: Người gi&agrave;, bệnh lo&atilde;ng xương, Phụ nữ mang thai. Thanh thiếu ni&ecirc;n đang ph&aacute;t triển chiều cao.<br />\r\nGiảm nhanh c&aacute;c triệu chứng do thiếu calci như: đau mỏi xương khớp, đau mỏi h&ocirc;ng, chuột r&uacute;t. V&atilde; mồ h&ocirc;i trộm, bồn chồn, hồi hộp lo lắng v&ocirc; cớ.</p>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng BABY CALCIMOM HỮU CƠ GP:</h2>\r\n\r\n<p>Uống 01 vi&ecirc;n/ ng&agrave;y/ s&aacute;ng.<br />\r\nKhi thiếu nhiều, hay cần nhiều calci c&oacute; thể uống 2 vi&ecirc;n/ ng&agrave;y/ 01 lần s&aacute;ng. ( phụ nữ mang bầu, lo&atilde;ng xương&hellip;v.v..v).</p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>100% b&agrave; bầu sử dụng hết chuột r&uacute;t sau 15 ng&agrave;y sử dụng sản phẩm, mỏi h&ocirc;ng giảm mạnh. nồng độ Calci huyết ổn định.<br />\r\nMật độ xương tăng 10.3% sau 03 th&aacute;ng sử dụng.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm DP GREEN-PHAR - Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa CALCIMOM HỮU CƠ GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>H&agrave;m lượng calci nguy&ecirc;n tố trong CALCIMOM HỮU CƠ GP l&agrave; 550mg Ca++, cao hơn nhiều so với c&aacute;c sản phẩm kh&aacute;c.<br />\r\nC&ocirc;ng thức b&agrave;o chế tối ưu, hấp thu tốt v&agrave; tham gia v&agrave;o h&igrave;nh th&agrave;nh xương nhanh hơn.<br />\r\nCh&uacute;ng t&ocirc;i cam kết ho&agrave;n tiền 100%, sau 15 ng&agrave;y sử dụng kh&ocirc;ng hết chuột r&uacute;t.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img alt=\"\" src=\"/image/CN_calcimomGP.jpg\" /> <img alt=\"\" src=\"/image/formImgCate_3.jpg\" /></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'calcimom-gp', 'Calcimom GP', '', ''),
(78, 45, 'en', 'Calcimom GP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'calcimom-gp', 'Calcimom GP', '', ''),
(79, 46, 'vn', ' Bé Khánh Linh 5 tuổi (MS: 002)', '<p>B&eacute; Kh&aacute;nh Linh rất xinh g&aacute;i, dễ thương ahihi&nbsp;</p>\r\n', '', '', '<h2>Bảng kết quả học tập của b&eacute; Kh&aacute;nh Linh</h2>\r\n\r\n<h2 style=\"text-align:center\"><img alt=\"\" height=\"390\" src=\"/image/images/americanskills/1462789727-sao-nhi--5-_2mhft5s9bj727.jpg\" width=\"600\" /></h2>\r\n\r\n<p>Đề nghị gia đ&igrave;nh k&egrave;m cặp em nhiều hơn trong việc học tập.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'be-khanh-linh-5-tuoi-ms-002', ' Bé Khánh Linh 5 tuổi (MS: 002)', '', ''),
(80, 46, 'en', 'DAITRANG GP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'daitrang-gp', 'DAITRANG GP', '', ''),
(81, 47, 'vn', ' Bé Gia Bảo 9 tuổi (MS: 001)', '<p>B&eacute; Bảo &quot;Ngậu&quot; rất giỏi aaaaha haaaaaaaaaaaaa</p>\r\n', '', '', '<h3>Bảng điểm b&eacute; Gia Bảo</h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"501\" src=\"/image/images/americanskills/xem_b_ng__i_m_chi_ti_t_c_a_h_c_sinh.png\" width=\"617\" /></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'be-gia-bao-9-tuoi-ms-001', ' Bé Gia Bảo 9 tuổi (MS: 001)', '', ''),
(82, 47, 'en', 'BABY GP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'baby-gp', 'BABY GP', '', ''),
(83, 48, 'vn', 'ANTRI GP (HỘP TO)', '<p>ANTRI GP gi&uacute;p khắc phục bệnh trĩ, suy tĩnh mạch trực tiếp, hiệu quả nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n\r\n<ul>\r\n	<li>Khắc phục nhanh c&aacute;c chứng trĩ cấp, m&atilde;n, đi cầu ra m&aacute;u, đau r&aacute;t, sa b&uacute;i trĩ</li>\r\n	<li>Chống suy tĩnh mạch, gi&atilde;n tĩnh mạch</li>\r\n	<li>An to&agrave;n khi sử dụng, c&oacute; thể sử dụng được cho phụ nữ trong sau sinh, c&oacute; thể sử dụng l&acirc;u d&agrave;i ph&ograve;ng bệnh suy tĩnh mạch.</li>\r\n	<li>Sản phẩm được c&aacute;c b&aacute;c sĩ, dược si khuy&ecirc;n d&ugrave;ng cho bệnh nh&acirc;n trĩ, suy tĩnh mạch.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức tối ưu</h2>\r\n\r\n<p>C&ocirc;ng thức của ANTRI GP l&agrave; nghi&ecirc;n cứu của c&aacute;c Dược sĩ đại học Dược H&agrave; Nội, kết hợp giữa tinh chất Diosmin nhập khẩu từ Ph&aacute;p, rutin v&agrave; c&aacute;c thảo dược thi&ecirc;n nhi&ecirc;n đặc hiệu cho bệnh trĩ, tăng cường bền vũng th&agrave;nh mạch m&aacute;u, giảm ph&ugrave; nề b&uacute;i trĩ, hết đau r&aacute;t chảy m&aacute;u nhanh, th&uacute;c đẩy qu&aacute; tr&igrave;nh co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p c&aacute;c th&agrave;nh mạch m&aacute;u bền vững hơn, th&uacute;c đẩy qu&aacute; tr&igrave;nh giảm ph&ugrave; nề, đau r&aacute;t b&uacute;i trĩ, đi cầu ra m&aacute;u v&agrave; co b&uacute;i trĩ nhanh nhất.<br />\r\nGiảm hết t&aacute;o b&oacute;n, ổn định bệnh trĩ, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nTr&aacute;nh xơ vữa, suy tĩnh mạch, gi&atilde;n tĩnh mạch.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/menu4_1.jpg\" /></p>\r\n\r\n<h2>2.C&ocirc;ng dụng của ANTRI GP</h2>\r\n\r\n<p>ANTRI GP gi&uacute;p giảm phề, đau r&aacute;t, chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p khắc phục c&aacute;c chứng trĩ cấp, m&atilde;n, t&aacute;o b&oacute;n, đau r&aacute;t, đi cầu ra m&aacute;u.<br />\r\nBền vững th&agrave;nh mạch, chống suy tĩnh mạch, gi&atilde;n tĩnh mạch, xơ vữa mạch m&aacute;u, xuất huyết dưới da.</p>\r\n\r\n<h2>3.Th&agrave;nh phần</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Diosmin</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rutin</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao diếp c&aacute;</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MgO</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin C</td>\r\n			<td>30mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>1mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>15mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kem Gluconate</td>\r\n			<td>70mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>T&aacute; dược vừa đủ 01 vi&ecirc;n bao phim tan trong ruột.</td>\r\n					</tr>\r\n					<tr>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng ANTRI GP:</h2>\r\n\r\n<p>Uống 04 vi&ecirc;n/ ng&agrave;y/ 02 lần, trước hoặc trong bữa ăn.<br />\r\n- C&oacute; thể d&ugrave;ng 06 vi&ecirc;n/ng&agrave;y/02 lần, trong trường hợp trĩ cấp, chảy m&aacute;u nhiều, đau r&aacute;t nhiều.<br />\r\n- C&oacute; thể d&ugrave;ng h&agrave;ng ng&agrave;y, ph&ograve;ng bệnh trĩ t&aacute;i ph&aacute;t v&agrave; chống suy tĩnh mạch, xơ vữa mạch m&aacute;u.</p>\r\n\r\n<p><a href=\"#\"><img alt=\"\" src=\"/image/menu4_2.jpg\" /></a></p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>C&aacute;c kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng Diosmin tr&ecirc;n thế giới từ 1950- 2011 cho thấy:<br />\r\nTr&ecirc;n tổng 2344 người bị bệnh trĩ v&agrave; suy tĩnh mạch, gi&atilde;n tĩnh mạch:<br />\r\n- 95% số người bị bệnh trĩ kiểm so&aacute;t t&igrave;nh trạng đi cầu ra m&aacute;u, đau r&aacute;t ở bệnh trĩ.<br />\r\n- Ngo&agrave;i ra, c&aacute;c bằng chứng khi nghi&ecirc;n cứu, Diosmin c&oacute; lợi rất lớn cho bệnh nh&acirc;n suy tĩnh mạch, nguy cơ suy tĩnh mạch v&agrave; xuất huyết dưới da.<br />\r\n- Theo th&ocirc;ng k&ecirc; từ 9/2015 đến 1/2017 tr&ecirc;n 3257 b&ecirc;nh nh&acirc;n trĩ tại H&agrave; Nội, TPHCM v&agrave; 1 số tỉnh miền bắc sử dụng ANTRI GP:<br />\r\n73% số người bị bệnh trĩ giảm hẳn đau r&aacute;t v&agrave; đi cầu ra m&aacute;u sau 03 ng&agrave;y sử dụng.<br />\r\n96% bệnh nh&acirc;n bị bệnh trĩ hết đau r&aacute;t, đi cầu ra m&aacute;u sau 07 ng&agrave;y sử dụng.<br />\r\n84% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 07 ng&agrave;y sử dụng v&agrave; 95% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 14 ng&agrave;y sử dụng.<br />\r\n87.3% kh&aacute;ch h&agrave;ng sử dụng đủ liệu tr&igrave;nh 08 hộp, kh&ocirc;ng t&aacute;i ph&aacute;t lại sau 01 năm.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm!- Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa ANTRI GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>ANTRI GP khắc phục bệnh trĩ tận gốc dựa tr&ecirc;n cơ chế r&otilde; r&agrave;ng của nền y học hiện đại.<br />\r\nCơ chế t&aacute;c dụng hiệp đồng, vừa l&agrave;m hết ph&ugrave; nề b&uacute;i trĩ, vừa khắc phục tận gốc nguy&ecirc;n nh&acirc;n g&acirc;y ra bệnh trĩ.<br />\r\n+ Hết ph&ugrave; nề b&uacute;i trĩ, l&agrave;m hết đau r&aacute;t chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, bền vững hơn.<br />\r\n+ Hết t&aacute;o b&oacute;n, ngăn ngừa bệnh trĩ quay trở lại.<br />\r\nNguy&ecirc;n liệu Diosmin trong ANTRI GP, dạng micronized, hạt si&ecirc;u nhỏ, 5um. Bằng 1/20 kich thước hạt Diosmin th&ocirc;ng thường. gi&uacute;p dễ d&agrave;ng hấp thu hơn nhiều lần. nhập khẩu từ ph&aacute;p.<br />\r\nKh&aacute;c với sản phẩm trĩ c&ugrave;ng d&ograve;ng kh&aacute;c, mất nhiều thời gian để thấy t&aacute;c dụng. ANTRI GP cho t&aacute;c dụng nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img alt=\"\" src=\"/image/giayCN.jpg\" /> <img alt=\"\" src=\"/image/formImgCate.jpg\" /></p>\r\n', '', '', 'FNP1127US20GS120 (0100-16320)', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'antri-gp-hop-to', 'ANTRI GP (HỘP TO)', '', ''),
(84, 48, 'en', 'ANTRI GP (HỘP TO)', '<p>ANTRI GP gi&uacute;p khắc phục bệnh trĩ, suy tĩnh mạch trực tiếp, hiệu quả nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n\r\n<ul>\r\n	<li>Khắc phục nhanh c&aacute;c chứng trĩ cấp, m&atilde;n, đi cầu ra m&aacute;u, đau r&aacute;t, sa b&uacute;i trĩ</li>\r\n	<li>Chống suy tĩnh mạch, gi&atilde;n tĩnh mạch</li>\r\n	<li>An to&agrave;n khi sử dụng, c&oacute; thể sử dụng được cho phụ nữ trong sau sinh, c&oacute; thể sử dụng l&acirc;u d&agrave;i ph&ograve;ng bệnh suy tĩnh mạch.</li>\r\n	<li>Sản phẩm được c&aacute;c b&aacute;c sĩ, dược si khuy&ecirc;n d&ugrave;ng cho bệnh nh&acirc;n trĩ, suy tĩnh mạch.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức tối ưu</h2>\r\n\r\n<p>C&ocirc;ng thức của ANTRI GP l&agrave; nghi&ecirc;n cứu của c&aacute;c Dược sĩ đại học Dược H&agrave; Nội, kết hợp giữa tinh chất Diosmin nhập khẩu từ Ph&aacute;p, rutin v&agrave; c&aacute;c thảo dược thi&ecirc;n nhi&ecirc;n đặc hiệu cho bệnh trĩ, tăng cường bền vũng th&agrave;nh mạch m&aacute;u, giảm ph&ugrave; nề b&uacute;i trĩ, hết đau r&aacute;t chảy m&aacute;u nhanh, th&uacute;c đẩy qu&aacute; tr&igrave;nh co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p c&aacute;c th&agrave;nh mạch m&aacute;u bền vững hơn, th&uacute;c đẩy qu&aacute; tr&igrave;nh giảm ph&ugrave; nề, đau r&aacute;t b&uacute;i trĩ, đi cầu ra m&aacute;u v&agrave; co b&uacute;i trĩ nhanh nhất.<br />\r\nGiảm hết t&aacute;o b&oacute;n, ổn định bệnh trĩ, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nTr&aacute;nh xơ vữa, suy tĩnh mạch, gi&atilde;n tĩnh mạch.</p>\r\n\r\n<p><img src=\"/image/menu4_1.jpg\" /></p>\r\n\r\n<h2>2.C&ocirc;ng dụng của ANTRI GP</h2>\r\n\r\n<p>ANTRI GP gi&uacute;p giảm phề, đau r&aacute;t, chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p khắc phục c&aacute;c chứng trĩ cấp, m&atilde;n, t&aacute;o b&oacute;n, đau r&aacute;t, đi cầu ra m&aacute;u.<br />\r\nBền vững th&agrave;nh mạch, chống suy tĩnh mạch, gi&atilde;n tĩnh mạch, xơ vữa mạch m&aacute;u, xuất huyết dưới da.</p>\r\n\r\n<h2>3.Th&agrave;nh phần</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Diosmin</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rutin</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao diếp c&aacute;</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MgO</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin C</td>\r\n			<td>30mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>1mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>15mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kem Gluconate</td>\r\n			<td>70mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>T&aacute; dược vừa đủ 01 vi&ecirc;n bao phim tan trong ruột.</td>\r\n					</tr>\r\n					<tr>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng ANTRI GP:</h2>\r\n\r\n<p>Uống 04 vi&ecirc;n/ ng&agrave;y/ 02 lần, trước hoặc trong bữa ăn.<br />\r\n- C&oacute; thể d&ugrave;ng 06 vi&ecirc;n/ng&agrave;y/02 lần, trong trường hợp trĩ cấp, chảy m&aacute;u nhiều, đau r&aacute;t nhiều.<br />\r\n- C&oacute; thể d&ugrave;ng h&agrave;ng ng&agrave;y, ph&ograve;ng bệnh trĩ t&aacute;i ph&aacute;t v&agrave; chống suy tĩnh mạch, xơ vữa mạch m&aacute;u.</p>\r\n\r\n<p><a href=\"#\"><img src=\"/image/menu4_2.jpg\" /></a></p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>C&aacute;c kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng Diosmin tr&ecirc;n thế giới từ 1950- 2011 cho thấy:<br />\r\nTr&ecirc;n tổng 2344 người bị bệnh trĩ v&agrave; suy tĩnh mạch, gi&atilde;n tĩnh mạch:<br />\r\n- 95% số người bị bệnh trĩ kiểm so&aacute;t t&igrave;nh trạng đi cầu ra m&aacute;u, đau r&aacute;t ở bệnh trĩ.<br />\r\n- Ngo&agrave;i ra, c&aacute;c bằng chứng khi nghi&ecirc;n cứu, Diosmin c&oacute; lợi rất lớn cho bệnh nh&acirc;n suy tĩnh mạch, nguy cơ suy tĩnh mạch v&agrave; xuất huyết dưới da.<br />\r\n- Theo th&ocirc;ng k&ecirc; từ 9/2015 đến 1/2017 tr&ecirc;n 3257 b&ecirc;nh nh&acirc;n trĩ tại H&agrave; Nội, TPHCM v&agrave; 1 số tỉnh miền bắc sử dụng ANTRI GP:<br />\r\n73% số người bị bệnh trĩ giảm hẳn đau r&aacute;t v&agrave; đi cầu ra m&aacute;u sau 03 ng&agrave;y sử dụng.<br />\r\n96% bệnh nh&acirc;n bị bệnh trĩ hết đau r&aacute;t, đi cầu ra m&aacute;u sau 07 ng&agrave;y sử dụng.<br />\r\n84% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 07 ng&agrave;y sử dụng v&agrave; 95% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 14 ng&agrave;y sử dụng.<br />\r\n87.3% kh&aacute;ch h&agrave;ng sử dụng đủ liệu tr&igrave;nh 08 hộp, kh&ocirc;ng t&aacute;i ph&aacute;t lại sau 01 năm.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm!- Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa ANTRI GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>ANTRI GP khắc phục bệnh trĩ tận gốc dựa tr&ecirc;n cơ chế r&otilde; r&agrave;ng của nền y học hiện đại.<br />\r\nCơ chế t&aacute;c dụng hiệp đồng, vừa l&agrave;m hết ph&ugrave; nề b&uacute;i trĩ, vừa khắc phục tận gốc nguy&ecirc;n nh&acirc;n g&acirc;y ra bệnh trĩ.<br />\r\n+ Hết ph&ugrave; nề b&uacute;i trĩ, l&agrave;m hết đau r&aacute;t chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, bền vững hơn.<br />\r\n+ Hết t&aacute;o b&oacute;n, ngăn ngừa bệnh trĩ quay trở lại.<br />\r\nNguy&ecirc;n liệu Diosmin trong ANTRI GP, dạng micronized, hạt si&ecirc;u nhỏ, 5um. Bằng 1/20 kich thước hạt Diosmin th&ocirc;ng thường. gi&uacute;p dễ d&agrave;ng hấp thu hơn nhiều lần. nhập khẩu từ ph&aacute;p.<br />\r\nKh&aacute;c với sản phẩm trĩ c&ugrave;ng d&ograve;ng kh&aacute;c, mất nhiều thời gian để thấy t&aacute;c dụng. ANTRI GP cho t&aacute;c dụng nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img src=\"/image/giayCN.jpg\" /> <img src=\"/image/formImgCate.jpg\" /></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'antri-gp-hop-to', 'ANTRI GP (HỘP TO)', '', ''),
(85, 49, 'vn', 'Hình ảnh sôi động Lễ Hội American Skills Long Biên', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hinh-anh-soi-dong-le-hoi-american-skills-long-bien', 'Hình ảnh sôi động Lễ Hội American Skills Long Biên', '', '');
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(86, 49, 'en', 'Hoạt Huyết GP_en', '<p>HOẠT HUYẾT GP l&agrave; sản phẩm gi&agrave;nh ri&ecirc;ng cho bệnh nh&acirc;n tiền đ&igrave;nh &amp; căng thẳng mất ngủ. Ngo&agrave;i ra HOẠT HUYẾT GP hỗ trợ tăng cường tuần ho&agrave;n m&aacute;u n&atilde;o, chống thiểu năng tuần ho&agrave;n m&aacute;u n&atilde;o.</p>\r\n\r\n<ul>\r\n	<li>Khắc phục nhanh c&aacute;c chứng đau đầu, ch&oacute;ng mặt buồn n&ocirc;n, căng thẳng mất ngủ, ngủ kh&ocirc;ng ngon.</li>\r\n	<li>Sản phẩm an to&agrave;n với người sử dụng, d&ugrave;ng được h&agrave;ng ng&agrave;y để dưỡng n&atilde;o, ngủ s&acirc;u giấc hơn. Ph&ograve;ng bệnh tiền đ&igrave;nh quay trở lại.</li>\r\n	<li>Được c&aacute;c b&aacute;c sĩ khuy&ecirc;n d&ugrave;ng cho bệnh nh&acirc;n tiền đ&igrave;nh, căng thẳng rối loan giấc ngủ v&agrave; tăng cường tuần ho&agrave;n m&aacute;u n&atilde;o.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức b&agrave;o chế tối ưu</h2>\r\n\r\n<p>HOẠT HUY&Ecirc;T GP l&agrave; sản phẩm được b&agrave;o chế tối ưu cho bệnh nh&acirc;n bị tiền đ&igrave;nh &amp; mất ngủ, stress.<br />\r\nVới Gingko biloba, Cao từ củ đinh lăng h&agrave;m lượng cao sẽ tối đa qu&aacute; tr&igrave;nh đưa m&aacute;u l&ecirc;n n&atilde;o, tăng tuần ho&agrave;n m&aacute;u n&atilde;o, cung cấp đủ oxy cho n&atilde;o hoạt động.<br />\r\nVới Cinnarizin/ Mg-B6: gi&uacute;p giảm căng thẳng, ngủ s&acirc;u giấc hơn. đặc biệt cinnarizin t&aacute;c dụng trực tiếp l&ecirc;n tuyến tiền đ&igrave;nh, gi&uacute;p khắc phục nhanh ch&oacute;ng bệnh tiền đ&igrave;nh, đau đầu ch&oacute;ng mặt, &ugrave; tai.</p>\r\n\r\n<h2>2.Th&agrave;nh phần của HOẠT HUYẾT GP</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Gingko biloba</td>\r\n			<td>250mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao Đinh Lăng</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cinnarizine</td>\r\n			<td>25mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Magie gluconate</td>\r\n			<td>30mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B6</td>\r\n			<td>10mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>2mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B12</td>\r\n			<td>50mcg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>3.C&ocirc;ng dụng của HOẠT HUYẾT GP</h2>\r\n\r\n<p>Gi&uacute;p tăng cường tuần ho&agrave;n m&aacute;u n&atilde;o, chống thiểu năng tuần ho&agrave;n m&aacute;u n&atilde;o, rối loạn tuần ho&agrave;n m&aacute;u n&atilde;o.<br />\r\nKhắc phục bệnh tiền đ&igrave;nh, đau đầu ch&oacute;ng mặt &ugrave; tai, buồn n&ocirc;n.<br />\r\nGiảm căng thẳng mệt mỏi, ngủ ngon hơn, s&acirc;u hơn.</p>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng HOẠT HUYẾT GP:</h2>\r\n\r\n<p>Trước khi sử dụng HOẠT HUYẾT GP hay bất kỳ d&ograve;ng sản phẩm c&oacute; t&aacute;c dụng tăng tuần ho&agrave;n m&aacute;u n&atilde;o th&igrave; qu&yacute; kh&aacute;ch n&ecirc;n kiểm tra lại huyết &aacute;p của m&igrave;nh. Kh&ocirc;ng được sử dụng mọi sản phẩm c&oacute; t&aacute;c dụng tăng cường tuần ho&agrave;n n&atilde;o khi huyết &aacute;p của qu&yacute; kh&aacute;ch đang tăng tr&ecirc;n 150/90 mmHg.<br />\r\nLiều d&ugrave;ng HOẠT HUYẾT GP:<br />\r\n- Đang ch&oacute;ng mặt &ugrave; tai: 03 vi&ecirc;n/ ng&agrave;y/ 2 lần.<br />\r\n- D&ugrave;ng h&agrave;ng ng&agrave;y, duy tr&igrave; 02 vi&ecirc;n/ng&agrave;y/2 lần.</p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>93% người sử dụng ngủ ngon hơn, s&acirc;u hơn sau 03 ng&agrave;y sử dụng.<br />\r\n95% người sử dụng hết ch&oacute;ng mặt &ugrave; tai, l&acirc;ng l&acirc;ng, đau đầu.<br />\r\n83% người bị vi&ecirc;m đại tr&agrave;ng cấp, m&atilde;n ổn định tr&ecirc;n 06 th&aacute;ng sau khi d&ugrave;ng đủ 02 th&aacute;ng.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm DP GREEN-PHAR - Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa ĐẠI TR&Agrave;NG GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>Gingko biloba/ Cinnarizin: 250/25mg, khắc phục bệnh tiền đ&igrave;nh nhanh ch&oacute;ng, sau 02- 04 vi&ecirc;n.<br />\r\nHOẠT HUYẾT GP kh&ocirc;ng chỉ l&agrave; sản phẩm hoạt huyết, tăng cường m&aacute;u n&atilde;o. HOẠT HUYẾT GP l&agrave; sản phẩm chuy&ecirc;n gi&agrave;nh cho b&ecirc;nh nh&acirc;n tiền đ&igrave;nh &amp; căng thẳng mất ngủ.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img alt=\"\" src=\"/image/CN_hoathuyetGP.jpg\" /> <img alt=\"\" src=\"/image/formImgCate_5.jpg\" /></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hoat-huyet-gp-1', 'Hoạt Huyết GP', '', ''),
(87, 50, 'vn', 'HÌNH ẢNH SÂN CHƠI TRÍ TUỆ AMERICAN SKILLS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hinh-anh-san-choi-tri-tue-american-skills', 'HÌNH ẢNH SÂN CHƠI TRÍ TUỆ AMERICAN SKILLS', '', ''),
(88, 50, 'en', 'sấ', '<p>sdf</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'sa', 'sấ', '', ''),
(89, 51, 'vn', 'American Skill', '', '', '', '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/4J4YFw5EjF8\" width=\"560\"></iframe></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'american-skill', 'American Skill', '', ''),
(90, 51, 'en', 'American Skill', '<p>&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/4J4YFw5EjF8&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen&gt;&lt;/iframe&gt;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'american-skill', 'American Skill', '', ''),
(91, 52, 'vn', 'Đội ngũ giáo viên trình độ cao', '<p>Ch&uacute;ng t&ocirc;i cam kết bảo mật tuyệt đối th&ocirc;ng tin của Kh&aacute;ch h&agrave;ng, v&igrave; ch&uacute;ng t&ocirc;i hiểu r&otilde; v&agrave; lu&ocirc;n t&ocirc;n trọng gi&aacute; trị đạo đức trong kinh doanh.<br />\r\n- Uy t&iacute;n v&agrave; ch&acirc;n th&agrave;nh l&agrave; hai gi&aacute; trị văn h&oacute;a quan trọng nhất của Nguy&ecirc;n Anh.<br />\r\n- To&agrave;n bộ nh&acirc;n sự Nguy&ecirc;n Anh lu&ocirc;n xem lợi &iacute;ch của Kh&aacute;ch h&agrave;ng l&agrave; t&acirc;m niệm để l&agrave;m việc.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'doi-ngu-giao-vien-trinh-do-cao', 'Đội ngũ giáo viên trình độ cao', '', ''),
(92, 52, 'en', 'Đội ngũ giáo viên trình độ cao', '<p>Ch&uacute;ng t&ocirc;i cam kết bảo mật tuyệt đối th&ocirc;ng tin của Kh&aacute;ch h&agrave;ng, v&igrave; ch&uacute;ng t&ocirc;i hiểu r&otilde; v&agrave; lu&ocirc;n t&ocirc;n trọng gi&aacute; trị đạo đức trong kinh doanh.<br />\r\n- Uy t&iacute;n v&agrave; ch&acirc;n th&agrave;nh l&agrave; hai gi&aacute; trị văn h&oacute;a quan trọng nhất của Nguy&ecirc;n Anh.<br />\r\n- To&agrave;n bộ nh&acirc;n sự Nguy&ecirc;n Anh lu&ocirc;n xem lợi &iacute;ch của Kh&aacute;ch h&agrave;ng l&agrave; t&acirc;m niệm để l&agrave;m việc.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'doi-ngu-giao-vien-trinh-do-cao', 'Đội ngũ giáo viên trình độ cao', '', ''),
(93, 53, 'vn', 'Chương trình Chuẩn quốc tế', '<p>-Nội dung chương tr&igrave;nh chuẩn quốc tế</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'chuong-trinh-chuan-quoc-te', 'Chương trình Chuẩn quốc tế', '', ''),
(94, 53, 'en', 'Chương trình Chuẩn quốc tế', '<p>-Nội dung chương tr&igrave;nh chuẩn quốc tế</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'chuong-trinh-chuan-quoc-te', 'Chương trình Chuẩn quốc tế', '', ''),
(95, 54, 'vn', 'Phương pháp học tiên tiến', '<p>- Mọi y&ecirc;u cầu của Bạn đều được Nguy&ecirc;n Anh thực hiện nhanh ch&oacute;ng, đầy đủ v&agrave; b&aacute;o c&aacute;o thường xuy&ecirc;n<br />\r\n- Quy tr&igrave;nh kết nối l&agrave;m việc đơn giản, thuận tiện với thời gian v&agrave; y&ecirc;u cầu của Bạn<br />\r\n- Bộ phận tư vấn của Nguy&ecirc;n Anh lu&ocirc;n hỗ trợ Bạn 24/7 qua c&aacute;c k&ecirc;nh hotline, email, zalo, viber hoặc c&aacute;c k&ecirc;nh kh&aacute;c ph&ugrave; hợp với Bạn.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'phuong-phap-hoc-tien-tien', 'Phương pháp học tiên tiến', '', ''),
(96, 54, 'en', 'Phương pháp học tiên tiến', '<p>- Mọi y&ecirc;u cầu của Bạn đều được Nguy&ecirc;n Anh thực hiện nhanh ch&oacute;ng, đầy đủ v&agrave; b&aacute;o c&aacute;o thường xuy&ecirc;n<br />\r\n- Quy tr&igrave;nh kết nối l&agrave;m việc đơn giản, thuận tiện với thời gian v&agrave; y&ecirc;u cầu của Bạn<br />\r\n- Bộ phận tư vấn của Nguy&ecirc;n Anh lu&ocirc;n hỗ trợ Bạn 24/7 qua c&aacute;c k&ecirc;nh hotline, email, zalo, viber hoặc c&aacute;c k&ecirc;nh kh&aacute;c ph&ugrave; hợp với Bạn.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'phuong-phap-hoc-tien-tien', 'Phương pháp học tiên tiến', '', ''),
(97, 55, 'vn', 'Cơ sở vật chất hiện đại', '<p>This stylish hamper is a wonderful way to welcome a new baby into the world. Little Pink Bunny is a gorgeously soft and snuggly friend, she is so huggably, hoppily soft she makes the perfect bedtime buddy. The hamper also contains our award winning, all-natural skincare, designed specifically for a newborn baby&rsquo;s delicate skin and this gift hamper is finished with our stunning baby bud posy containing six pairs of fabulous stay-on socks.tu</p>\r\n', '', '', '<p>This welcome hamper contains: The lovely Little Pink Bunny with pretty pink trim and a rattle, perfect for sensory play. She is 24 cm high and suitable from birth.&nbsp;<br />\r\nOne 150ml moisturising baby lotion. This is a soothing, fragrance free lotion designed especially for a baby&rsquo;s delicate skin. Handmade in Cornwall using no parabens, sodium lauryl sulphate, fragrances, palm oil or lanolin the all-natural ingredients include beeswax, wheatgerm, honey and evening primrose oil.&nbsp;<br />\r\nOne 60ml baby care cream. This is our most popular cream and mums love how effective it is on everything from nappy rash to eczema. Again, handmade in Cornwall and completely natural it contains calendula to soothe and reduce redness, lavender for relaxation and its antiseptic properties, wheat germ to soothe and rejuvenate and finally honey for its ability to attract and maintain moisture, helping to soften and protect delicate skin.&nbsp;<br />\r\nOne baby bud posy &ndash; the six pairs of &lsquo;stay on&rsquo; socks within the posy contain 67% cotton, 29% nylon, 4% spandex.&nbsp;<br />\r\nPerfectly packaged in a beautifully illustrated gift box with a gift card bearing your message, this is a wonderful gift for a new mum. tu</p>\r\n\r\n<p>Đặc biệt, ch&uacute;ng t&ocirc;i lu&ocirc;n cập nhật c&aacute;c sản phẩm c&ocirc;ng nghệ mới v&agrave; lu&ocirc;n c&oacute; c&aacute;c chương tr&igrave;nh khuyến m&atilde;i đặc sắc: gi&aacute; cả ưu đ&atilde;i, qu&agrave; tặng phong ph&uacute; tới Kh&aacute;ch h&agrave;ng.</p>\r\n', '', '', 'asdf', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'co-so-vat-chat-hien-dai', 'Cơ sở vật chất hiện đại', '', ''),
(98, 55, 'en', 'Cơ sở vật chất hiện đại', '<p>- Với một khoản chi ph&iacute; nhỏ h&agrave;ng th&aacute;ng, ch&uacute;ng t&ocirc;i sẽ cung cấp cho Bạn một dịch vụ chất lượng.<br />\r\n- Mọi chi ph&iacute; đều được thể hiện r&otilde; r&agrave;ng trong hợp đồng.<br />\r\n- Cam kết ho&agrave;n tiền: Sau 30 ng&agrave;y kể từ ng&agrave;y k&yacute; hợp đồng dịch vụ kế to&aacute;n thuế, nếu Bạn kh&ocirc;ng h&agrave;i l&ograve;ng về dịch vụ, Nguy&ecirc;n Anh cam kết ho&agrave;n tiền 100%.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'co-so-vat-chat-hien-dai', 'Cơ sở vật chất hiện đại', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(65, 'Nước tới chân mới nhảy', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Courier New,Courier,monospace\"><strong>Bạn đang gặp kh&oacute; khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>NƯỚC TỚI CH&Acirc;N MỚI NHẢY</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Khi cần chứng chỉ Tiếng Anh cho c&ocirc;ng việc/ học tập mới vội v&agrave;ng học, kết quả kh&ocirc;ng cao.</p>\r\n</div>\r\n', '', '-uploaded-pic-cat_chuongtrinh_cr_320x320.png', '5400000', 0, '129 giờ', '2017-12-21', '2018-11-09', 1, '18/6/2017', '18h-21h thứ 2,4,6', NULL, NULL, NULL, 'Nước tới chân mới nhảy', '', 'nuoc-toi-chan-moi-nhay', '', 1),
(66, 'Học không đi đôi với hành', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Courier New,Courier,monospace\"><strong>Bạn đang gặp kh&oacute; khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>HỌC KH&Ocirc;NG ĐI Đ&Ocirc;I VỚI H&Agrave;NH</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Chỉ học tr&ecirc;n s&aacute;ch vở, kh&ocirc;ng cọ x&aacute;t giao tiếp với m&ocirc;i trường thực tế.</p>\r\n</div>\r\n', '', NULL, '5400000', 0, '129 giờ', '2017-12-21', '2018-11-09', 1, '18/6/2017', '18h-21h thứ 2,4,6', NULL, NULL, NULL, 'Học không đi đôi với hành', '', 'hoc-khong-di-doi-voi-hanh', '', 1),
(67, 'Không có môi trường luyện tập', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Courier New,Courier,monospace\"><strong>Bạn đang gặp kh&oacute; khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>KH&Ocirc;NG C&Oacute; M&Ocirc;I TRƯỜNG LUYỆN TẬP</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Học th&ecirc;m chỉ 3 buổi/ tuần, kh&ocirc;ng đủ thời gian thực h&agrave;nh Tiếng Anh c&ugrave;ng người bản ngữ.</p>\r\n</div>\r\n', '', NULL, '5400000', 0, '129 giờ', '2017-12-21', '2018-11-09', 1, '18/6/2017', '18h-21h thứ 2,4,6', NULL, NULL, NULL, 'Không có môi trường luyện tập', '', 'khong-co-moi-truong-luyen-tap', '', 1),
(68, 'Mất gốc tiếng anh', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Courier New,Courier,monospace\"><strong>Bạn đang gặp kh&oacute; khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>MẤT GỐC TIẾNG ANH</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Học Tiếng Anh từ nhỏ nhưng đến giờ vẫn m&ugrave; tịt, kh&ocirc;ng biết bắt đầu từ đ&acirc;u.</p>\r\n</div>\r\n', '', '-uploaded_Teacher-female_cr_320x320.png', '5400000', 0, '129 giờ', '2017-12-21', '2018-11-09', 1, '18/6/2017', '18h-21h thứ 2,4,6', NULL, NULL, NULL, 'Mất gốc tiếng anh', '', 'mat-goc-tieng-anh', '', 1),
(69, 'Phản xạ tiếng anh kém', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><span style=\"font-size:24px\"><strong>Bạn đang gặp kh&oacute; khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>PHẢN XẠ TIẾNG ANH K&Eacute;M</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Khi trả lời đều cố gắng dịch từ Tiếng Việt sang Tiếng Anh. Kh&ocirc;ng c&oacute; phản xạ Tiếng Anh.</p>\r\n</div>\r\n', '', 'giao-vien-day-van.jpg', '5400000', 0, '129 giờ', '2018-04-26', '2018-11-09', 1, '18/6/2017', '18h-21h thứ 2,4,6', NULL, NULL, NULL, 'Phản xạ tiếng anh kém', '', 'phan-xa-tieng-anh-kem', '', 1),
(70, 'Sợ sai khi giao tiếp', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><span style=\"font-size:24px\"><strong>Bạn đang gặp kh&oacute; khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>SỢ SAI KHI GIAO TIẾP</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Ph&aacute;t &acirc;m kh&ocirc;ng chuẩn, nghe Tiếng Anh như vịt nghe sấm, kh&ocirc;ng tự tin khi giao tiếp.</p>\r\n</div>\r\n', '', NULL, '5400000', 0, '129 giờ', '2018-04-26', '2018-11-09', 1, '18/6/2017', '18h-21h thứ 2,4,6', NULL, NULL, NULL, 'Sợ sai khi giao tiếp', '', 'so-sai-khi-giao-tiep', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(85, 'vn', 'Nước tới chân mới nhảy', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Courier New,Courier,monospace\"><strong>Bạn đang gặp kh&oacute; khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>NƯỚC TỚI CH&Acirc;N MỚI NHẢY</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Khi cần chứng chỉ Tiếng Anh cho c&ocirc;ng việc/ học tập mới vội v&agrave;ng học, kết quả kh&ocirc;ng cao.</p>\r\n</div>\r\n', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Nước tới chân mới nhảy', '', 'nuoc-toi-chan-moi-nhay', '', NULL, 65),
(86, 'en', 'Hoàn thiện sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Hoàn thiện sổ sách', '', 'hoan-thien-so-sach', '', NULL, 65),
(87, 'vn', 'Học không đi đôi với hành', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Courier New,Courier,monospace\"><strong>Bạn đang gặp kh&oacute; khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>HỌC KH&Ocirc;NG ĐI Đ&Ocirc;I VỚI H&Agrave;NH</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Chỉ học tr&ecirc;n s&aacute;ch vở, kh&ocirc;ng cọ x&aacute;t giao tiếp với m&ocirc;i trường thực tế.</p>\r\n</div>\r\n', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Học không đi đôi với hành', '', 'hoc-khong-di-doi-voi-hanh', '', NULL, 66),
(88, 'en', 'Rà soát sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', '', 'ra-soat-so-sach', '', NULL, 66),
(89, 'vn', 'Không có môi trường luyện tập', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Courier New,Courier,monospace\"><strong>Bạn đang gặp kh&oacute; khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>KH&Ocirc;NG C&Oacute; M&Ocirc;I TRƯỜNG LUYỆN TẬP</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Học th&ecirc;m chỉ 3 buổi/ tuần, kh&ocirc;ng đủ thời gian thực h&agrave;nh Tiếng Anh c&ugrave;ng người bản ngữ.</p>\r\n</div>\r\n', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Không có môi trường luyện tập', '', 'khong-co-moi-truong-luyen-tap', '', NULL, 67),
(90, 'en', 'Kê khai thuế online', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kê khai thuế online', '', 'ke-khai-thue-online', '', NULL, 67),
(91, 'vn', 'Mất gốc tiếng anh', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-size:24px\"><span style=\"font-family:Courier New,Courier,monospace\"><strong>Bạn đang gặp kh&oacute; khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>MẤT GỐC TIẾNG ANH</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Học Tiếng Anh từ nhỏ nhưng đến giờ vẫn m&ugrave; tịt, kh&ocirc;ng biết bắt đầu từ đ&acirc;u.</p>\r\n</div>\r\n', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Mất gốc tiếng anh', '', 'mat-goc-tieng-anh', '', NULL, 68),
(92, 'en', 'Kế toán thuế trọn gói', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kế toán thuế trọn gói', '', 'ke-toan-thue-tron-goi', '', NULL, 68),
(93, 'vn', 'Phản xạ tiếng anh kém', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><span style=\"font-size:24px\"><strong>Bạn đang gặp kh&oacute; khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>PHẢN XẠ TIẾNG ANH K&Eacute;M</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Khi trả lời đều cố gắng dịch từ Tiếng Việt sang Tiếng Anh. Kh&ocirc;ng c&oacute; phản xạ Tiếng Anh.</p>\r\n</div>\r\n', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Phản xạ tiếng anh kém', '', 'phan-xa-tieng-anh-kem', '', NULL, 69),
(94, 'en', 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', '<p>tuyển gi&aacute;oo vi&ecirc;n dạy văn</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', 'tuyen-giaoo-vien-day-van', 'tuyển giáoo viên dạy văn', NULL, 69),
(95, 'vn', 'Sợ sai khi giao tiếp', '<div class=\"tab-content-title\">\r\n<h2 style=\"text-align:center\"><span style=\"font-family:Courier New,Courier,monospace\"><span style=\"font-size:24px\"><strong>Bạn đang gặp khó khăn ???</strong></span></span></h2>\r\n\r\n<h3>HOMESTAY VIỆT NAM</h3>\r\n\r\n<h2>SỢ SAI KHI GIAO TIẾP</h2>\r\n</div>\r\n\r\n<div class=\"tab-content-description\">\r\n<p>Phát âm không chuẩn, nghe Tiếng Anh như vịt nghe sấm, không tự tin khi giao tiếp.</p>\r\n</div>\r\n', '<p>1</p>\r\n', NULL, 1, '', '', '', '', '', 'Sợ sai khi giao tiếp', '', 'so-sai-khi-giao-tiep', '', NULL, 70),
(96, 'en', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/20181', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/20181', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span></p>\r\n', NULL, 1, '', '', '', '', '', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-520181', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', NULL, 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `accede` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `experience` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `introduce` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `age`, `country`, `accede`, `sex`, `experience`, `program`, `introduce`, `image`, `time`) VALUES
(1, 'DANIEL', 27, 'Anh', '2017-11-18', 1, '<p>- Preschool teacher.&nbsp;<br />\r\n- Been teaching online for the past 5.5 years and 3.5 in classrooms.&nbsp;</p>\r\n', '<p>- English for communication&nbsp;<br />\r\n- Office English&nbsp;<br />\r\n- English for kids&nbsp;<br />\r\n- IELTS&nbsp;</p>\r\n', '<p>I do firmly believe I can match what you are looking for in a Teacher. if you are looking for someone Patient, Kind and someone who can easily understand and correct you that is me. I taught in various curriculum in the K-12 and Waldorf setting which means I&#39;m very flexible to your learning style. Give me a chance and I know that I&#39;m the right teacher for your needs.</p>\r\n', 'staff1.jpg', 1540888243),
(2, 'MISON', 30, 'Anh', '2010-10-26', 0, '<p>- Preschool teacher.&nbsp;<br />\r\n- Been teaching online for the past 5.5 years and 3.5 in classrooms.&nbsp;</p>\r\n', '<p>- English for communication&nbsp;<br />\r\n- Office English&nbsp;<br />\r\n- English for kids&nbsp;<br />\r\n- IELTS&nbsp;</p>\r\n', '<p>I do firmly believe I can match what you are looking for in a Teacher. if you are looking for someone Patient, Kind and someone who can easily understand and correct you that is me. I taught in various curriculum in the K-12 and Waldorf setting which means I&#39;m very flexible to your learning style. Give me a chance and I know that I&#39;m the right teacher for your needs.</p>\r\n', 'staff2.jpg', 1540890602),
(3, 'MAKENNA LEE', 28, 'Anh', '2016-11-18', 0, '', '', '', 'staff4.jpg', 1541815562),
(4, 'PAUL ROBERTS', 28, 'Anh', '2017-06-04', 1, '', '', '', 'staff3.jpg', 1541815615);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `technical_bulletin_file`
--

CREATE TABLE `technical_bulletin_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `technical_bulletin_file`
--

INSERT INTO `technical_bulletin_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`) VALUES
(1, 'mystery078', 'tung92.ns@gmail.com', '01658824321', '', '$2y$10$zjlyFYq6vJ6TXeQVsOh/1esNuHFTf23SE62fvXVvyUAYvzxyCNzv6', '2017-03-12 02:03:39', 1),
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `content`, `image`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Retqxi9Dxts\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product1.jpg'),
(2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MKpo08bproA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product2.jpg'),
(3, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7R_VcI4YsXU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product3.jpg'),
(4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZeTmalPUazI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cam_nhan`
--
ALTER TABLE `cam_nhan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `dang_ky_ngay`
--
ALTER TABLE `dang_ky_ngay`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dang_ky_online`
--
ALTER TABLE `dang_ky_online`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hour`
--
ALTER TABLE `hour`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cam_nhan`
--
ALTER TABLE `cam_nhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dang_ky_ngay`
--
ALTER TABLE `dang_ky_ngay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `dang_ky_online`
--
ALTER TABLE `dang_ky_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `day`
--
ALTER TABLE `day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hour`
--
ALTER TABLE `hour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
