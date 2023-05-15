

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `souq`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`user_id`, `product_id`, `quantity`) VALUES
(11, 1, 1),
(11, 2, 1),
(24, 3, 1),
(24, 4, 1),
(24, 5, 2),
(25, 1, 1),
(27, 2, 1),
(29, 3, 2),
(29, 5, 1),
(30, 2, 1),
(30, 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorite`
--

CREATE TABLE `favorite` (
  `favorite_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `favorite`
--

INSERT INTO `favorite` (`favorite_id`, `user_id`, `product_id`) VALUES
(115, 25, 1),
(114, 25, 2),
(117, 25, 3),
(116, 25, 4),
(140, 26, 3),
(147, 26, 4),
(138, 26, 7),
(142, 26, 9),
(148, 30, 61);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `history`
--

INSERT INTO `history` (`history_id`, `user_id`, `product_id`) VALUES
(173, 26, 2),
(164, 26, 3),
(167, 26, 4),
(181, 26, 5),
(166, 26, 6),
(165, 26, 7),
(175, 26, 8),
(188, 26, 9),
(172, 26, 10),
(274, 29, 3),
(275, 29, 5),
(278, 30, 2),
(276, 30, 5),
(277, 30, 61),
(282, 31, 3),
(285, 31, 4),
(289, 31, 5),
(283, 31, 7),
(292, 31, 8),
(297, 31, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordering`
--

CREATE TABLE `ordering` (
  `ordering_id` int(11) NOT NULL,
  `order_number` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` text DEFAULT NULL,
  `name_on_card` text DEFAULT NULL,
  `card_number` text DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `ordering`
--

INSERT INTO `ordering` (`ordering_id`, `order_number`, `order_date`, `status`, `name_on_card`, `card_number`, `expiration_date`, `user_id`, `product_id`, `quantity`, `address`, `phone`) VALUES
(96, 786399, '2023-05-14', '1', 'Thanh', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', '0000-00-00', 26, 5, 1, '1', '1'),
(97, 703901, '2023-05-14', '2', 'Thanh', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '0000-00-00', 26, 5, 1, 'yyyyyyy', '000000'),
(98, 205646, '2023-05-14', '2', 'Thanh', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '0000-00-00', 26, 3, 1, 'qer', 'wry'),
(104, 306198, '2023-05-14', '1', 'Thanh', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '0000-00-00', 26, 10, 1, 'yhf', 'xbfy'),
(105, 669192, '2023-05-14', '1', 'Thanh', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '0000-00-00', 26, 5, 1, 'huhhh', '8575'),
(106, 990915, '2023-05-14', '1', 'Thanh', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '0000-00-00', 26, 9, 1, '123', '123'),
(107, 141946, '2023-05-14', '4', 'Thanh', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', '0000-00-00', 26, 6, 1, 'test', 'test'),
(108, 273598, '2023-05-14', '1', 'Thanh', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', '0000-00-00', 26, 4, 3, 'test', 'test'),
(109, 586893, '2023-05-14', '1', 'Thanh', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', '0000-00-00', 26, 5, 1, 'test', 'test'),
(110, 897578, '2023-05-14', '1', 'Thanh', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', '0000-00-00', 26, 5, 1, 'test', 'test'),
(111, 786152, '2023-05-15', '1', 'Thanh', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '0000-00-00', 26, 3, 1, '123', '123'),
(112, 833901, '2023-05-15', '1', 'Thanh', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '0000-00-00', 26, 3, 1, 'yyy', 'rrr'),
(113, 111076, '2023-05-15', '1', 'thanh80007', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '0000-00-00', 31, 5, 1, 'qwe', 'qwe'),
(114, 945223, '2023-05-15', '1', 'thanh80007', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '0000-00-00', 31, 5, 1, '124', '125'),
(115, 527524, '2023-05-15', '1', 'thanh80007', '0f8ef3377b30fc47f96b48247f463a726a802f62f3faa03d56403751d2f66c67', '0000-00-00', 31, 8, 1, '124', '125fdhc'),
(116, 224083, '2023-05-15', '1', 'thanh80007', '0f8ef3377b30fc47f96b48247f463a726a802f62f3faa03d56403751d2f66c67', '0000-00-00', 31, 5, 1, '124', '125'),
(117, 224083, '2023-05-15', '1', 'thanh80007', '0f8ef3377b30fc47f96b48247f463a726a802f62f3faa03d56403751d2f66c67', '0000-00-00', 31, 4, 1, '124', '125'),
(118, 224083, '2023-05-15', '1', 'thanh80007', '0f8ef3377b30fc47f96b48247f463a726a802f62f3faa03d56403751d2f66c67', '0000-00-00', 31, 8, 1, '124', '125'),
(119, 224083, '2023-05-15', '1', 'thanh80007', '0f8ef3377b30fc47f96b48247f463a726a802f62f3faa03d56403751d2f66c67', '0000-00-00', 31, 10, 1, '124', '125'),
(120, 478629, '2023-05-15', '1', 'thanh80007', '0f8ef3377b30fc47f96b48247f463a726a802f62f3faa03d56403751d2f66c67', '0000-00-00', 31, 5, 1, '124', '125'),
(121, 564882, '2023-05-15', '1', 'thanh80007', '0f8ef3377b30fc47f96b48247f463a726a802f62f3faa03d56403751d2f66c67', '0000-00-00', 31, 7, 1, '124', '125');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `poster`
--

CREATE TABLE `poster` (
  `poster_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `poster`
--

INSERT INTO `poster` (`poster_id`, `image`) VALUES
(4, 'storage_poster\\1.jpg'),
(5, 'storage_poster\\2.jpg'),
(6, 'storage_poster\\3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` text DEFAULT NULL,
  `price` double(11,2) NOT NULL,
  `priceold` double(11,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sold` int(11) DEFAULT NULL,
  `supplier` text NOT NULL,
  `image` text NOT NULL,
  `category` text NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `trademark` text DEFAULT NULL,
  `origin` text DEFAULT NULL,
  `sex` text DEFAULT NULL,
  `skinproblems` text DEFAULT NULL,
  `addtocart` int(11) DEFAULT 0,
  `addtofavorite` int(11) DEFAULT 0,
  `share` int(11) DEFAULT NULL,
  `rain` int(11) DEFAULT 0,
  `active` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_name`, `price`, `priceold`, `quantity`, `sold`, `supplier`, `image`, `category`, `description`, `trademark`, `origin`, `sex`, `skinproblems`, `addtocart`, `addtofavorite`, `share`, `rain`, `active`) VALUES
(1, 'S?a r?a m?t', 150000.00, 160000.00, 100, 80, 'LOreal', 'storage_product/6.jpg', 'Makeup', 'Son môi ch?t l??ng cao', 'LOreal', 'Pháp', 'N?', 'Không', 100, 10, 7, 5, 0),
(2, 'Kem d??ng da', 250000.00, 350000.00, 50, 70, 'Neutrogena', 'storage_product/6.jpg', 'Makeup', 'Kem d??ng ?m lành tính', 'Neutrogena', 'M?', 'Nam/N?', 'Khô da', 101, 9, 7, 4, 0),
(3, 'S?a r?a m?t', 150000.00, 120000.00, 80, 70, 'The Face Shop', 'storage_product/6.jpg', 'Skincare', 'Skincare', 'The Face Shop', 'Hàn Qu?c', 'Nam/N?', 'M?n', 102, 8, 7, 4, 1),
(4, 'Kem ch?ng n?ng', 180000.00, 250000.00, 70, 60, 'La Roche Posay', 'storage_product/7.jpg', 'Skincare', 'Kem ch?ng n?ng chuyên sâu', 'La Roche Posay', 'Pháp', 'Nam/N?', 'Không', 103, 7, 7, 4, 1),
(5, 'Mascara', 200000.00, 350000.00, 60, 55, 'Maybelline', 'storage_product/8.jpg', 'Makeup', 'Mascara t?o mi dày và dài', 'Maybelline', 'M?', 'N?', 'Không', 104, 6, 7, 4, 1),
(6, 'N??c hoa', 300000.00, 350000.00, 40, 40, 'Chanel', 'storage_product/9.jpg', 'Skincare', 'H??ng th?m tinh t?', 'Chanel', 'Pháp', 'Nam/N?', 'Không', 105, 5, 7, 4, 1),
(7, 'Ph?n n??c', 220000.00, 550000.00, 49, 29, 'MAC', 'storage_product/10.jpg', 'Makeup', 'Ph?n n??c che khuy?t ?i?m hoàn h?o', 'MAC', 'M?', 'N?', 'Không', 106, 4, 7, 4, 1),
(8, 'T?y trang', 150000.00, 250000.00, 90, 20, 'Garnier', 'storage_product/11.jpg', 'Skincare', 'T?y trang nh? nhàng không gây kích ?ng', 'Garnier', 'Pháp', 'Nam/N?', 'Không', 107, 3, 7, 4, 1),
(9, 'Son môi', 170000.00, 250000.00, 80, 9, 'Dior', 'storage_product/12.jpg', 'Makeup', 'Son môi ch?t l??ng cao', 'Dior', 'Pháp', 'N?', 'Không', 108, 2, 7, 4, 1),
(10, 'Son môi Oreal Rouge Signature', 250000.00, 350000.00, 10, 7, 'LOreal', 'storage_product/14.jpg', 'Son môi', 'Son lì m?n màng v?i tông màu ?? t??i tr? trung', 'LOreal', 'Pháp', 'N?', 'Không', 109, 1, 7, 4, 1),
(61, '11', 1.00, 1.00, 11, 90, '2q', 'storage_product\\1684086632829FB_IMG_1684079506482.jpg', 'qw', '', 'qq', 'ww', 'ww', 'ww', 0, 0, 0, 0, 0),
(62, '1', 1.00, 1.00, 0, 0, '', 'storage_product\\1684086711059FB_IMG_1684079506482.jpg', '', '', '', '', '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `feedback` varchar(150) DEFAULT NULL,
  `rate` float(11,1) DEFAULT NULL,
  `review_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `review`
--

INSERT INTO `review` (`review_id`, `user_id`, `product_id`, `feedback`, `rate`, `review_date`) VALUES
(247, 26, 6, '?g', 2.0, '2023-05-13'),
(249, 26, 5, 'gff', 1.5, '2023-05-13'),
(266, 26, 7, 'fvhy', 3.5, '2023-05-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `zip` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `address`, `city`, `country`, `zip`, `phone`, `user_id`, `product_id`, `order_number`) VALUES
(318, '123', 'HCM', 'Vi?t Nam', '123', '123', 26, 3, NULL),
(319, 'qer', 'HCM', 'Vi?t Nam', '123', 'wry', 26, 3, NULL),
(320, 'd?t', 'HCM', 'Vi?t Nam', '123', 'hhhhh', 26, 3, NULL),
(321, 'd?t', 'HCM', 'Vi?t Nam', '123', 'hhhhh', 26, 3, NULL),
(322, 'hhhh', 'HCM', 'Vi?t Nam', '123', 'hhhhh', 26, 3, NULL),
(323, 'hhhh', 'HCM', 'Vi?t Nam', '123', 'hhhhh', 26, 3, NULL),
(324, 'kkkkk', 'HCM', 'Vi?t Nam', '123', '07966', 26, 5, NULL),
(325, '1', 'HCM', 'Vi?t Nam', '123', '1', 26, 5, NULL),
(326, 'yyyyyyy', 'HCM', 'Vi?t Nam', '123', '000000', 26, 5, NULL),
(327, '', 'HCM', 'Vi?t Nam', '123', '', 26, 3, NULL),
(328, '', 'HCM', 'Vi?t Nam', '123', '', 26, 5, NULL),
(329, '', 'HCM', 'Vi?t Nam', '123', '', 26, 5, NULL),
(330, '', 'HCM', 'Vi?t Nam', '123', '', 26, 7, NULL),
(331, '', 'HCM', 'Vi?t Nam', '123', '', 26, 9, NULL),
(332, 'hhh', 'HCM', 'Vi?t Nam', '123', 'ghhh', 26, 8, NULL),
(333, 'yhf', 'HCM', 'Vi?t Nam', '123', 'xbfy', 26, 10, NULL),
(334, 'huhhh', 'HCM', 'Vi?t Nam', '123', '8575', 26, 5, NULL),
(335, '123', 'HCM', 'Vi?t Nam', '123', '123', 26, 9, NULL),
(336, 'test', 'HCM', 'Vi?t Nam', '123', 'test', 26, 6, NULL),
(337, 'test', 'HCM', 'Vi?t Nam', '123', 'test', 26, 4, NULL),
(338, 'test', 'HCM', 'Vi?t Nam', '123', 'test', 26, 5, NULL),
(339, 'test', 'HCM', 'Vi?t Nam', '123', 'test', 26, 5, NULL),
(340, 'x', 'HCM', 'Vi?t Nam', '123', 'v', 30, 2, NULL),
(341, 'x', 'HCM', 'Vi?t Nam', '123', 'v', 30, 5, NULL),
(342, 'x', 'HCM', 'Vi?t Nam', '123', 'v', 30, 2, NULL),
(343, 'x', 'HCM', 'Vi?t Nam', '123', 'v', 30, 5, NULL),
(344, 'x', 'HCM', 'Vi?t Nam', '123', 'v', 30, 5, NULL),
(345, 'x', 'HCM', 'Vi?t Nam', '123', 'v', 30, 2, NULL),
(346, 'x', 'HCM', 'Vi?t Nam', '123', 'v', 30, 2, NULL),
(347, 'x', 'HCM', 'Vi?t Nam', '123', 'v', 30, 5, NULL),
(348, 'x', 'HCM', 'Vi?t Nam', '123', 'v', 30, 2, NULL),
(349, 'x', 'HCM', 'Vi?t Nam', '123', 'v', 30, 5, NULL),
(350, '123', 'HCM', 'Vi?t Nam', '123', '123', 26, 3, NULL),
(351, 'yyy', 'HCM', 'Vi?t Nam', '123', 'rrr', 26, 3, NULL),
(352, 'qwe', 'HCM', 'Vi?t Nam', '123', 'qwe', 31, 5, NULL),
(353, '124', 'HCM', 'Vi?t Nam', '123', '125', 31, 5, NULL),
(354, '124', 'HCM', 'Vi?t Nam', '123', '125fdhc', 31, 8, NULL),
(355, '124', 'HCM', 'Vi?t Nam', '123', '125', 31, 4, NULL),
(356, '124', 'HCM', 'Vi?t Nam', '123', '125', 31, 5, NULL),
(357, '124', 'HCM', 'Vi?t Nam', '123', '125', 31, 8, NULL),
(358, '124', 'HCM', 'Vi?t Nam', '123', '125', 31, 10, NULL),
(359, '124', 'HCM', 'Vi?t Nam', '123', '125', 31, 5, NULL),
(360, '124', 'HCM', 'Vi?t Nam', '123', '125', 31, 7, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `gender` text NOT NULL,
  `age` int(11) NOT NULL,
  `image` text NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `address` text DEFAULT '',
  `phone_number` text DEFAULT '',
  `isActive` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `gender`, `age`, `image`, `isAdmin`, `address`, `phone_number`, `isActive`) VALUES
(1, 'Ibrahiem', 'ub@yahoo.com', '$2b$10$LPcm3fgAlSVld2j5LJppQu1pepDUP6TDPrMmHbhR98R0XTwc51t/u', 'male', 20, '', 0, '', '', 1),
(2, 'Soha ALi', 'soha@gmail.com', '$2b$10$L425NpkGdt4xeU.xKzk3H.yDk6QAYz27UTRiRSzb7TLTywvFVScmO', '', 20, '', 0, '', '', 1),
(3, 'Hana', 'hana@gmail.com', '$2b$10$wS.5Tt9IwMrVTxYmzunxPeO89GHhE4n0U/3Tl9dRL.MAhypfEI79m', '', 0, '', 0, '', '', 1),
(4, 'Salma', 'salma@yahoo.com', '$2b$10$HJDIhG/9IjYDNaE4UnnAPO.oSNh84F1Z3eTWqUN5ScihSUm6nVK6y', '', 0, '', 0, '', '', 1),
(5, 'Rami', 'rami@gmail.com', '$2b$10$Se7Cq/jvuTHWX5mgiP.JKeALEhu2.3d/RnYovQnZEJatrvr.nDhFe', 'undertermined', 0, '', 0, '', '', 1),
(6, 'Noha', 'noha@gmail.com', '$2b$10$eixgjcRPslWalSIH.ydQkeO1//36x2EHyCuOJOBivNsnL2JLfObhq', 'undertermined', 0, '', 0, '', '', 1),
(7, 'Hala', 'hala@gmail.com', '$2b$10$YlR6KkjIZDdx5GCHubfhR.ZF7oyIh4pIH0jFYqe5hPhkorxBsws9W', 'undertermined', 0, '', 0, '', '', 1),
(10, 'Samah', 'samah@gmail.com', '$2b$10$nwzNWE7Tgh97o4.vhrUcouQsHtAZJIhTjwwNt5SCbrUy5MRlHtq0O', 'undertermined', 0, '', 0, '', '', 1),
(11, 'Nora', 'nora@gmail.com', '$2b$10$0DuvDVZV2haShCHS67yhtepXp1CycJ5u1HfOu0FMjPyfRPqjVGxxa', 'undertermined', 0, 'storage_user\\1582402749541flower.jpeg', 0, '', '', 1),
(12, 'Laila', 'laila@gmail.com', '$2b$10$izHdZQARIOI1BQC4xXIaT.I9uYHeHNeT5wdHEsePzkyITnBlT0Hie', 'undertermined', 0, 'storage_user\\1582408987863tinkerbell.jpg', 0, '', '', 1),
(13, 'Ramez', 'ramez@gmail.com', '$2b$10$BOCch/rDmv3nj.dXru/UuOx4OOgyAUHk7opdHR9juSNXU9yTJokVy', 'undertermined', 0, '', 0, '', '', 1),
(14, 'Yoyo', 'yoyo@gmail.com', '$2b$10$k/kCBPDTwL0XaklF4KNLSec8zstHr7F2fHxq9gW0N6vb/.t6JZLpy', 'undertermined', 0, '', 0, '', '', 1),
(16, 'Mahmoud', 'mahmoud@gmail.com', '$2b$10$Hg8gFwwq/0yRHUgSMqCwIOgpm6Cl8/KcxuDqzD0leC1LcNYmCpAfW', 'undertermined', 0, '', 0, '', '', 1),
(18, 'Noran', 'noran@gmail.com', '$2b$10$JnLybPmqZL62fTv7zDiL0Oo984GT0TRckJbATjGhgWpQvdF8xjkv.', 'undertermined', 0, '', 0, '', '', 1),
(21, 'Hadi', 'hadi@gmail.com', '$2b$10$LMnFEE1CicWWRo0ZEG93dOc4OIK15oWCgGt2/1z8/K4E6nf3KjnLm', 'undertermined', 0, '', 0, '', '', 1),
(23, 'Rania', 'rania@gmail.com', '$2b$10$B3QxKhzqRB5HvLA5/4MSA.M8cMW3R7nIaVsXD.FdSFzx6w6pcDckC', 'undertermined', 0, '', 0, '', '', 1),
(24, 'Marwa Eltayeb', 'marwa_eltayeb@yahoo.com', '$2b$10$TS95svgviRXseNqgQ5Bzr.O5zP8BGx2tNUx8qhObXv6ychDcNdye6', 'undertermined', 0, 'storage_user\\1583003208523tinkerbell.jpg', 1, '', '', 1),
(25, 'Nahla', 'nahla@gmail.com', '$2b$10$/XW7ccom7cb7L6N55MHtd.ITGNinMIt6kesSpq33EM3mnO.yX4Thu', 'female', 30, '', 0, '', '', 1),
(26, 'Thanh', 'thanh@gmail.com', '123456789', 'male', 20, '', 0, '', '', 1),
(27, 'Khang', 'khang@gmail.com', '12345678', 'male', 20, '', 1, '', '', 1),
(28, 'Chi', 'chi@gmail.com', '12345678', 'male', 20, '', 0, '', '', 1),
(29, 'Chi Bui', 'chi2002@gmail.com', '123456789', 'undertermined', 0, '', 0, '', '', 1),
(30, 'vohongkhang', 'khang2002@gmail.com', '12345678', 'undertermined', 0, '', 0, '', '', 1),
(31, 'thanh80007', 'thanh101@gmail.com', '123456789', 'undertermined', 0, '', 0, '124', '125', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD UNIQUE KEY `cart_constraint` (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD UNIQUE KEY `fav_constraint` (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `history_constraint` (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `ordering`
--
ALTER TABLE `ordering`
  ADD PRIMARY KEY (`ordering_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `poster`
--
ALTER TABLE `poster`
  ADD PRIMARY KEY (`poster_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD UNIQUE KEY `review_constraint` (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `favorite`
--
ALTER TABLE `favorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT cho bảng `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT cho bảng `ordering`
--
ALTER TABLE `ordering`
  MODIFY `ordering_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT cho bảng `poster`
--
ALTER TABLE `poster`
  MODIFY `poster_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT cho bảng `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ordering`
--
ALTER TABLE `ordering`
  ADD CONSTRAINT `ordering_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordering_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shipping_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
