-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               8.0.17 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_demo_t3h
DROP DATABASE IF EXISTS `db_demo_t3h`;
CREATE DATABASE IF NOT EXISTS `db_demo_t3h` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_demo_t3h`;

-- Dumping structure for table db_demo_t3h.dbo_blog
DROP TABLE IF EXISTS `dbo_blog`;
CREATE TABLE IF NOT EXISTS `dbo_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_blog` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`blog_id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_blog_id` FOREIGN KEY (`user_id`) REFERENCES `dbo_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_blog: ~3 rows (approximately)
/*!40000 ALTER TABLE `dbo_blog` DISABLE KEYS */;
INSERT INTO `dbo_blog` (`blog_id`, `title`, `image_blog`, `content`, `user_id`, `created_date`) VALUES
	(1, 'Black Friday Guide: Best Sales & Discount Codes', '/link/no_image.jpg', 'Duis ut velit gravida nibh bibendum commodo. Sus-pendisse pellentesque mattis augue id euismod. Inter-dum et malesuada fames', 1, '2020-05-13 17:42:41'),
	(2, 'The White Sneakers Nearly Every Fashion Girls Own', '/link/no_image.jpg', 'Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit ame', 1, '2020-05-13 17:42:41'),
	(3, 'New York SS 2018 Street Style: Annina Mislin', '/link/no_image.jpg', 'Proin nec vehicula lorem, a efficitur ex. Nam vehicula nulla vel erat tincidunt, sed hendrerit ligula porttitor. Fusce sit amet maximus nunc', 1, '2020-05-13 17:42:41');
/*!40000 ALTER TABLE `dbo_blog` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_cart
DROP TABLE IF EXISTS `dbo_cart`;
CREATE TABLE IF NOT EXISTS `dbo_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_cart: ~19 rows (approximately)
/*!40000 ALTER TABLE `dbo_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_cart` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_cart_product
DROP TABLE IF EXISTS `dbo_cart_product`;
CREATE TABLE IF NOT EXISTS `dbo_cart_product` (
  `cart_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) DEFAULT NULL,
  `product_entity_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_product_id`),
  KEY `fk_cart_id` (`cart_id`),
  KEY `fk_product_entity_id` (`product_entity_id`),
  CONSTRAINT `fk_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `dbo_cart` (`cart_id`),
  CONSTRAINT `fk_product_entity_id1` FOREIGN KEY (`product_entity_id`) REFERENCES `dbo_product_entity` (`product_entity_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_cart_product: ~13 rows (approximately)
/*!40000 ALTER TABLE `dbo_cart_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_cart_product` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_category
DROP TABLE IF EXISTS `dbo_category`;
CREATE TABLE IF NOT EXISTS `dbo_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_category: ~4 rows (approximately)
/*!40000 ALTER TABLE `dbo_category` DISABLE KEYS */;
INSERT INTO `dbo_category` (`category_id`, `name`, `short_desc`, `created_date`) VALUES
	(1, 'Category 1', 'short desc 1', '2020-04-19 18:39:06'),
	(2, 'Category 2', 'short desc 2', '2020-04-19 18:39:20'),
	(3, 'Category 3', 'short desc 3', '2020-04-19 18:39:32'),
	(4, 'Category 4', 'short desc 4', '2020-04-19 18:39:41');
/*!40000 ALTER TABLE `dbo_category` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_color
DROP TABLE IF EXISTS `dbo_color`;
CREATE TABLE IF NOT EXISTS `dbo_color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_color: ~3 rows (approximately)
/*!40000 ALTER TABLE `dbo_color` DISABLE KEYS */;
INSERT INTO `dbo_color` (`color_id`, `name`, `short_desc`, `created_date`) VALUES
	(1, 'Blue', 'this is blue', '2020-05-05 10:34:39'),
	(2, 'Black', 'this is black', '2020-05-04 11:12:12'),
	(3, 'Red', 'this is red', '2020-05-04 11:12:16');
/*!40000 ALTER TABLE `dbo_color` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_delivery_status
DROP TABLE IF EXISTS `dbo_delivery_status`;
CREATE TABLE IF NOT EXISTS `dbo_delivery_status` (
  `delivery_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`delivery_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- Dumping data for table db_demo_t3h.dbo_delivery_status: ~0 rows (approximately)
/*!40000 ALTER TABLE `dbo_delivery_status` DISABLE KEYS */;
INSERT INTO `dbo_delivery_status` (`delivery_status_id`, `name`) VALUES
	(1, 'Chờ thanh toán'),
	(2, 'Chờ lấy hàng'),
	(3, 'Đang giao'),
	(4, 'Đã giao'),
	(5, 'Đã hủy');
