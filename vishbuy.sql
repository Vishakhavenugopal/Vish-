-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2022 at 06:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vishbuy`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `line1`, `line2`, `city`, `state`, `country`, `phone`, `pincode`, `user_id`) VALUES
(1, 'Vishakha V, NIE Men\'s Hostel', 'Ashokapuram,', 'Mysore', 'Karnataka', 'India', '6361724765', 570008, 1),
(2, '\"Ashirwad\" No.129 SBM Colony', 'B Katihalli Hassan', 'Hassan', 'Karnataka', 'India', '9535814539', 573201, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Shoes'),
(2, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`) VALUES
(7, 1),
(8, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(6, 2),
(42, 2),
(43, 2),
(44, 2),
(63, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 19);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 6, 27, 1),
(2, 6, 26, 1),
(3, 6, 49, 1),
(4, 7, 4, 1),
(5, 8, 38, 1),
(6, 8, 5, 1),
(7, 8, 53, 1),
(9, 24, 26, 1),
(10, 24, 49, 1),
(11, 24, 38, 1),
(12, 24, 27, 1),
(45, 39, 1, 3),
(49, 40, 1, 2),
(51, 40, 38, 2),
(53, 41, 31, 2),
(54, 42, 1, 2),
(56, 42, 38, 2),
(59, 43, 1, 2),
(61, 43, 38, 2),
(62, 44, 1, 2),
(63, 44, 32, 3),
(66, 52, 4, 1),
(67, 53, 7, 1),
(68, 54, 1, 1),
(69, 55, 3, 6),
(70, 56, 1, 1),
(71, 56, 4, 1),
(72, 56, 7, 1),
(73, 56, 6, 1),
(74, 57, 2, 1),
(75, 57, 3, 1),
(76, 58, 3, 1),
(77, 58, 2, 1),
(78, 59, 2, 1),
(79, 59, 3, 1),
(80, 60, 2, 1),
(81, 60, 3, 1),
(82, 61, 2, 1),
(83, 61, 3, 1),
(84, 62, 1, 1),
(85, 62, 4, 1),
(86, 63, 1, 2),
(88, 63, 32, 3),
(90, 64, 1, 1),
(91, 64, 2, 1),
(92, 65, 2, 1),
(93, 65, 3, 1),
(94, 66, 2, 1),
(95, 67, 3, 2),
(96, 67, 2, 3),
(97, 68, 8, 2),
(98, 68, 7, 1),
(99, 69, 5, 2),
(100, 69, 6, 1),
(101, 70, 2, 1),
(102, 70, 3, 1),
(103, 71, 2, 1),
(104, 71, 1, 2),
(105, 71, 4, 6),
(106, 71, 3, 3),
(107, 72, 1, 1),
(108, 72, 3, 1),
(109, 73, 6, 2),
(110, 73, 4, 1),
(111, 74, 5, 1),
(112, 75, 6, 1),
(113, 76, 2, 1),
(114, 77, 2, 1),
(115, 77, 3, 1),
(116, 78, 1, 1),
(117, 78, 2, 1),
(118, 79, 6, 2),
(119, 79, 8, 1),
(120, 79, 7, 1),
(121, 80, 1, 1),
(122, 80, 2, 3),
(123, 81, 4, 3),
(124, 81, 2, 6),
(125, 81, 3, 6),
(126, 82, 2, 1),
(127, 82, 3, 1),
(128, 83, 5, 1),
(129, 85, 3, 3),
(130, 85, 6, 4),
(131, 85, 4, 1),
(132, 86, 2, 1),
(133, 87, 4, 3),
(134, 87, 6, 1),
(135, 89, 7, 4),
(136, 89, 4, 2),
(137, 89, 5, 3),
(138, 89, 6, 8),
(139, 90, 4, 4),
(140, 91, 2, 1),
(141, 93, 2, 1),
(142, 93, 3, 1),
(143, 94, 2, 1),
(144, 94, 3, 3),
(145, 95, 5, 1),
(146, 95, 3, 1),
(147, 95, 2, 1),
(148, 96, 2, 8),
(149, 96, 4, 1),
(150, 96, 3, 1),
(151, 97, 6, 1),
(152, 97, 5, 1),
(153, 98, 3, 6),
(154, 98, 4, 3),
(155, 99, 2, 14),
(156, 99, 5, 2),
(157, 100, 2, 5),
(158, 101, 3, 1),
(159, 102, 3, 3),
(160, 103, 2, 1),
(161, 103, 4, 3),
(162, 104, 1, 2),
(163, 104, 32, 3),
(166, 105, 1, 2),
(167, 105, 32, 3),
(171, 106, 1, 2),
(172, 106, 32, 3),
(174, 107, 1, 2),
(176, 107, 32, 3),
(178, 108, 2, 1),
(179, 109, 2, 1),
(180, 110, 5, 1),
(181, 110, 4, 1),
(182, 111, 6, 4),
(183, 111, 7, 1),
(184, 112, 5, 1),
(185, 112, 2, 1),
(186, 112, 3, 1),
(187, 113, 2, 1),
(188, 114, 3, 1),
(189, 115, 2, 1),
(190, 115, 3, 1),
(191, 116, 3, 1),
(192, 116, 5, 6),
(193, 117, 4, 1),
(194, 117, 5, 1),
(195, 118, 2, 1),
(196, 119, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(1, 'iPhone 13 Pro', 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-max-silver-select?wid=470&hei=556&fmt=png-alpha&.v=1631652956000', 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-gallery-1-thumb?wid=203&hei=120&fmt=jpeg&qlt=95&.v=1629957787000; https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-gallery-3-thumb?wid=141&hei=120&fmt=jpeg&qlt=95&.v=1629957789000; https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-gallery-5-thumb?wid=141&hei=120&fmt=jpeg&qlt=95&.v=1631057934000', 'Our biggest camera upgrade ever. All-new Pro camera system. Advanced low-light performance. Incredible detail with macro photography. Cinematic mode adds shallow depth of field automatically. You can also shift focus after you shoot. Super Retina XDR display with ProMotion. Experience a faster, brighter, more responsive display.\r\nA15 Bionic, the world’s fastest smartphone chip.', 119900, 56, 'Smart Phone', 2),
(2, 'Samsung French Door with Family Hub 810L', 'https://images.samsung.com/is/image/samsung/in-rf9500kf-akg-rf28n9780sg-tl-frontblack-107074192?$684_547_PNG$', 'https://images.samsung.com/is/image/samsung/in-rf9500kf-akg-rf28n9780sg-tl-lperspectiveblack-107074167?$684_547_PNG$; https://images.samsung.com/is/image/samsung/in-rf9500kf-akg-rf28n9780sg-tl-rperspectiveblack-107074168?$684_547_PNG$; https://images.samsung.com/is/image/samsung/in-rf9500kf-akg-rf28n9780sg-tl-dynamicblack-107074169?$684_547_PNG$', 'Enrich your family life by sharing news, messages and special moments on the Family Board. Simply use the home screen or your smartphone and it will synchronize with the Family Hub. You can show photos, post stickers, draw pictures and type or hand-write notes. You can even add a music player. Make meal times easier and cook the food that your family loves. Smart Recipes App provides delicious recipes with simple on-screen instructions. The Meal Planner App suggests meals to cook, based on your preferences and the food in the fridge. And it lets you create a weekly shopping list. A Triple Cooling System independently controls and optimizes the temperature, maximizes humidity and prevents odors mixing in 3 compartments. A Metal Cooling plate also helps keep the air cool to maintain freshness. ', 273700, 51, 'Fridge', 2),
(3, 'Adidas Galaxy 5 Shoes', 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/c653d88f003245258132ab4a009c5169_9366/Galaxy_5_Shoes_Black_FW5717_01_standard.jpg', 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/c653d88f003245258132ab4a009c5169_9366/Galaxy_5_Shoes_Black_FW5717_01_standard.jpg; https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/948d08cd9cae4828af35ab5000f6c6f2_9366/Galaxy_5_Shoes_Black_FW5717_010_hover_standard.jpg; https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/79b368074a9741e9869cab4a009c62ad_9366/Galaxy_5_Shoes_Black_FW5717_02_standard.jpg; https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/322110512e3d4a38b90aab4a009c6c1a_9366/Galaxy_5_Shoes_Black_FW5717_03_standard.jpg', 'LIGHTWEIGHT RUNNING SHOES WITH ADDED BREATHABILITY.\r\nMake the most out of your runs. No matter how far you go, these adidas shoes cushion every take-off and landing to make each step feel like a good one. Another block. Another lap. Another mile. Get after it.', 4999, 69, 'SPORTS SHOES', 1),
(4, 'Nike Pegasus Trail 3 GORE-TEX ', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/ab191ef9-2b59-4351-8564-7308ab976f1f/pegasus-trail-3-gore-tex-waterproof-trail-running-shoes-ZKmC2v.png', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/b5f7e2b8-879b-46fa-877d-10422897b7df/pegasus-trail-3-gore-tex-waterproof-trail-running-shoes-ZKmC2v.png; https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/ec6252c0-26e8-4868-aafa-321e44913e73/pegasus-trail-3-gore-tex-waterproof-trail-running-shoes-ZKmC2v.png; https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/318d91f3-74be-40dd-a0d5-db3aee9b223c/pegasus-trail-3-gore-tex-waterproof-trail-running-shoes-ZKmC2v.png', 'Journey off the beaten path and into wet weather with the Nike Pegasus Trail 3 GORE-TEX. It\'s made with the same cushioned comfort you love, plus tough traction and improved midfoot construction for secure, neutral support. The waterproof upper helps keep you moving on rocky trails even when stormy conditions try to slow you down. Don\'t let the rain stop you—lace up and take on the elements.', 14495, 78, 'Sports Shoe', 1),
(5, 'ThinkPad X1 Titanium Yoga (13.5, Intel)', 'https://external-preview.redd.it/TWYJhBYPJvYV-p3GLCX33kaFYJHSyvEaRCJlDmImu7w.jpg?auto=webp&s=0b64ba4333819f997384ba7fff4112dea4816faa', 'https://www.lenovo.com/medias/lenovo-laptop-thinkpad-x1-titanium-yoga-subseries-hero.png?context=bWFzdGVyfHJvb3R8MzE5MTA5fGltYWdlL3BuZ3xoY2EvaDM5LzExMjQ5MTE4OTY5ODg2LnBuZ3w4NDc1M2JmOWQ1N2NjOGY1ZGE0MDNjZjZjYTcwMjQxMDk1YTZkMGJmYTliN2M4MjQ2MjZhM2Q1NjYyZmNkZGJm; https://www.lenovo.com/medias/lenovo-laptop-thinkpad-x1-titanium-yoga-subseries-gallery-1.png?context=bWFzdGVyfHJvb3R8Mzc3OTI3fGltYWdlL3BuZ3xoZjEvaDkwLzExMjM5MjgwMTgxMjc4LnBuZ3xhMjI1NWQwODVlNWViYzg4NzBlOWNiOGRiMTY0YWRiMzZkMjZiYjBmNzQ1YzJhZjQyMGM5MWM3MDRhYzMwYWJl; https://www.lenovo.com/medias/lenovo-laptop-thinkpad-x1-titanium-yoga-subseries-gallery-5.png?context=bWFzdGVyfHJvb3R8MjYzNjk2fGltYWdlL3BuZ3xoNjAvaDM1LzExMjM5MjgwODM2NjM4LnBuZ3w3Mzc5N2NiYWE5NTM5ZjZmYjEwZTdhYWQ1MTQwZjgyOWM2OTMwNWYwNTY1NzZjNmM0NmY4N2M5ZmRlNDhhOGIz', 'Powerful Intel ® Evo™ platform\r\nBuilt with the Intel® Evo™ platform, the 34.2cms (13.5) ThinkPad X1 Titanium Yoga laptop delivers a powerhouse combination of performance, responsiveness, battery life, and stunning visuals. With up to 11th Gen Intel® Core™ i7 vPro® processors, you can count on an exceptional experience, anywhere. Visuals more amazing than reality\r\nThe ThinkPad X1 Titanium Yoga 2-in-1 laptop features a 13.5\" 2K (2256 x 1504) display with Dolby Vision™. A 3:2 aspect ratio combined with powerful Intel® Iris™ Xe graphics render amazing picture clarity and color accuracy—whether you’re video-conferencing or browsing online. Plus, this low-power panel is energy efficient and delivers 100% sRGB. Mobile-conferencing hub\r\nThe Dolby Atmos® Speaker System on the ThinkPad X1 Titanium Yoga 2-in-1 laptop includes two upward-firing speakers, creating an immersive sound experience you’ll enjoy for work and for play. Four 360-degree far-field mics combined with a high-definition camera for visual clarity improve remote collaboration and ensure you’re heard loud and clear during conference and video calls.', 199136, 83, 'Laptop', 2),
(6, 'Apple Watch Series 7', 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MKUE3_VW_34FR+watch-41-alum-blue-nc-7s_VW_34FR_WF_CO?wid=700&hei=700&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1632171048000%2C1631661090000', 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MKUE3_VW_34FR+watch-41-alum-blue-nc-7s_VW_34FR_WF_CO?wid=700&hei=700&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1632171048000%2C1631661090000; https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MKUE3_VW_PF+watch-41-alum-blue-nc-7s_VW_PF_WF_CO?wid=700&hei=700&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1632171048000%2C1631661100000; https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MKUE3?wid=700&hei=700&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1630973111000', 'The aluminium case is lightweight and made from 100 per cent recycled aerospace-grade alloy.\r\n\r\nThe Sport Band is made from a durable yet surprisingly soft high-performance fluoroelastomer, with an innovative pin-and-tuck closure. The largest Always‑On Retina display ever. Series 7 has nearly 20 per cent more screen area than Series 6.', 41900, 39, 'Smart Watch', 2),
(7, 'Vivo V23 Pro 5G ', 'https://i.gadgets360cdn.com/large/vivo_v23_series_vivo_twitter_1640759904144.jpg?downsize=950:*', 'https://i.gadgets360cdn.com/large/Vivo_V23_Pro_back_design_ndtv_1641366839535.jpg?downsize=950:*; https://i.gadgets360cdn.com/large/vivo_v23_series_vivo_twitter_1640759904144.jpg?downsize=950:*', 'The upcoming Vivo V23 5G is tipped to launch with a MediaTek Dimensity 920 SoC under the hood, paired with up to 12GB of RAM and up to 256GB of UFS 2.2 storage. The handset is said to sport a 6.44-inch full-HD+ AMOLED display with a 90Hz refresh rate. Vivo V23 5G is tipped to be powered by a 4,200mAh battery with support for 44W fast charging.', 29999, 23, 'Smart Phone', 2),
(8, 'Sony Bravia XR A80J', 'https://www.sony.co.in/image/928a63074f995fb9b8cf02dc991d8e15?fmt=pjpeg&wid=165&bgcolor=FFFFFF&bgc=FFFFFF', 'https://www.sony.co.in/image/928a63074f995fb9b8cf02dc991d8e15?fmt=pjpeg&wid=165&bgcolor=FFFFFF&bgc=FFFFFF;https://www.sony.co.in/image/e5ae7765a331f176a446bb1a5303b828?fmt=png-alpha&wid=720; https://www.sony.co.in/image/58af806d03c4bc2718af3ca8569d22d3?fmt=png-alpha&wid=720', 'Our Cognitive Processor XR cross-analyses data, enhancing pictures in the same way that the human eye focuses for more realistic colour and depth. With XR OLED Contrast, brightness is adjusted for higher peaks in glare and deeper blacks in shadow—no more details overwhelmed by shadow or lost in blown-out highlights. Whatever the content or source, you\'ll enjoy entertainment close to 4K9 resolution with XR 4K Upscaling. Our Cognitive Processor XR accesses a vast amount of data, intelligently recreating lost textures and detail for real-world pictures. See details such as naturally defined animal fur and sharply outlined rock.', 249500, 37, 'Television', 2),
(10, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 1),
(26, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 1),
(27, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 1),
(28, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 2),
(29, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 100, 'Gaming console', 2),
(30, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 1),
(31, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 1),
(32, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 88, 'Gaming console', 2),
(33, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 1),
(34, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 1),
(35, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 2),
(36, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 100, 'Gaming console', 2),
(37, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 1),
(38, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 1),
(39, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 2),
(40, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 1),
(41, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 1),
(42, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 2),
(43, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 100, 'Gaming console', 2),
(44, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 1),
(45, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 1),
(46, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 2),
(47, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 1),
(48, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 1),
(49, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 2),
(50, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 100, 'Gaming console', 2),
(51, 'PEGASUS 33 Running Shoes For Men', 'https://i.pinimg.com/originals/43/40/8e/43408ee5a8d234752ecf80bbc3832e65.jpg', NULL, 'The Nike Zoom Pegasus Turbo 2 is updated with a feather-light upper, while innovative foam brings revolutionary responsiveness to your long-distance training', 59.99, 100, 'SPORTS SHOES', 1),
(52, 'MEN\'S ADIDAS RUNNING KALUS SHOES', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSrEqFHfSbs6rUzcYnN_PcnS_D2JLXusKMVFk4Y8N_tn3hJgNIf', NULL, 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 39.99, 100, 'SPORTS SHOES', 1),
(53, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT 'not set',
  `lname` varchar(255) DEFAULT 'not set',
  `age` int(10) DEFAULT 18,
  `role` int(10) DEFAULT 555,
  `photoUrl` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fname`, `lname`, `age`, `role`, `photoUrl`, `type`) VALUES
(1, 'VishakhaV', '6361724765', 'vishakhav965@gmail.com', 'Vishakha ', 'Venugopal', 21, 156, '', 'local'),
(2, 'shane', '$2b$10$ewemZ.oLASXUIWfUrjkDeOTCZUCpnhSlR3/Act2eQnvGg6mnGLOtG', 'shane123@gmail.com', 'Navoneel', 'Mukherjee', 27, 555, '', 'local'),
(11, 'mike', '$2b$10$vIS0W3LKhbx2tFh1GMYWhul7GWtIg4jnKU2C/NGux1pUG3QKMdNzO', 'mike-doe@excellent.com', 'Mike', 'Leming', 40, 555, 'https://i.pinimg.com/originals/dc/55/a0/dc55a0fec14d93d9cf6fa32c32f7c7f2.jpg', 'local'),
(14, 'indramukh', '$2b$10$po91FRkYQIfPDN6G1BxG0uIV7Z54GbJRkJw2t9wRec9uqmRKillqa', 'indramukh@hotmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(19, 'test', '$2b$10$cSa3jm7cboNSJRTgNRFJg.GviAzr/pyfptMxwxmjdKP./CdxDtLlK', 'test@gmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(20, 'bhaikaju', '$2b$10$P9X8c/MC39.Zxr2k5SfxK.lwbcj6PNou2ueqod29CFZrmuDUCvlfe', 'bhaikaju@gmail.com', 'Programming\'s Fun', 'not set', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14GiPx0OQHJOCy-fSfNmKr1vbnM-Rp7CgS_jx_6oY=s96-c', 'social'),
(21, 'shreyamukherjee07', '$2b$10$SOw/LSErH0IbZ96h7pop.O6NJreOD3HjRGiZZmKnqiXiuUPCl8b8W', 'shreyamukherjee07@gmail.com', 'Shreya', 'Mukherjee', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14Gg2Be7kKwqsUbQwyuCGToyZcCQ3ZDDWNkvSbQJVHA=s96-c', 'social');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_addresses_users1_idx` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users1_idx` (`user_id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_has_products_products1_idx` (`product_id`),
  ADD KEY `fk_orders_has_products_orders1_idx` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`cat_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
