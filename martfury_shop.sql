-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2022 lúc 01:08 PM
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
-- Cơ sở dữ liệu: `martfury_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `app_roles`
--

CREATE TABLE `app_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `app_roles`
--

INSERT INTO `app_roles` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `cart_id` bigint(20) NOT NULL,
  `amount` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`cart_id`, `amount`, `address`, `phone`, `user_id`) VALUES
(7, 0, '432, Xã Thọ Văn, Huyện Tam Nông, Tỉnh Phú Thọ', '0984624854', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_details`
--

CREATE TABLE `cart_details` (
  `cart_detail_id` bigint(20) NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(6, 'Nhớt'),
(7, 'Vỏ xe máy (Lốp xe)'),
(8, 'Đồ chơi xe máy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `favorite_id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `notification`
--

INSERT INTO `notification` (`id`, `message`, `status`, `time`) VALUES
(15, 'HIếu đã đặt một đơn hàng (14)', b'0', '2022-12-15 18:00:51'),
(16, 'HIếu đã đặt một đơn hàng (15)', b'0', '2022-12-15 18:02:44'),
(17, 'HIếu đã đặt một đơn hàng (16)', b'1', '2022-12-15 18:04:25'),
(18, 'HIếu đã đặt một đơn hàng (17)', b'1', '2022-12-15 18:07:42'),
(19, 'HIếu đã đặt một đơn hàng (18)', b'0', '2022-12-15 18:12:02'),
(20, 'HIếu đã đặt một đơn hàng (19)', b'1', '2022-12-15 18:15:02'),
(21, 'HIếu đã huỷ một đơn hàng (19)', b'0', '2022-12-15 18:16:12'),
(22, 'HIếu đã đặt một đơn hàng (20)', b'0', '2022-12-15 18:26:39'),
(23, 'HIếu đã đặt một đơn hàng (21)', b'0', '2022-12-15 18:46:52'),
(24, 'HIếu đã đặt một đơn hàng (22)', b'0', '2022-12-15 18:59:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`orders_id`, `address`, `amount`, `order_date`, `phone`, `status`, `user_id`) VALUES
(14, '297/42 Phan Huy Ích, Phường Sông Hiến, Thành phố Cao Bằng, Tỉnh Cao Bằng', 2093850, '2022-12-15 18:00:51', '0984624854', 2, 8),
(15, '123, Xã Đại Hợp, Huyện Tứ Kỳ, Tỉnh Hải Dương', 500000, '2022-12-15 18:02:44', '0984624854', 2, 8),
(16, '13, Xã La Pan Tẩn, Huyện Mường Khương, Tỉnh Lào Cai', 250000, '2022-12-15 18:04:25', '0984624854', 2, 8),
(17, '43, Phường 09, Quận Phú Nhuận, Thành phố Hồ Chí Minh', 198000, '2022-12-15 18:07:42', '0984624854', 2, 8),
(18, '888, Xã Dĩnh Trì, Thành phố Bắc Giang, Tỉnh Bắc Giang', 250000, '2022-12-15 18:12:02', '0984624854', 2, 8),
(19, '4344t, Xã Cao An, Huyện Cẩm Giàng, Tỉnh Hải Dương', 270000, '2022-12-15 18:15:02', '0984624854', 3, 8),
(20, '123, Xã Quảng Ngần, Huyện Vị Xuyên, Tỉnh Hà Giang', 1212500, '2022-12-15 18:26:39', '0984624854', 1, 8),
(21, '5434534, Phường Khai Quang, Thành phố Vĩnh Yên, Tỉnh Vĩnh Phúc', 215000, '2022-12-15 18:46:51', '0984624854', 2, 8),
(22, '432, Xã Thọ Văn, Huyện Tam Nông, Tỉnh Phú Thọ', 215000, '2022-12-15 18:59:35', '0984624854', 2, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` bigint(20) NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(85, 1235000, 2, 14, 77),
(86, 608850, 1, 14, 71),
(87, 250000, 1, 14, 76),
(88, 500000, 1, 15, 70),
(89, 250000, 1, 16, 76),
(90, 198000, 1, 17, 26),
(91, 250000, 1, 18, 76),
(92, 270000, 1, 19, 61),
(93, 1212500, 1, 20, 74),
(94, 215000, 1, 21, 66),
(95, 215000, 1, 22, 66);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `entered_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `description`, `discount`, `entered_date`, `image`, `name`, `price`, `quantity`, `sold`, `status`, `category_id`) VALUES
(24, 'Nhớt Repsol Smarter Scooter 4T 5W-40 0,8 lít, sản phẩm nhớt cho xe tay ga lý tưởng của tập đoàn nhớt Repsol. \n\n\nNhớt Repsol Smarter Scooter 4T 0.8L bảo vệ động cơ vượt trội, ổn định về độ nhớt, chống sự mài mòn trong điều kiện động cơ hoạt động trong quãng đường dài và liên tục.\nThông số kỹ thuật của Nhớt Repsol Smarter Scooter 4T 5W-40 0,8lit\nNhà sản xuất: Repsol\nĐộ nhớt: 5W40\nDung tích nhớt: 0,8 lít\nDầu tổng hợp hoàn toàn (Full Synthentic)\nTiêu chuẩn: API SN, JASO MA2', 0, '2022-03-20', 'https://res.cloudinary.com/martfury/image/upload/v1671073591/products/r39zaf8v6hpcabhwrrsl.jpg', 'Nhớt Repsol Smarter Scooter 4T 5W-40 0,8lit', 180000, 100, 0, b'1', 6),
(25, 'Nhớt chiết lẻ Repsol Smarter Synthetic 4T 10W40 (100ml) là sản phẩm dầu nhớt chính hãng của tập đoàn dầu nhớt Repsol danh tiếng trên toàn thế giới dành cho các thế hệ xe số 4 thì tiên tiến hiện nay.\nNhớt Repsol Smarter Synthetic 4T 10W40 giúp bảo vệ động cơ chống mài mòn, ma sát, kéo dài tuổi thọ động cơ, cải thiện khả năng tiết kiệm nhiên liệu xăng tối ưu.\nNhớt chiết lẻ Repsol Racing 10W40 (100ml) dành cho các dòng xe dung tích nhớt trên 1 lít như: Winner 150, Winner X, Sonic 150, Raider 150, Satria, Fz150i, CBR 150, GSX-R150 ...', 0, '2022-03-20', 'https://res.cloudinary.com/martfury/image/upload/v1671074083/products/caiysvccvpqp52owaxrq.png', 'Nhớt chiết lẻ Repsol Smarter Synthetic 4T 10W40 (100ml)', 24000, 100, 0, b'1', 6),
(26, 'Nhớt Liqui Scooter Formula 10W40 (0.8L) là dầu bán tổng hợp với công thức hoàn toàn mới dành riêng cho xe tay ga, đảm bảo bôi trơn liên tục, độ hao hụt dầu thấp, giảm tiếng ồn vận hành trong mọi điều kiện hoạt động.\nNhớt Liqui Scooter Formula 10W40 phù hợp cho các dòng xe tay ga, được nhập khẩu 100% chính hãng Liqui Moly Đức.', 1, '2022-03-20', 'https://res.cloudinary.com/martfury/image/upload/v1671074204/products/ciuir7rvltcml3bpgbus.png', 'Nhớt Liqui Scooter Formula 10W40', 200000, 99, 1, b'1', 6),
(58, 'Nhớt IPONE Katana Full Power 10W40 là nhớt tổng hợp 100% với công nghệ Ester, được thiết kế giúp tối ưu cho trải nghiệm lái xe và hệ phụ gia tiên tiến giúp mang đến tính năng “Dễ sang số và bứt tốc nhanh” độc quyền. Tính năng này giúp bạn có cảm giác tuyệt vời tăng tốc nhanh, khám phá nhiều hơn niềm vui khi lái xe.\nNhớt IPONE Katana Full Power 10W40 thích hợp cho các dòng xe thể thao, PKL... xuất xứ từ Pháp', 2, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671075159/products/siurgzopqtahlfmawkdo.jpg', 'Nhớt Ipone Katana Full Power 10W40', 385000, 100, 0, b'1', 6),
(59, 'Nhớt IPONE Stroke 4 Racing 10W40 là nhớt động cơ gốc Ester tổng hợp 100% được phát triển với sự hợp tác của các đội kỹ thuật của Red Bull MotoGP, dành cho các cuộc đua xe mô tô 4 thì, đường đua và địa hình có yêu cầu rất cao trong thi đấu. Dòng nhớt cao cấp nhất của thương hiệu ipone Giảm 15% ma sát, tăng 3% mô men xoắn và tăng 2% hiệu suất động cơ.\nNhớt IPONE Stroke 4 Racing 10W40 chuyên dùng trong các giải đua xe PKL và dành cho các Biker thích vận hành tốc độ cao, nhớt xuất xứ từ Pháp.', 5, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671075293/products/ljum3n7kox81leshcyo8.png', 'Nhớt Ipone Stroke 4 Racing 10W40', 495000, 100, 0, b'1', 6),
(60, 'Nhớt IPONE Katana Full Power 10W30 là nhớt tổng hợp 100% với công nghệ Ester, được thiết kế giúp tối ưu cho trải nghiệm lái xe và hệ phụ gia tiên tiến giúp mang đến tính năng “Dễ sang số và bứt tốc nhanh” độc quyền. Tính năng này giúp bạn có cảm giác tuyệt vời tăng tốc nhanh, khám phá nhiều hơn niềm vui khi lái xe.\nNhớt IPONE Katana Full Power 10W30 xuất xứ từ Pháp', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671075387/products/ntmxoqlprzjvnbnrsdcb.png', 'Nhớt Ipone Katana Full Power 10W30', 385000, 10, 0, b'1', 6),
(61, 'Nhớt IPONE Katana Scoot 5W40 là nhớt động cơ tổng hợp 100% dành cho xe tay ga. Dầu có độ ma sát thấp với độ ổn định trượt ca giúp giảm lượng tiêu thụ nhiên liệu hiệu quả và đảm bảo hiệu suất của động cơ. Tính năng này còn giúp xe tăng tốc mượt mà và nhanh, giảm độ trễ, rung lắc khi thốc ga. Sự kết hợp đặc biệt giữa dầu gốc và phụ gia cao cấp giúp ngăn ngừa sự hình thành cặn bẩn và bảo vệ chống mài mòn tối ưu. Nhớt IPONE Katana Scoot 5W40 có xuất xứ từ Pháp.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671075467/products/w6fnegcnbsq4o21q9pcl.png', 'Nhớt Ipone Katana Scoot 5W40', 270000, 100, 0, b'1', 6),
(62, 'Nhớt IPONE Katana Scoot 0W30 là nhớt động cơ tổng hợp 100% dành cho xe tay ga. Dầu có độ ma sát thấp với độ ổn định trượt ca giúp giảm lượng tiêu thụ nhiên liệu hiệu quả và đảm bảo hiệu suất của động cơ. Tính năng này còn giúp xe tăng tốc mượt mà và nhanh, giảm độ trễ, rung lắc khi thốc ga. Sự kết hợp đặc biệt giữa dầu gốc và phụ gia cao cấp giúp ngăn ngừa sự hình thành cặn bẩn và bảo vệ chống mài mòn tối ưu.\nNhớt IPONE Katana Scoot 0W30 có xuất xứ từ Pháp', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671075552/products/me1kjzi5fur9vvc5msbe.png', 'Nhớt Ipone Katana Scoot 0W30', 330000, 100, 0, b'1', 6),
(63, 'Nhớt IPONE Scoot 4 10W40 là nhớt bán tổng hợp được tối ưu cho các dòng xe tay ga thông dụng, có tính năng tiết kiệm nhiên liệu, thành phần nhớt có độ ma sát thấp giúp giảm lượng tiêu thụ nhiên liệu hiệu quả và đảm bảo hiệu suất của động cơ. Tính năng này còn giúp bảo vệ động cơ tuyệt vời khi xe thường xuyên “chạy-dừng” trong đô thị.\nNhớt IPONE Scoot 4 10W40 1L thích hợp cho các loại xe tay ga, sản phẩm xuất xứ từ Pháp.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671075647/products/c27iv7sp3e2ryitf3efj.png', 'Nhớt Ipone Scoot 4 10W40', 185000, 10, 0, b'1', 6),
(64, 'Nhớt IPONE R4000 RS 10W40 được sản xuất từ Dầu gốc Tổng hợp với Ester và hệ phụ gia tiên tiến với tính năng bảo vệ động cơ cực cao. Sản phẩm đảm bảo tính năng bôi trơn hiệu quả, hộp số và bộ ly hợp, giữ động cơ tránh quá nhiệt, tăng tuổi thọ nhớt và động cơ cục tốt.\nNhớt IPONE R4000RS 10W40 thích hợp cho các loại xe số, côn tay, xuất xứ từ Pháp.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671075752/products/kfdioz7c5sp3v2wcgevw.png', 'Nhớt Ipone R4000RS 10W40', 270000, 100, 0, b'1', 6),
(65, 'Nhớt IPONE 10.4 10W40 được sản xuất từ Dầu gốc Bán tổng hợp với hệ phụ gia cao cấp, thích hợp cho các điều kiện hoạt động trong đô thị. Sản phẩm đảm bảo tính năng bôi trơn hiệu quả, cung cấp tính năng bảo vệ cho động cơ, hộp số và bộ ly hợp, giữ động cơ tránh quá nhiệt, tăng tuổi thọ nhớt và động cơ cục tốt.\nNhớt IPONE 10.4 10W40 thích hợp cho các loại xe số, côn tay, xuất xứ từ Pháp.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671075839/products/dssszdn5rnmkskhwucy2.png', 'Nhớt Ipone 10.4 10W40', 185000, 100, 0, b'1', 6),
(66, 'Nhớt Repsol Smarter Scooter 4T 5W-40 1L sản phẩm nhớt cho xe tay ga lý tưởng của tập đoàn nhớt Repsol.\nBảo vệ động cơ vượt trội, ổn định về độ nhớt, chống sự mài mòn trong điều kiện động cơ hoạt động trong quãng đường dài và liên tục.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671075895/products/zahonfnqr1nsirilidfp.jpg', 'Nhớt Repsol Smarter Scooter 4T 5W-40 1L', 215000, 98, 2, b'1', 6),
(67, 'Vỏ xe Champion SHR79 chính hãng 90/80-14 có nhiều gai kiểu Grip tách nước cực tốt, an toàn khi đi đường ướt, có thể gắn vừa xe AB, Vario, Click, Vision.\nVỏ xe Champion SHR79 chính hãng 90/80-14 được sản xuất tại Thái Lan.\nThương hiệu CHAMPION là của nhà máy Thai Sin Rubber Industry (TSR) được thành lập vào năm 1963, tính theo thời điểm năm 2021 là đã tròn 58 tuổi vững mạnh trên thị trường THAILAND và các thị trường xuất khẩu quốc tế. CHAMPION nổi tiếng cho ra những sản phẩm hạng nặng như Lốp Xe cho xe Container, Xe Tải, Xe Bus, Xe Ô TÔ, Xe Máy, Xe Đạp... Chất lượng đạt chứng chỉ E-Mark (Quy định sản phẩm đáp ứng An Toàn và Môi Trường do Châu Âu cấp phép, trên vỏ có logo E4).\nCHAMPION đang dẫn đầu số 1 tại THAILAND về ngành công nghiệp sản xuất Lốp Xe từ hạng nặng cho đến hạng nhẹ.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671076539/products/t6aqobzel0ilxmieqzk3.jpg', 'Vỏ xe Champion SHR79 chính hãng 90/80-14', 435000, 100, 0, b'1', 7),
(68, 'Vỏ Dunlop 120/80-16 Scoot Smart 2 chính hãng Indonesia dành cho bánh sau xe Honda SH125 và 150 các đời.\nVỏ Dunlop 120/80-16 Scoot Smart 2 thiết kế mới gai khá nhiều, dày, bám đường cực tốt khi đi cua và thoát nước cực tốt trên đường ướt, ưu điểm so với mẫu gai Scoot Smart cũ là độ bền tăng 20% và hiệu suất của vỏ tăng 10%.', 6, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671076713/products/ed8jmlxuwnuzywaft6ik.jpg', 'Vỏ Dunlop 120/80-16 Scoot Smart 2', 1420000, 100, 0, b'1', 7),
(69, 'Vỏ Dunlop 100/80-16 Scoot Smart 2 chính hãng Indonesia dành cho bánh trước xe Honda SH, ngoài ra có thể gắn cho xe Liberty, Medley.\nVỏ Dunlop 100/80-16 Scoot Smart 2 thiết kế mới gai khá nhiều, dày, bám đường cực tốt khi đi cua và thoát nước cực tốt trên đường ướt, ưu điểm so với mẫu gai Scoot Smart cũ là độ bền tăng 20% và hiệu suất của vỏ tăng 10%.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671076883/products/n3c73w5h1gkj1day0jaf.jpg', 'Vỏ Dunlop 100/80-16 Scoot Smart 2', 1100000, 100, 0, b'1', 7),
(70, 'Vỏ Michelin City Extra 60/90-17, một sản phẩm mới của thương hiệu nổi tiếng Michelin, thiết kế dành cho các cung đường ẩm ướt. Sản phẩm được lấy công nghệ từ vỏ dòng vỏ Pilot Road 4 và Road 5 các dòng xe PKL của Michelin.\nVỏ Michelin City Extra 60/90-17 có độ ổn định và khả năng xử lý nước trên đường tuyệt vời nhờ các rãnh gai nhỏ trên bề mặt vỏ, rãnh gai nhỏ tiếp xúc với mặt đường ướt và xé ra 2 bên trong lúc vận hành, giúp xe không trơn trượt một cách hiệu quả.\nCông nghệ mật độ cao được hỗ trợ bởi 3 lớp bố được gia cường để tăng khả năng chống đinh, chống đâm thủng.\nVỏ Michelin City Extra 60/90-17 gắn được các dòng xe Wave, Dream, Future... được sản xuất chính hãng Michelin.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671076929/products/lvehdfonex8aocjn83wu.jpg', 'Vỏ Michelin City Extra 60/90-17', 500000, 99, 1, b'1', 7),
(71, 'Vỏ Michelin City Extra 70/90-17, một sản phẩm mới của thương hiệu nổi tiếng Michelin, thiết kế dành cho các cung đường ẩm ướt. Sản phẩm được lấy công nghệ từ vỏ dòng vỏ Pilot Road 4 và Road 5 các dòng xe PKL của Michelin.\nVỏ Michelin City Extra 70/90-17 có độ ổn định và khả năng xử lý nước trên đường tuyệt vời nhờ các rãnh gai nhỏ trên bề mặt vỏ, rãnh gai nhỏ tiếp xúc với mặt đường ướt và xé ra 2 bên trong lúc vận hành, giúp xe không trơn trượt một cách hiệu quả.\nCông nghệ mật độ cao được hỗ trợ bởi 3 lớp bố được gia cường để tăng khả năng chống đinh, chống đâm thủng.\nVỏ Michelin City Extra 70/90-17 gắn được các dòng xe Wave, Dream, Future... được sản xuất chính hãng Michelin.', 1, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671076994/products/bqabydjdnp2uzr2ak4ju.jpg', 'Vỏ Michelin City Extra 70/90-17', 615000, 99, 1, b'1', 7),
(72, 'Vỏ Michelin City Extra 80/90-17, một sản phẩm mới của thương hiệu nổi tiếng Michelin, thiết kế dành cho các cung đường ẩm ướt. Sản phẩm được lấy công nghệ từ vỏ dòng vỏ Pilot Road 4 và Road 5 các dòng xe PKL của Michelin.\nVỏ Michelin City Extra 80/90-17 có độ ổn định và khả năng xử lý nước trên đường tuyệt vời nhờ các rãnh gai nhỏ trên bề mặt vỏ, rãnh gai nhỏ tiếp xúc với mặt đường ướt và xé ra 2 bên trong lúc vận hành, giúp xe không trơn trượt một cách hiệu quả.\nCông nghệ mật độ cao được hỗ trợ bởi 3 lớp bố được gia cường để tăng khả năng chống đinh, chống đâm thủng.\nVỏ Michelin City Extra 80/90-17 gắn được các dòng xe Wave, Dream, Future... được sản xuất chính hãng Michelin.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077043/products/v6f831h9t4mdjasw5nmj.jpg', 'Vỏ Michelin City Extra 80/90-17', 772000, 50, 0, b'1', 7),
(73, 'Vỏ xe ContiScoot 110/70-12 có thể gắn vừa xe MSX, Vespa, Grande,....\nContiScoot - Dòng vỏ xe tay ga cao cấp ưu việt mới của thương hiệu lốp Continental nổi tiếng.\nVỏ xe Continental ContiScoot 110/70-12 được kế thừa thiết kế hoa gai ContiRoadAttack3 hoàn hảo dành cho dòng xe moto Sport Touring hiệu suất cao, với nhiều ưu điểm nổi bật: Hiệu suất bám đường ướt cao, an toàn, linh hoạt, thoải mái & bền bỉ.\nVỏ ContiScoot nhập khẩu SOUTH KOREA.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077107/products/hjfqojhlctdc4xyrtegx.jpg', 'Vỏ xe ContiScoot 110/70-12', 1050000, 50, 0, b'1', 7),
(74, 'Vỏ xe Timsun 110/70-17 TS823 là dòng vỏ xe đạt tiêu chuẩn cao cấp, đạt độ bền, khả năng chịu tải và tốc độ tối đa đều cao hơn tiêu chuẩn quốc tế 30%. Thương hiệu Timsun ra đời năm 2006 cùng với nhiều sản phẩm đột phá, chất lượng nên đã riêng cho mình thương hiệu uy tín, sản phẩm rất được ưa chuộng tại thị trường Nhật Bản.\nVỏ xe Timsun đi đầu về việc xoá bỏ định kiến xấu của cả thế giới bởi sản phẩm Made in China bằng những loại vỏ xe cao cấp, chất lượng với độ bám đường và độ bền tuyệt đối.\nVỏ xe Timsun 110/70-17 TS823 chính hãng xuất xứ China, có thể gắn nhiều loại xe số thể thao như Exciter, Winner...', 3, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077260/products/qharvflaxsbg67qv06dn.jpg', 'Vỏ xe Timsun 110/70-17 TS823 chính hãng', 1250000, 20, 0, b'1', 7),
(75, 'Nắp nhớt inox Salaya cho Honda, Yamaha, thiết kế inox rất chắc chắn, sáng bóng theo thời gian, giá thành hợp lí, dùng để thay thế nắp nhớt zin cũ kỹ hoặc làm món phụ tùng trang trì cực chất.\nNắp nhớt inox Salaya cho có thể gắn vừa các dòng xe Honda, Yamaha.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077349/products/mxydfaeb5aypifnygbov.jpg', 'Nắp nhớt inox Salaya cho các dòng xe Honda, Yamaha', 7500, 100, 0, b'1', 8),
(76, 'Đèn phản quang Zhi.Pat SH350i (mắt mèo vuông). Sử dụng cho tất cả các dòng xe: Honda - Yamaha.\n- Bộ sản phẩm có 03 màu: Đỏ, Cam, Trắng.\n- Sản phẩm gắn như zin. Chính hãng Zhi.Pat.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077394/products/bymqcyzuwwdogly3bq1b.jpg', 'Đèn phản quang Zhi.Pat SH350i (mắt mèo vuông) cho các dòng xe', 250000, 12, 3, b'1', 8),
(77, 'Bộ sản phẩm Dè trước Zhi.Pat SH350i sử dụng cho các dòng xe: Honda SHVN 125i-150i-160i 2020 - 2023\n- Bộ sản phẩm có 04 màu: Đen bóng, đỏ, trắng, xám.\n- Hai bên hông dè được phối mắt mèo chữ nhật nổi bật.\n- Sản phẩm gắn như zin. Chính hãng Zhi.Pat.', 5, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077437/products/r2bo4tsekfuiorjaaxby.jpg', 'Dè trước Zhi.Pat SH350i cho SHVN 125i-150i-160i 2020 - 2023', 650000, 48, 2, b'1', 8),
(78, 'Bộ sản phẩm đèn pha Led 2 tầng Zhi.Pat W110 THA\n+ Sử dụng cho các dòng xe : Xe Wave 100/110/110S đời 1997-2004\n+ Sản phẩm có 03 mẫu:\n- Chóa đèn màu khói - định vị tím\n- Chóa đèn màu khói - định vị xanh\n- Chóa đèn màu khói - định vị đỏ\n+ Bảo hành chính hãng 12 tháng 1 đổi 1', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077546/products/ho7sltx5zend5mvexqug.jpg', 'Đèn pha Led 2 tầng Zhi.Pat W110 THA cho Wave 100/110/110S đời 1997 - 2004', 1180000, 100, 0, b'1', 8),
(79, 'Bao tay CRG viền nhôm mẫu mới, thiết kế đẹp mắt, cao su mềm chắc tạo cảm giác lái an toàn, 2 đầu có viền nhôm hạn chế trượt bao tay về lâu dài.\nBao tay CRG viền nhôm có nhiều màu cho khách lựa chọn và gắn được tất cả dòng xe máy.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077588/products/zb9z9e5vz8sr4jopwj2w.jpg', 'Bao tay CRG viền nhôm', 220000, 20, 0, b'1', 8),
(80, '- Kính chiếu hậu Mview 009 có góc quan sát rộng cho bạn tầm nhìn tốt, rõ ràng hoạt động phía sau\n- Kính Mview 009 với chất liệu kim loại nhôm CNC cao cấp, bền đẹp, cao cấp hơn nhiều so với vật liệu nhựa bình thường\n- Kính chiếu hậu Mview 009 gắn được cho tất cả các loại xe. Có 2 màu: Đen hoặc bạc.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077739/products/dzjrblklzlpyf62zfv3f.jpg', 'Kính chiếu hậu Mview 009', 300000, 100, 0, b'1', 8),
(81, 'Tay thắng CNC mẫu mới nhất dành cho Honda AB 160, PCX 160... CNC đẹp mắt, chi tiết sắc xảo, được rất nhiều khách hàng lựa chọn. Tay thắng có thể tăng chỉnh biên độ xa gần, phù hợp cho nhiều người chống mỏi khi đi xa.\nTay thắng CNC cho Honda AB 160, PCX 160 có 2 màu: Đen full và đen phối xám Titan.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077848/products/sq7o2idku7bpsnhgldqr.jpg', 'Tay thắng CNC cho Honda AB 160, PCX 160', 1450000, 100, 0, b'1', 8),
(82, 'Móc treo đồ CNC cho Honda SH, Lead, Scoopy.... và nhiều loại xe khác, với thiết kế nhôm CNC cực đẹp, móc chắc chắn, treo đồ cực tốt.\nMóc treo đồ CNC có nhiều màu cho khách lựa chọn.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077890/products/s4pwfftxq7dvxizchf9n.jpg', 'Móc treo đồ CNC cho Honda SH, Lead,..', 320000, 100, 0, b'1', 8),
(83, 'Chóa đèn xinhan CRYPTON X135 cho Exciter 135 (2005 - 2010), Spark 135. Chính hãng Zhi.pat\nSở hữu được vẻ đẹp thể thao, mạnh mẽ đầy sự cuốn hút, giúp chiếc của bạn trở nên nổi trội hơn, khả năng thông báo tín hiệu lẫn định vị chiếc xe cũng được gia tăng đáng kể.\n- Chóa TRẮNG BẠC phối màu: Cam/ Đỏ/ Xanh rêu/Xanh dương/Trắng.\nBảo hành 12 tháng 1 đổi 1.\nLưu ý: Dùng dây và bóng zin theo xe.', 3, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077948/products/pyvmqlpvd8lkilprv9m2.jpg', 'Chóa bạc Xinhan Zhi.Pat Crypton cho Exciter 135 (4 số)', 480000, 40, 0, b'1', 8),
(84, 'Bộ đầu đèn Zhi.Pat VS110 2022 sử dụng để nâng cấp cho dòng xe Honda Vision 2014 - 2019 bao gồm:\n+ Đèn led 2 tầng ZHI.PAT 2021 - 2022\n+ Bợ Cổ có 2 màu: Đen nhám & Nâu\n+ Ốp đầu đèn: Trắng & Đỏ & Đen mờ\nSản phẩm chính hãng Zhi.pat. Bảo hành 12 tháng.', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671077991/products/lqqhvotjigzpp6vmpr2u.jpg', 'Bộ đầu đèn Zhi.Pat VS110 2022 cho Vision 2014 - 2019', 1480000, 100, 0, b'1', 8),
(85, 'Chóa đèn xinhan CRYPTON X135 cho Exciter 135 (2005 - 2010), Spark 135. Chính hãng Zhi.pat\nSở hữu được vẻ đẹp thể thao, mạnh mẽ đầy sự cuốn hút, giúp chiếc của bạn trở nên nổi trội hơn, khả năng thông báo tín hiệu lẫn định vị chiếc xe cũng được gia tăng đáng kể.\n- Chóa ĐEN KHÓI phối màu: Cam/ Đỏ/ Xanh rêu/Xanh dương.\nBảo hành 12 tháng 1 đổi 1.\nLưu ý: Dùng dây và bóng zin theo xe', 0, '2022-12-15', 'https://res.cloudinary.com/martfury/image/upload/v1671078041/products/l91zfjcgi4qjry3f96zw.jpg', 'Chóa đen Xinhan Zhi.Pat Crypton cho Exciter 135 (4 số)', 380000, 50, 0, b'1', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `rate_date` datetime DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `order_detail_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rates`
--

INSERT INTO `rates` (`id`, `comment`, `rate_date`, `rating`, `order_detail_id`, `product_id`, `user_id`) VALUES
(45, 'đẹp', '2022-12-15 18:01:24', 5, 85, 77, 8),
(46, 'cũng tạm được', '2022-12-15 18:01:24', 5, 86, 71, 8),
(47, 'hơi dỏm xíu', '2022-12-15 18:01:24', 3, 87, 76, 8),
(48, 'hfggf', '2022-12-15 18:04:49', 3, 89, 76, 8),
(49, 'xài tốt', '2022-12-15 18:09:58', 5, 90, 26, 8),
(50, 'kkk', '2022-12-15 18:16:45', 2, 91, 76, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `address`, `email`, `gender`, `image`, `name`, `password`, `phone`, `register_date`, `status`, `token`) VALUES
(2, 'Gia Lai', 'shop2wheel@gmail.com', b'1', 'https://res.cloudinary.com/martfury/image/upload/v1670039300/users/owboc66fuwofvwexwzal.png', 'Admin Shop2Wheel', '$2a$10$yvcT5zT/lDrM89Lofss6GeF0icqluuVVxo2QX4BehAh75k.eAzFIe', '0967291997', '2022-03-20', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJncmVlbnlzaG9wLmFkbUBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY0Nzc4MjE4MywiZXhwIjoxNjQ3ODAwMTgzfQ.cLQLN6HPjClhuJFdBro1WHKEKfA7wYbBa3Eg3uHfNAE'),
(8, 'Gia Lai', 'dinhngocminhhieu2@gmail.com', b'0', 'https://res.cloudinary.com/martfury/image/upload/v1671078687/users/wmcrjlasr6tkm8ktlgqe.jpg', 'HIếu', '$2a$10$XgSeaaphEBgYLVIwO69XJ.JBJFNG4W4ZPiK5p5uCgGNmsAOiqgiVG', '0984624854', '2022-12-15', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJkaW5obmdvY21pbmhoaWV1MkBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY3MTA3ODY4OSwiZXhwIjoxNjcxMDk2Njg5fQ.dtce13nf1NVPDIR6J7TUnmd51WerfDlPHV4exEAVPIk');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2),
(8, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `app_roles`
--
ALTER TABLE `app_roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `FKb5o626f86h46m4s7ms6ginnop` (`user_id`);

--
-- Chỉ mục cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`cart_detail_id`),
  ADD KEY `FKkcochhsa891wv0s9wrtf36wgt` (`cart_id`),
  ADD KEY `FK9rlic3aynl3g75jvedkx84lhv` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `FK6sgu5npe8ug4o42bf9j71x20c` (`product_id`),
  ADD KEY `FKk7du8b8ewipawnnpg76d55fus` (`user_id`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  ADD KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`);

--
-- Chỉ mục cho bảng `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKoesgfm245y1ula1pn74fw9mkk` (`order_detail_id`),
  ADD KEY `FK4mdsmkrr7od84tpgxto2v3t2e` (`product_id`),
  ADD KEY `FKanlgavwqngljux10mtly8qr6f` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKihg20vygk8qb8lw0s573lqsmq` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `app_roles`
--
ALTER TABLE `app_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favorite_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `FK9rlic3aynl3g75jvedkx84lhv` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKkcochhsa891wv0s9wrtf36wgt` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`);

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `FK6sgu5npe8ug4o42bf9j71x20c` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKk7du8b8ewipawnnpg76d55fus` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Các ràng buộc cho bảng `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `FK4mdsmkrr7od84tpgxto2v3t2e` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKanlgavwqngljux10mtly8qr6f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `FKoesgfm245y1ula1pn74fw9mkk` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`order_detail_id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `FKihg20vygk8qb8lw0s573lqsmq` FOREIGN KEY (`role_id`) REFERENCES `app_roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