/*!40000 ALTER TABLE `dbo_delivery_status` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_order
DROP TABLE IF EXISTS `dbo_order`;
CREATE TABLE IF NOT EXISTS `dbo_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `ship` decimal(10,2) DEFAULT NULL,
  `delivery_status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_delivery_status_id` (`delivery_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_order: ~26 rows (approximately)
/*!40000 ALTER TABLE `dbo_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_order` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_order_delivery_status
DROP TABLE IF EXISTS `dbo_order_delivery_status`;
CREATE TABLE IF NOT EXISTS `dbo_order_delivery_status` (
  `order_delivery_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `delivery_status_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`order_delivery_status_id`),
  KEY `foreign_key_order_id` (`order_id`) /*!80000 INVISIBLE */,
  KEY `fk_delivery_status_id` (`delivery_status_id`),
  CONSTRAINT `fk_delivery_status_id` FOREIGN KEY (`delivery_status_id`) REFERENCES `dbo_delivery_status` (`delivery_status_id`),
  CONSTRAINT `foreign_key_order_id` FOREIGN KEY (`order_id`) REFERENCES `dbo_order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_order_delivery_status: ~0 rows (approximately)
/*!40000 ALTER TABLE `dbo_order_delivery_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_order_delivery_status` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_order_product
DROP TABLE IF EXISTS `dbo_order_product`;
CREATE TABLE IF NOT EXISTS `dbo_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_entity_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_product_id`) USING BTREE,
  KEY `fk_order_id` (`order_id`),
  KEY `fk_order_product_entity_id` (`product_entity_id`) USING BTREE,
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `dbo_order` (`order_id`),
  CONSTRAINT `fk_order_product_entity_id` FOREIGN KEY (`product_entity_id`) REFERENCES `dbo_product_entity` (`product_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='		';

-- Dumping data for table db_demo_t3h.dbo_order_product: ~4 rows (approximately)
/*!40000 ALTER TABLE `dbo_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo_order_product` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_product
DROP TABLE IF EXISTS `dbo_product`;
CREATE TABLE IF NOT EXISTS `dbo_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_category_id` (`category_id`),
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `dbo_category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_product: ~5 rows (approximately)
/*!40000 ALTER TABLE `dbo_product` DISABLE KEYS */;
INSERT INTO `dbo_product` (`product_id`, `product_name`, `short_desc`, `main_image`, `category_id`, `price`, `brand`, `created_date`) VALUES
	(1, 'Product 1', 'Product 1 short description', '/link/no_image.jpg', 2, 176.76, 'Viet Nam', '2020-05-11 18:04:32'),
	(2, 'Product 2', 'Product 2 short description', '/link/no_image.jpg', 1, 72.36, 'Japan', '2020-04-19 18:04:32'),
	(3, 'Product 3', 'Product 3 short description', '/link/no_image.jpg', 2, 153.54, 'Viet Nam', '2020-04-19 19:36:14'),
	(4, 'Product 4', 'Product 4 short description', '/link/no_image.jpg', 1, 129.21, 'Viet Nam', '2020-04-19 19:36:46'),
	(5, 'Product 5', 'Product 5 short description', '/link/no_image.jpg', 3, 99.88, 'Japan', '2020-04-19 21:30:16');
/*!40000 ALTER TABLE `dbo_product` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_product_entity
DROP TABLE IF EXISTS `dbo_product_entity`;
CREATE TABLE IF NOT EXISTS `dbo_product_entity` (
  `product_entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `amount` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`product_entity_id`),
  KEY `fk_color_id` (`color_id`),
  KEY `fk_product_entity_id` (`product_id`),
  KEY `fk_size_id` (`size_id`),
  CONSTRAINT `fk_color_id` FOREIGN KEY (`color_id`) REFERENCES `dbo_color` (`color_id`),
  CONSTRAINT `fk_product_entity_id` FOREIGN KEY (`product_id`) REFERENCES `dbo_product` (`product_id`),
  CONSTRAINT `fk_size_id` FOREIGN KEY (`size_id`) REFERENCES `dbo_size` (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_product_entity: ~8 rows (approximately)
/*!40000 ALTER TABLE `dbo_product_entity` DISABLE KEYS */;
INSERT INTO `dbo_product_entity` (`product_entity_id`, `product_id`, `color_id`, `size_id`, `created_date`, `amount`) VALUES
	(1, 1, 1, 2, '2020-05-11 11:20:00', '2'),
	(2, 2, 3, 1, '2020-05-11 11:20:00', '3'),
	(3, 1, 1, 2, '2020-05-11 11:20:00', '2'),
	(4, 5, 3, 2, '2020-05-11 11:20:00', '5'),
	(5, 4, 2, 2, '2020-05-11 11:20:00', '4'),
	(6, 1, 2, 1, '2020-05-11 11:20:00', '6'),
	(7, 1, 1, 3, '2020-05-11 11:20:00', '2'),
	(8, 1, 3, 1, '2020-05-11 16:06:21', '1');
