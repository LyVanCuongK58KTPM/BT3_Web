-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: mariadb_service
-- Thời gian đã tạo: Th10 04, 2025 lúc 02:53 PM
-- Phiên bản máy phục vụ: 12.0.2-MariaDB-ubu2404
-- Phiên bản PHP: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `my_database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Điện tử'),
(2, 'Sách'),
(3, 'Đồ gia dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_address` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'pending' COMMENT 'pending, confirmed, packed...',
  `cod_code` varchar(50) DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `customer_phone`, `customer_address`, `order_date`, `status`, `cod_code`, `total_amount`, `user_id`) VALUES
(1, 'Khách Hàng A', '0912345678', '123 Đường ABC, Hà Nội', '2025-11-04 12:59:24', 'pending', NULL, 25450000.00, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_per_item` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price_per_item`) VALUES
(1, 1, 1, 1, 25000000.00),
(2, 1, 3, 1, 450000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sales_count` int(11) DEFAULT 0 COMMENT 'Đếm số lượt bán (bán chạy)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `sales_count`) VALUES
(1, 'Laptop EliteBook Pro', 25000000.00, 1, 150),
(2, 'Sách \"Lập trình Node-RED\"', 180000.00, 2, 300),
(3, 'Chuột không dây Logitech', 450000.00, 1, 250),
(4, 'Máy xay sinh tố Sharp', 800000.00, 3, 90),
(5, 'Sách \"JavaScript Nâng Cao\"', 220000.00, 2, 180),
(6, 'Tai nghe Bluetooth Sony WH-1000XM4', 2500000.00, 1, 220),
(7, 'Bàn phím cơ Fuhlen G900', 1200000.00, 1, 180),
(8, 'Smart TV Samsung 4K 55 inch', 14500000.00, 1, 75),
(9, 'Loa Bluetooth JBL Go 3', 950000.00, 1, 310),
(10, 'Sách \"Bí ẩn AI Cập Cổ Đại\"', 350000.00, 2, 95),
(11, 'Sách \"Nhà Giả Kim\"', 80000.00, 2, 500),
(12, 'Sách \"Atomic Habits\"', 150000.00, 2, 450),
(13, 'Nồi chiên không dầu Lock&Lock 5.2L', 2800000.00, 3, 110),
(14, 'Robot hút bụi Xiaomi Mi Robot Vacuum Mop 2', 5500000.00, 3, 130),
(15, 'Quạt cây Midea FS40-18C', 700000.00, 3, 200),
(16, 'Màn hình Dell UltraSharp 27\" 4K', 8500000.00, 1, 65),
(17, 'Apple AirPods Pro 2', 5200000.00, 1, 190),
(18, 'Ổ cứng SSD Samsung 980 Pro 1TB', 2300000.00, 1, 280),
(19, 'Sách \"Đắc Nhân Tâm\"', 75000.00, 2, 800),
(20, 'Sách \"Cha Giàu Cha Nghèo\"', 90000.00, 2, 750),
(21, 'Sách \"Tội Ác và Hình Phạt\"', 170000.00, 2, 110),
(22, 'Bình đun siêu tốc Philips', 650000.00, 3, 210),
(23, 'Bàn ủi hơi nước đứng', 1900000.00, 3, 85),
(24, 'Máy lọc không khí Xiaomi 4 Lite', 2100000.00, 3, 140),
(25, 'Bộ nồi Inox 5 món Sunhouse', 1100000.00, 3, 160);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL COMMENT 'Lưu mật khẩu dạng text (KHÔNG AN TOÀN)',
  `role` varchar(20) DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'Khách Hàng A', 'customer@gmail.com', '123456', 'customer'),
(2, 'Admin Cường', 'admin@gmail.com', '123456', 'admin'),
(3, 'Cường', 'cuong@gmail.com', '123456', 'customer'),
(4, 'Kiên', 'kien@gmail.com', '11062003', 'customer');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ràng buộc đối với các bảng kết xuất
--

--
-- Ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