/*!40000 ALTER TABLE `dbo_product_entity` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_product_image
DROP TABLE IF EXISTS `dbo_product_image`;
CREATE TABLE IF NOT EXISTS `dbo_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`product_image_id`),
  KEY `fk_product_image_id` (`product_id`),
  CONSTRAINT `fk_product_image_id` FOREIGN KEY (`product_id`) REFERENCES `dbo_product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_product_image: ~6 rows (approximately)
/*!40000 ALTER TABLE `dbo_product_image` DISABLE KEYS */;
INSERT INTO `dbo_product_image` (`product_image_id`, `product_id`, `link`, `created_date`) VALUES
	(1, 1, '/link/no_image.jpg', '2020-05-11 11:18:46'),
	(2, 1, '/link/no_image.jpg', '2020-05-11 11:20:07'),
	(3, 1, '/link/no_image.jpg', '2020-05-11 11:20:07'),
	(4, 1, '/link/no_image.jpg', '2020-05-11 11:20:07'),
	(5, 1, '/link/no_image.jpg', '2020-05-11 11:20:07'),
	(6, 1, '/link/no_image.jpg', '2020-05-11 11:20:07');
/*!40000 ALTER TABLE `dbo_product_image` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_role
DROP TABLE IF EXISTS `dbo_role`;
CREATE TABLE IF NOT EXISTS `dbo_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_role: ~2 rows (approximately)
/*!40000 ALTER TABLE `dbo_role` DISABLE KEYS */;
INSERT INTO `dbo_role` (`role_id`, `name`) VALUES
	(1, 'ADMIN'),
	(2, 'USER');
/*!40000 ALTER TABLE `dbo_role` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_size
DROP TABLE IF EXISTS `dbo_size`;
CREATE TABLE IF NOT EXISTS `dbo_size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_size: ~2 rows (approximately)
/*!40000 ALTER TABLE `dbo_size` DISABLE KEYS */;
INSERT INTO `dbo_size` (`size_id`, `name`, `short_desc`, `created_date`) VALUES
	(1, '37', 'this is 37 size', '2020-05-04 11:11:00'),
	(2, '38', 'this is 38 size', '2020-05-04 11:11:08'),
	(3, '39', 'this is 39 size', '2020-05-04 11:11:12');
/*!40000 ALTER TABLE `dbo_size` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_user
DROP TABLE IF EXISTS `dbo_user`;
CREATE TABLE IF NOT EXISTS `dbo_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_user: ~2 rows (approximately)
/*!40000 ALTER TABLE `dbo_user` DISABLE KEYS */;
INSERT INTO `dbo_user` (`user_id`, `user_name`, `email`, `avatar`, `name`, `gender`, `address`, `password_hash`, `phone_number`, `created_date`) VALUES
	(1, 'trieu.ngoquang', 'ngoquangtrieu99tb@gmail.com', '/link/1591080332-d8f79f8c-0b9d-495a-8416-6decae8216ed.jpg', 'Son Goku', 1, '165 Cầu Giấy ,Hà Nội', '$2a$10$lf9f/Ma6kJzXp5OcnnqL..23TpHutRFubCAi4ADFVwZ3Cd8taySdm', '0373073645', '2020-06-02 13:45:32'),
	(2, 'trang.dothi', 'trang.dothi@vti.com.vn', NULL, 'Đỗ Thị Thu Trang', 0, NULL, '$2a$10$XPqnsZ.Q.1KprnC0SaZR4uhGWYdzLPlt96e/MgsbDYHHWbinAot/y', '', '2020-05-04 14:18:48');
/*!40000 ALTER TABLE `dbo_user` ENABLE KEYS */;

-- Dumping structure for table db_demo_t3h.dbo_user_role
DROP TABLE IF EXISTS `dbo_user_role`;
CREATE TABLE IF NOT EXISTS `dbo_user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `fk_role_id` (`role_id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `dbo_role` (`role_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `dbo_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_demo_t3h.dbo_user_role: ~3 rows (approximately)
/*!40000 ALTER TABLE `dbo_user_role` DISABLE KEYS */;
INSERT INTO `dbo_user_role` (`user_role_id`, `user_id`, `role_id`) VALUES
	(1, 1, 2),
	(2, 2, 2);
/*!40000 ALTER TABLE `dbo_user_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
