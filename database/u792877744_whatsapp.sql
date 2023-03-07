-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-03-2023 a las 22:53:12
-- Versión del servidor: 10.5.18-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u792877744_whatsapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_temp`
--

CREATE TABLE `admin_temp` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `business` varchar(255) NOT NULL,
  `payer_id` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `timestamp` text NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `admin_temp`
--

INSERT INTO `admin_temp` (`id`, `payment_id`, `business`, `payer_id`, `coupon_id`, `amount`, `currency_id`, `plan_id`, `timestamp`, `is_deleted`, `created_at`, `updated_at`) VALUES
(3, '8fef0c3ff3298f8bc9967cb88be0e078', 'sb-7j4hl606677@personal.example.com', 2, NULL, 29, 1, 5, '0ee3b621fc3237c6d7d93fde3e60dad6be6a77d5e4c61167bbe953b3231a619fcf41688c051b09cd44570274b151cd6e84e3ebb9208f15ef622764852a06bf7f', 1, '2022-10-27 06:04:18', '2022-11-29 18:53:34'),
(4, '3098202ab17bcfb5c2317be73b3fae2a', 'sb-7j4hl606677@personal.example.com', 2, NULL, 29, 1, 5, 'b2acf418dedc784f56ea690582fc596ea27dade6f7252eff0ba729b0f06fec222c438cb9ee32363a7f615802bcaa7119d2d5f1fa80014db39d651ad7459181b4', 1, '2022-10-27 06:05:13', '2022-10-27 06:12:09'),
(5, 'dd458020933fc51a02a05b46d0ed5a08', 'sb-7j4hl606677@personal.example.com', 2, NULL, 29, 1, 5, '0c44e9a9041ba1e1c5cae5693c4c8601712f72ffbd2a895198ef142bcefab7b3f45ef8299ef2c5efc22f7ee04a7f37599b87df115221ce81bdacc7e124f2d411', 1, '2022-10-27 06:12:43', '2022-11-29 18:53:34'),
(6, '642477e9830d99a0183a16d2e884a42d', 'sb-7j4hl606677@personal.example.com', 2, NULL, 29, 1, 5, '431323fb27f80e88476bb57e196633170b08ecf00ebbf9862d041fe927edbb6d9a00294ef6031299d6fdbf0903b36522f0a2ec1437a5139a252798dd3e4c759a', 1, '2022-10-27 06:13:42', '2022-10-27 06:15:15'),
(7, 'bad94e6b95f2bd66e0cbb1d5c16a03f0', 'sb-7j4hl606677@personal.example.com', 2, NULL, 29, 1, 5, '9834143b9b669d07a205a43db2bdb9b8dfafc6a09622e5b30269cffb3ce5758e6e22a2f95be975c62037fdf29425ecaabe2697bbb5408d5aa196c071a7aabf74', 1, '2022-10-27 06:40:38', '2022-10-27 06:41:08'),
(30, '0e4c58b6300e5f5aacac65bb45832c137a9adabb', 'sb-7j4hl606677@personal.example.com', 27, NULL, 130, 2, 4, 'c35a75066ef9126073b8cb4d0122d99110cbe10ed4d12076042ec61a4e880bad2bb773b2ecd6f5bd', 1, '2022-11-29 18:37:30', '2022-12-01 19:03:07'),
(31, '377e3cd27fd7625ef3371a1898d31cd4e912cbcb', 'sb-7j4hl606677@personal.example.com', 27, NULL, 130, 2, 4, '6e6ea6563a379aed60ec1cd8e4c0ff31a705155cb2a4c258d597393cf5e949904b760cf5e66e5e0c', 1, '2022-11-29 18:42:40', '2022-12-01 19:03:07'),
(32, '3dff042afd4dc9317289a66a218cd1116fa63393', 'sb-7j4hl606677@personal.example.com', 27, NULL, 130, 2, 4, 'fbcb0f148541aa1f1fa9bb145b87f136214ab9b4d48ba6f87a39c00372fd07bebf17e8d59b4b855e', 1, '2022-11-29 18:43:17', '2022-11-29 18:53:34'),
(33, '8cf437a954b8d58717e33dd802010fbb2b7d5ec9', 'sb-7j4hl606677@personal.example.com', 27, NULL, 130, 2, 4, '83fee4c6e63baab6511f43fad5c0c6a8644e472681d1d6adfdbce74b3f46ad54af840283ca8e00a4', 1, '2022-11-29 19:11:26', '2022-11-29 19:12:06'),
(34, '5b8d608dfebc9cf6eb5ea939c176fc670e96cea3', 'sb-7j4hl606677@personal.example.com', 28, NULL, 130, 2, 4, '050b7ef54b0f7d54a0b4c6fce0fc72850279bb48d44a68202e31b26614041a3d74d765112ef7f565', 1, '2022-11-29 19:30:20', '2022-11-29 19:31:36'),
(35, 'cf61282142d49df60462748a9c0d402738025b23', 'sb-7j4hl606677@personal.example.com', 29, NULL, 130, 2, 4, '6801d253df5de39a32918d9b7656679a748a48969692f8a43ced380c330aa0efacc0f290e460141c', 1, '2022-12-01 18:47:50', '2022-12-01 19:03:07'),
(36, '954ed0a55b23d81a170aaac1fcae468da9a40bb1', 'sb-7j4hl606677@personal.example.com', 30, NULL, 130, 2, 4, 'f75375991e40d4fe268975975c0831d3a491243bd77fb144a3b0f8a90f304cf7f1cd457a7acb637c', 1, '2022-12-01 23:55:01', '2022-12-01 23:57:30'),
(37, '2784b6ac68429cbb6b3cb48bc53a013628143880', 'sb-7j4hl606677@personal.example.com', 5, NULL, 130, 2, 4, '196a8114bbf8ede88f75fb8ad7fa26d7461bfe88214cdb1aa2cafe3648c13d7ce531590f4c9eebd2', 1, '2022-12-28 11:49:41', '2022-12-31 14:23:14'),
(38, '79347f1700b09eaf963003f8c87877c0c7d85c80', 'sb-7j4hl606677@personal.example.com', 31, NULL, 130, 2, 4, '44516af2dbc344e3ae032f7181f3f64d693239c5e7fa65097839e8600f76fbf1e084587d7a9c1fbe', 1, '2022-12-31 13:56:09', '2022-12-31 14:23:13'),
(39, 'd6428a99b5f6159a0574e09de28343b4b04b1d36', 'sb-7j4hl606677@personal.example.com', 32, NULL, 130, 2, 4, '1cfcaad74bfe270702d2c21caf9fa5deec381aacd7059de021f6d4d73a2fa24d6fa4cf7159a775d0', 1, '2023-01-07 15:18:18', '2023-01-10 16:35:02'),
(40, '3a926de5f26783ab7f96875eaa3f7af9e5671e85', 'sb-7j4hl606677@personal.example.com', 32, NULL, 130, 2, 4, '96d676a7d0c74a031a59990a8167a1d407af82735e1abd221b164df4a1b9a44eb2492c7108be592d', 1, '2023-01-07 15:52:04', '2023-01-10 16:35:02'),
(41, '265288a88635a3e273cf7ab0ae6db95ff3797afb', 'sb-7j4hl606677@personal.example.com', 32, 2, 70, 2, 4, '88cde97e4104a388e8549d60d8c2cbebf76e5fed70e4562d766460d93ea916cc9f9f4ac16449454a', 1, '2023-01-07 17:47:13', '2023-01-10 16:35:02'),
(42, 'da2152aa9f61d4596f7f85a6dddb0385f1b146d4', 'sb-7j4hl606677@personal.example.com', 33, NULL, 130, 2, 4, 'aff121dec0eb569b5198988d3fa4c9ade7665bdc316ca7646f3231e0f10cb441462000cc1919f394', 1, '2023-01-10 15:09:20', '2023-02-18 18:57:27'),
(43, '931ae668da3f120b89b4df7db44a8f795804da26', 'sb-7j4hl606677@personal.example.com', 33, 3, 1, 2, 4, '4d680385ed85ac526836422881c6de01a53379e5cf73363fcb2428043b710a196290dc7b31288952', 1, '2023-01-10 15:23:59', '2023-02-18 18:57:27'),
(44, '3bf8cfd8299b07ad56fa545d05864a7741f4b7ed', 'sb-7j4hl606677@personal.example.com', 33, 3, 1, 2, 4, '1a1e5a9345c0b0ce34de7298e54c2f4ecd3899716851dd9f88dab0fdaee0b4b09a94bc2398eeee55', 1, '2023-01-10 16:07:08', '2023-02-18 18:57:27'),
(45, '9d4ac6db2b8badd8903556a1963dcebd38a434d5', 'sb-7j4hl606677@personal.example.com', 33, 3, 1, 2, 4, '40b2123d3fa49203e34845fdeafeaed0faf9a5c95fc6c10f5c8d51ecfc1a0783131a811d031458de', 1, '2023-01-10 16:20:34', '2023-02-18 18:57:27'),
(46, '79478a7c3a4e5fe17974b7517b90bc348c9414c1', 'sb-7j4hl606677@personal.example.com', 33, 2, 70, 2, 4, 'cc9fcd28fccefb53d5e942fc4256e69a7579ce7d7d6f2f5887187774f7cc80485bb6deddb1ed4cf0', 1, '2023-01-10 16:30:46', '2023-02-18 18:57:27'),
(47, 'a2210fb97c32506ea48fff8826ed9181710ce709', 'sb-7j4hl606677@personal.example.com', 33, 3, 1, 2, 4, 'b7f8ff9188457ae476dfef869da6e6b44376cb510b0efa0051b371f33204cd2c41a7186ba07aa4d2', 1, '2023-01-10 16:32:22', '2023-01-10 16:35:02'),
(48, '32c00540813e9a8cf68ea8f7a62f535b90e9a6ad', 'sb-7j4hl606677@personal.example.com', 34, NULL, 130, 2, 4, '4c4554745d9059895a65314b1a6022c1256bcc3faae20f82118940400ec7719d435579296a06383d', 1, '2023-01-10 16:39:02', '2023-02-18 18:57:27'),
(49, '3a48bf292b59d40a1d582aa716e0bfa186368731', 'sb-7j4hl606677@personal.example.com', 32, NULL, 130, 2, 4, '403751410dc609ac848b45f2b38f0a36e65803990ddccdaa860606a5c70cace8073cf7151e375e4d', 1, '2023-02-03 23:30:12', '2023-02-18 18:57:27'),
(50, 'cadd20a085f8c22acc7f26b00420b547073be1a9', 'sb-7j4hl606677@personal.example.com', 35, NULL, 89, 2, 3, 'e2e7e0a8402413651dbe79018ec446388cf8ebdae48c5720ef8e1f34803ceb44944bda0f878dcbf0', 1, '2023-02-17 14:13:01', '2023-02-18 18:57:27'),
(51, '8a1aebe6543ec4656ccebe49023ea5d6b9b47a65', 'sb-7j4hl606677@personal.example.com', 36, NULL, 130, 2, 4, '18cadb9230fc32719bf5ecb0bebcd67551e7912e0b7650dfa96e10a992e79ddaa354111e8c90080b', 2, '2023-02-18 18:41:37', '2023-02-18 18:41:37'),
(52, 'afa9d8dabc4e8db1120b70248fa2163963b5fb48', 'sb-7j4hl606677@personal.example.com', 36, NULL, 130, 2, 4, '4fa21a0862e42d0f44b3844849425ccfa326197a54e161c4caf40e3167acec43ca32bf187f5739dd', 1, '2023-02-18 18:50:50', '2023-02-18 18:57:27'),
(53, '2ba1c8690995cba9806eab590fd649e3bd0983f8', 'sb-7j4hl606677@personal.example.com', 37, NULL, 130, 2, 4, '7d1bdd83d978b9f154e4b073c8f5968faa17bf0aea6bc594ce10e7d0797248c37b93f0fe82f40034', 2, '2023-02-21 18:36:13', '2023-02-21 18:36:13'),
(54, '11872a42ce0f2807549991f8c805a9c7e57e48b9', 'sb-7j4hl606677@personal.example.com', 38, NULL, 89, 2, 3, 'd99913af7dce8ba8470741313b2e06cac1b45125d1d1516625b49ce9189108ea398a80855d8f9e6e', 2, '2023-03-02 23:02:41', '2023-03-02 23:02:41'),
(55, 'e3d7fef677ef1cee48d689bf2eddcb03e4503492', 'sb-7j4hl606677@personal.example.com', 38, NULL, 130, 2, 4, '0a2f455ca81e302fce059ee317113eb2d17430d5ac80b2cdf20541ad3f615713c48215c0f6160d6e', 2, '2023-03-02 23:03:35', '2023-03-02 23:03:35'),
(56, 'e24da2111bfb551a9d109e0753c59a91441674ea', 'sb-7j4hl606677@personal.example.com', 38, NULL, 89, 2, 3, '261ea94a4dc06e2497f67889c975b5a2f5c95a4608c666ddeab67f0d399379254ac48d9f516320bb', 2, '2023-03-02 23:04:14', '2023-03-02 23:04:14'),
(57, 'd79c57ea905000b9fead78df4aa03753f3445f08', 'sb-7j4hl606677@personal.example.com', 39, NULL, 130, 2, 4, '35b587b5e2d70b713907c592ae85603dcef75970d34263a4c94ddcf7a798821c6449f87d90bf6967', 2, '2023-03-03 01:06:58', '2023-03-03 01:06:58'),
(58, '12e2257d8289a99472995ef0a1809143e4f9df1b', 'sb-7j4hl606677@personal.example.com', 40, NULL, 89, 2, 3, '1ef674fbf7cd86bddbaba4edeb2f5fe78e926b28be0aa266941ce8e0dacd797b5df083a1d6bf7e3f', 2, '2023-03-03 17:34:03', '2023-03-03 17:34:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_image` varchar(255) DEFAULT NULL,
  `item_price` varchar(255) NOT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `extras_id` varchar(255) DEFAULT NULL,
  `extras_name` varchar(255) DEFAULT NULL,
  `extras_price` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `variants_id` varchar(255) DEFAULT NULL,
  `variants_name` varchar(255) DEFAULT NULL,
  `variants_price` varchar(255) DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes . 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `restaurant`, `session_id`, `item_id`, `item_name`, `item_image`, `item_price`, `tax`, `extras_id`, `extras_name`, `extras_price`, `qty`, `price`, `variants_id`, `variants_name`, `variants_price`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 2, 'b9m13UOPs5cvxaJN10ZAoissqVXSLOE19gLcxm8F', 3, 'Coca Cola', 'item-1666600487.jpg', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2022-10-25 00:46:59', '2022-10-25 00:46:59'),
(2, 2, 'b9m13UOPs5cvxaJN10ZAoissqVXSLOE19gLcxm8F', 1, 'Laziz Mac Veg Pizza', 'item-1666592957.jpg', '60', '5', NULL, NULL, NULL, 1, '60', '1', 'Large', '60', 1, '2022-10-25 00:51:18', '2022-10-25 00:51:18'),
(3, 5, '2GJ6AWO5ZhiToYujODBgU7wV8NXhuNz0MKLwtG5t', 5, 'Garlic Bread with Cheese', 'item-1666675749.jpg', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2022-10-25 06:09:59', '2022-10-25 06:09:59'),
(10, 2, '3mztnzyB1Un7TNd9pabzpphI6Ek2d0y2GPIjPAPe', 3, 'Coca Cola', 'item-1666600487.jpg', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2022-10-25 20:29:21', '2022-10-25 20:29:21'),
(11, 2, 'lKViictMjkAAjYW16iq8VBu9A4ZNMfZCICrwPHS0', 3, 'Coca Cola', 'item-1666600487.jpg', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2022-10-29 05:45:53', '2022-10-29 05:45:53'),
(12, 5, '7E3LhaX85qevROQvU0lDJhyt94LpGixOlb8MJYpB', 5, 'Garlic Bread with Cheese', 'item-1666675749.jpg', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2022-10-29 17:32:30', '2022-10-29 17:32:30'),
(16, 2, 'XsUdjwT85zg2lJcmeS1UkHP3vPKG94dGZtbZcvpj', 15, 'Mangueira 1,20cm', 'item-1667420910.jpg', '18', '0', NULL, NULL, NULL, 1, '18', NULL, NULL, NULL, 1, '2022-11-02 20:42:17', '2022-11-02 20:42:17'),
(17, 2, 'febXttUJpytXOT3B3j2PdZIC5pMH9Am8Q4JyMFG7', 11, 'Suporte Lucky', 'item-1667420161.jpg', '25', '0', NULL, NULL, NULL, 1, '25', NULL, NULL, NULL, 1, '2022-11-02 20:45:28', '2022-11-02 20:45:28'),
(18, 2, 'febXttUJpytXOT3B3j2PdZIC5pMH9Am8Q4JyMFG7', 9, 'Filtro de Barro 4litros', 'item-1667419496.jpg', '72', '0', NULL, NULL, NULL, 1, '72', NULL, NULL, NULL, 1, '2022-11-02 20:45:37', '2022-11-02 20:45:37'),
(20, 10, 'T3YoxPg99GQHaZPm6Tg7j3vbWwUb8400TNPSJuZM', 35, 'Copo da Felicidade', 'item-1667666261.jpg', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2022-11-05 16:40:42', '2022-11-05 16:40:42'),
(21, 10, 'T3YoxPg99GQHaZPm6Tg7j3vbWwUb8400TNPSJuZM', 33, 'Feijoada', 'item-1667665422.jpg', '35', '0', '8', 'Ovo', '1', 1, '36', NULL, NULL, NULL, 1, '2022-11-05 16:41:07', '2022-11-05 16:41:07'),
(22, 11, 'ohYfT3TLzKKvSWhSsJ9khRqL65CphLvekFpQb2CB', 44, 'Vela Salus', 'item-1667669317.jpg', '15', '0', NULL, NULL, NULL, 1, '15', NULL, NULL, NULL, 1, '2022-11-06 00:27:15', '2022-11-06 00:27:15'),
(23, 10, 'ohYfT3TLzKKvSWhSsJ9khRqL65CphLvekFpQb2CB', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-11-06 00:29:31', '2022-11-06 00:29:31'),
(27, 2, 'wxDpZBPrYxfBLKaf89vUrFqKlfoQ3iFASky4JomK', 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', '58', '0', NULL, NULL, NULL, 1, '58', NULL, NULL, NULL, 1, '2022-11-06 12:16:54', '2022-11-06 12:16:54'),
(31, 11, 'WX4IbBeTqVjEPH8xQsx3pVcLqTAMfKgKoDiHFAb5', 41, 'Bomba de Água de Pressão', 'item-1667668827.jpg', '29', '0', NULL, NULL, NULL, 1, '29', NULL, NULL, NULL, 1, '2022-11-06 13:25:26', '2022-11-06 13:25:26'),
(32, 11, 'WX4IbBeTqVjEPH8xQsx3pVcLqTAMfKgKoDiHFAb5', 40, 'Bella Bomba', 'item-1667668692.jpg', '41', '0', NULL, NULL, NULL, 1, '41', NULL, NULL, NULL, 1, '2022-11-06 13:25:33', '2022-11-06 13:25:33'),
(33, 11, 'WX4IbBeTqVjEPH8xQsx3pVcLqTAMfKgKoDiHFAb5', 38, 'Kit Registro Delta', 'item-1667668169.jpg', '50', '0', NULL, NULL, NULL, 1, '50', NULL, NULL, NULL, 1, '2022-11-06 13:25:41', '2022-11-06 13:25:41'),
(34, 10, 'WX4IbBeTqVjEPH8xQsx3pVcLqTAMfKgKoDiHFAb5', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 2, '2', NULL, NULL, NULL, 1, '2022-11-06 13:31:43', '2022-11-06 13:32:20'),
(35, 10, 'JRJfJUMxBA0zExtvxdEvgCYq7RrPizBojj46OO4E', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-11-06 23:06:37', '2022-11-06 23:06:37'),
(36, 10, 'JRJfJUMxBA0zExtvxdEvgCYq7RrPizBojj46OO4E', 31, 'Bolinho de queijo', 'item-1667664898.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-11-06 23:06:44', '2022-11-06 23:06:44'),
(37, 10, 'JRJfJUMxBA0zExtvxdEvgCYq7RrPizBojj46OO4E', 35, 'Copo da Felicidade', 'item-1667666261.jpg', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2022-11-06 23:06:57', '2022-11-06 23:06:57'),
(39, 10, '4U2G66Nuo9T56ONNLlFtBJllgPAVJz1ZIojPJQvG', 31, 'Bolinho de queijo', 'item-1667664898.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-11-07 00:25:14', '2022-11-07 00:25:14'),
(40, 10, '4U2G66Nuo9T56ONNLlFtBJllgPAVJz1ZIojPJQvG', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-11-07 00:25:20', '2022-11-07 00:25:20'),
(41, 5, 'i4Mwxkad4gGPoztOCqrGRVfbdbSQ0ELhDbT1e3yh', 21, 'Lava-Roupas Comfort Caixa 1,6kg', 'item-1667425532.jpg', '27', '0', NULL, NULL, NULL, 1, '27', NULL, NULL, NULL, 1, '2022-11-07 02:24:13', '2022-11-07 02:24:13'),
(45, 2, '0GY2k2AkNMooE3YOOKsfIz1T2A3XSIsEIUMwt1ku', 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', '58', '0', NULL, NULL, NULL, 1, '58', NULL, NULL, NULL, 1, '2022-11-09 11:31:43', '2022-11-09 11:31:43'),
(50, 2, '4iOReCuZBs1GDIRd2d293jUQ0RdM7e9w5OnafCb5', 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', '58', '0', NULL, NULL, NULL, 1, '58', NULL, NULL, NULL, 1, '2022-11-09 16:00:40', '2022-11-09 16:00:40'),
(52, 2, 'wHrtY2V79AcQGJBuopaJqM5kW5EDoCXB3XyYGTt6', 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', '58', '0', NULL, NULL, NULL, 4, '58', NULL, NULL, NULL, 1, '2022-11-10 06:41:26', '2022-11-10 06:41:36'),
(53, 11, 'b8qaxDLx5AhV6aNKxzX4gTfQxnbEFi2Bzyg7r05P', 42, 'Carvão vegetal 4kg', 'item-1667668994.jpg', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2022-11-10 10:34:56', '2022-11-10 10:34:56'),
(54, 11, 'ImK3T8zAnsCs5pLe54NqMsLXnIE5W5eUcKGKPFyX', 44, 'Vela Salus', 'item-1667669317.jpg', '15', '0', NULL, NULL, NULL, 1, '15', NULL, NULL, NULL, 1, '2022-11-10 10:43:46', '2022-11-10 10:43:46'),
(57, 2, 'iHXGKOJt4SAAAvIpS4VgJiM5x5UunWda6jgGxj40', 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', '58', '0', NULL, NULL, NULL, 1, '58', NULL, NULL, NULL, 1, '2022-11-11 00:40:03', '2022-11-11 00:40:03'),
(58, 11, 'ekptVmzV5w4CLTJfDuWhaxro27CFZP5zMGjeA87O', 44, 'Vela Salus', 'item-1667669317.jpg', '15', '0', NULL, NULL, NULL, 1, '15', NULL, NULL, NULL, 1, '2022-11-11 05:34:05', '2022-11-11 05:34:05'),
(59, 5, 'Zz675w3TpdnqTSsUG2MgjJK3P5pBomtKMAnLE614', 21, 'Lava-Roupas Comfort Caixa 1,6kg', 'item-1667425532.jpg', '27', '0', NULL, NULL, NULL, 1, '27', NULL, NULL, NULL, 1, '2022-11-11 05:38:25', '2022-11-11 05:38:25'),
(77, 2, 'H0U0k7Vsgdgr4ABRPhgAlmZrBKbZKZYgYXiYWElQ', 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', '58', '0', NULL, NULL, NULL, 1, '58', NULL, NULL, NULL, 1, '2022-11-14 14:08:35', '2022-11-14 14:08:35'),
(78, 8, 'j56e4DOEmEHPhq4AlvaXMghcej7amQ5XUDFjSb3R', 56, 'Notebook Lenovo B330 15.6 Polegadas LED', 'item-1668473883.jpg', '2.399', '0', NULL, NULL, NULL, 1, '2.399', NULL, NULL, NULL, 1, '2022-11-15 12:11:28', '2022-11-15 12:11:28'),
(79, 8, 'j56e4DOEmEHPhq4AlvaXMghcej7amQ5XUDFjSb3R', 53, 'Monitor Touch Screen 15 Polegadas LED Elo Touch ET 1509L', 'item-1668473019.jpg', '2.585', '0', NULL, NULL, NULL, 1, '2.585', NULL, NULL, NULL, 1, '2022-11-15 12:11:38', '2022-11-15 12:11:38'),
(80, 2, 'qITjFZOIqSe1E2m8Y6nqoHAfooZ1Msof4voo3V2g', 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', '58', '0', NULL, NULL, NULL, 1, '58', NULL, NULL, NULL, 1, '2022-11-15 13:56:20', '2022-11-15 13:56:20'),
(81, 8, '7Xa1I4o3tdV794FWAPhCGogE28n9iSS3HRB26MNa', 54, 'Monitor Touch Screen Jetway', 'item-1668473133.jpg', '1.732', '0', NULL, NULL, NULL, 1, '1.732', NULL, NULL, NULL, 1, '2022-11-24 13:55:56', '2022-11-24 13:55:56'),
(82, 5, '7Xa1I4o3tdV794FWAPhCGogE28n9iSS3HRB26MNa', 21, 'Lava-Roupas Comfort Caixa 1,6kg', 'item-1667425532.jpg', '27', '0', NULL, NULL, NULL, 1, '27', NULL, NULL, NULL, 1, '2022-11-24 13:57:17', '2022-11-24 13:57:17'),
(83, 5, 'zDAN3Nz1nJNqktS0LCsmMV6kHMszd5nj9aDPA5S6', 21, 'Lava-Roupas Comfort Caixa 1,6kg', 'item-1667425532.jpg', '27', '0', NULL, NULL, NULL, 1, '27', NULL, NULL, NULL, 1, '2022-11-25 02:43:16', '2022-11-25 02:43:16'),
(84, 5, 'zDAN3Nz1nJNqktS0LCsmMV6kHMszd5nj9aDPA5S6', 20, 'Kit Desinfetante Ype', 'item-1667425368.jpg', '27', '0', NULL, NULL, NULL, 1, '27', NULL, NULL, NULL, 1, '2022-11-25 02:43:23', '2022-11-25 02:43:23'),
(85, 14, 'LkhkNrDJNOvca6E41LMmzEvkaTT0yJ8okMMkrDLI', 70, 'Dogão Especial de Frango', 'item-1668784316.jpg', '15', '0', NULL, NULL, NULL, 1, '15', NULL, NULL, NULL, 1, '2022-11-25 22:02:03', '2022-11-25 22:02:03'),
(86, 10, 'WUakKQkbMzcNn95xIoDQRYS7JWeE068DuSMvwpct', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-11-27 12:21:59', '2022-11-27 12:21:59'),
(87, 11, '5bE7ywnP5G2oCjvzLWhnwtfZaUDr3iagLAHJYste', 44, 'Vela Salus', 'item-1667669317.jpg', '15', '0', NULL, NULL, NULL, 1, '15', NULL, NULL, NULL, 1, '2022-11-27 17:34:15', '2022-11-27 17:34:15'),
(88, 8, '5bE7ywnP5G2oCjvzLWhnwtfZaUDr3iagLAHJYste', 60, 'CAPA CASE FLIP COVER J5 SAMSUNG ORIGINAL', 'item-1668513970.jpg', '30', '0', NULL, NULL, NULL, 1, '30', NULL, NULL, NULL, 1, '2022-11-27 17:35:45', '2022-11-27 17:35:45'),
(89, 8, '5bE7ywnP5G2oCjvzLWhnwtfZaUDr3iagLAHJYste', 53, 'Monitor Touch Screen 15 Polegadas LED Elo Touch ET 1509L', 'item-1668473019.jpg', '2.585', '0', NULL, NULL, NULL, 1, '2.585', NULL, NULL, NULL, 1, '2022-11-27 17:36:02', '2022-11-27 17:36:02'),
(90, 8, 'XwrSKSCowgZA3e3gzsIt2txH4RokJBrA2QPBqUli', 60, 'CAPA CASE FLIP COVER J5 SAMSUNG ORIGINAL', 'item-1668513970.jpg', '30', '0', NULL, NULL, NULL, 1, '30', NULL, NULL, NULL, 1, '2022-11-27 20:43:01', '2022-11-27 20:43:01'),
(93, 10, 'ZwgXE0mVIq83pApCvAW9P5PEvY8b16sDJDzwmWWv', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-11-29 21:13:15', '2022-11-29 21:13:15'),
(94, 10, 'ZwgXE0mVIq83pApCvAW9P5PEvY8b16sDJDzwmWWv', 31, 'Bolinho de queijo', 'item-1667664898.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-11-29 21:13:19', '2022-11-29 21:13:19'),
(97, 10, 'byvBb9fHkMMMQHtOAoAfTprfGNBV9zlNcRUhcU63', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-12-01 18:00:48', '2022-12-01 18:00:48'),
(98, 10, 'byvBb9fHkMMMQHtOAoAfTprfGNBV9zlNcRUhcU63', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-12-01 18:00:55', '2022-12-01 18:00:55'),
(99, 10, 'byvBb9fHkMMMQHtOAoAfTprfGNBV9zlNcRUhcU63', 67, 'FRITAS', 'item-1668783386.jpg', '8', '0', NULL, NULL, NULL, 1, '8', NULL, NULL, NULL, 1, '2022-12-01 18:03:51', '2022-12-01 18:03:51'),
(102, 11, 'HdrwbXLwDxuf8YMPC3Gr5CQIJoZLM80qA3Y1w9DY', 44, 'Vela Salus', 'item-1667669317.jpg', '15', '0', NULL, NULL, NULL, 1, '15', NULL, NULL, NULL, 1, '2022-12-02 15:52:01', '2022-12-02 15:52:01'),
(103, 11, 'HdrwbXLwDxuf8YMPC3Gr5CQIJoZLM80qA3Y1w9DY', 40, 'Bella Bomba', 'item-1667668692.jpg', '41', '0', NULL, NULL, NULL, 1, '41', NULL, NULL, NULL, 1, '2022-12-02 15:52:06', '2022-12-02 15:52:06'),
(106, 14, 'XZffLrcnk6u5Xra5VzfHkhGpENFsDkw5Kj2rQUx7', 70, 'Dogão Especial de Frango', 'item-1668784316.jpg', '15', '0', NULL, NULL, NULL, 1, '15', NULL, NULL, NULL, 1, '2022-12-08 12:14:02', '2022-12-08 12:14:02'),
(107, 14, 'XZffLrcnk6u5Xra5VzfHkhGpENFsDkw5Kj2rQUx7', 69, 'Dogão Carne Moída', 'item-1668784053.jpg', '13', '0', NULL, NULL, NULL, 1, '13', NULL, NULL, NULL, 1, '2022-12-08 12:14:09', '2022-12-08 12:14:09'),
(114, 8, 'ibZkvrQuR8IKgiwqIKfrnMx99e87Hq6udBlGs0fY', 60, 'CAPA CASE FLIP COVER J5 SAMSUNG ORIGINAL', 'item-1668513970.jpg', '30', '0', NULL, NULL, NULL, 1, '30', NULL, NULL, NULL, 1, '2022-12-13 01:01:28', '2022-12-13 01:01:28'),
(115, 10, 'qYHHtlQ95sEfpqLJ8yPjrtTxvhx1xjhJemUInHzL', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-12-13 01:09:53', '2022-12-13 01:09:53'),
(116, 10, 'qYHHtlQ95sEfpqLJ8yPjrtTxvhx1xjhJemUInHzL', 31, 'Bolinho de queijo', 'item-1667664898.jpg', '2', '0', NULL, NULL, NULL, 2, '2', NULL, NULL, NULL, 1, '2022-12-13 01:10:02', '2022-12-13 01:13:13'),
(117, 8, 'ibZkvrQuR8IKgiwqIKfrnMx99e87Hq6udBlGs0fY', 59, 'Bateria Apple iPhone 6 Plus 2915 MAH', 'item-1668513846.jpg', '53', '0', NULL, NULL, NULL, 2, '53', NULL, NULL, NULL, 1, '2022-12-13 01:17:45', '2022-12-13 01:17:49'),
(118, 10, 'a3BMlGBTG6znIiM8bDaCZrxhcItG2Y4kdAF6eEiR', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-12-13 15:17:14', '2022-12-13 15:17:14'),
(119, 10, 'a3BMlGBTG6znIiM8bDaCZrxhcItG2Y4kdAF6eEiR', 63, 'Refrigerante Guaraná ANTARCTICA', 'item-1668782149.jpg', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2022-12-13 15:17:20', '2022-12-13 15:17:20'),
(120, 10, 'WdroqXCN8tXp8nvbfHwHioMeJ7H5wtCVS71iAZQ6', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-12-13 15:20:21', '2022-12-13 15:20:21'),
(121, 10, 'WdroqXCN8tXp8nvbfHwHioMeJ7H5wtCVS71iAZQ6', 31, 'Bolinho de queijo', 'item-1667664898.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-12-13 15:20:25', '2022-12-13 15:20:25'),
(124, 10, '05fvPVIICXhC1UfwNva3hzmbD9uU7WKJ4Enh5AYc', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-12-13 22:10:31', '2022-12-13 22:10:31'),
(145, 10, 'ue3SVDXgvdLznCaaPaC8MPW0pbki8j6fT8NZdw2r', 31, 'Bolinho de queijo', 'item-1667664898.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2022-12-27 00:27:09', '2022-12-27 00:27:09'),
(146, 10, 'ue3SVDXgvdLznCaaPaC8MPW0pbki8j6fT8NZdw2r', 63, 'Refrigerante Guaraná ANTARCTICA', 'item-1668782149.jpg', '10', '0', NULL, NULL, NULL, 1, '10', NULL, NULL, NULL, 1, '2022-12-27 00:27:21', '2022-12-27 00:27:21'),
(147, 8, 'a4iZEgKbX5lA0Sxk0IoT2raoo4RJeEDMCTqqcL9F', 60, 'CAPA CASE FLIP COVER J5 SAMSUNG ORIGINAL', 'item-1668513970.jpg', '30', '0', NULL, NULL, NULL, 1, '30', NULL, NULL, NULL, 1, '2022-12-29 05:34:18', '2022-12-29 05:34:18'),
(151, 8, 'vB9CCyyH8eUFR7Vzccd4EwRmKAhdf8fudM6lKST1', 59, 'Bateria Apple iPhone 6 Plus 2915 MAH', 'item-1668513846.jpg', '53', '0', NULL, NULL, NULL, 1, '53', NULL, NULL, NULL, 1, '2023-01-03 15:53:25', '2023-01-03 15:53:25'),
(152, 8, 'vB9CCyyH8eUFR7Vzccd4EwRmKAhdf8fudM6lKST1', 56, 'Notebook Lenovo B330 15.6 Polegadas LED', 'item-1668473883.jpg', '2.399', '0', NULL, NULL, NULL, 1, '2.399', NULL, NULL, NULL, 1, '2023-01-03 15:53:34', '2023-01-03 15:53:34'),
(165, 33, 'nzALgsoBBA5NTDRr2KelUxan2VTlvCHywLylBIbj', 76, 'Eisenbahn Pilsen', 'item-1673370504.jpeg', '3', '0', NULL, NULL, NULL, 1, '3', NULL, NULL, NULL, 1, '2023-01-20 19:41:33', '2023-01-20 19:41:33'),
(170, 11, '8oCGv2tKHlhzQ6mf6THaHO4oZdFXMSR7v6EJu7cu', 44, 'Vela Salus', 'item-1667669317.jpg', '15', '0', NULL, NULL, NULL, 1, '15', NULL, NULL, NULL, 1, '2023-01-31 21:18:48', '2023-01-31 21:18:48'),
(173, 33, '3EUHhrdowozn2mSt4Ln7X8IlEQ2h1uydZ7BmZjfv', 76, 'Eisenbahn Pilsen', 'item-1673370504.jpeg', '3', '0', NULL, NULL, NULL, 1, '3', NULL, NULL, NULL, 1, '2023-02-13 18:51:31', '2023-02-13 18:51:31'),
(179, 8, 'z58qFf4foYpBRg9xh8vsOgvcyO0rmgNtO5cHIUB9', 49, 'Extensão SMS 64100', 'item-1668471635.jpg', '77', '0', NULL, NULL, NULL, 1, '77', NULL, NULL, NULL, 1, '2023-02-18 21:09:12', '2023-02-18 21:09:12'),
(180, 10, 'EuE97RnB9MNeAxSY3W9yfZ56kbUnjfw1sdW8BdIV', 65, 'X - TUDO', 'item-1668782437.jpg', '20', '0', NULL, NULL, NULL, 1, '20', NULL, NULL, NULL, 1, '2023-02-23 20:04:02', '2023-02-23 20:04:02'),
(181, 10, 'EuE97RnB9MNeAxSY3W9yfZ56kbUnjfw1sdW8BdIV', 64, 'X-SALADA', 'item-1668782281.jpg', '9', '0', NULL, NULL, NULL, 1, '9', NULL, NULL, NULL, 1, '2023-02-23 20:04:07', '2023-02-23 20:04:07'),
(182, 33, 'XmOgP2fHJ0mGijD27C56T2C3aUOlGGiC2Co92PTi', 76, 'Eisenbahn Pilsen', 'item-1673370504.jpeg', '3', '0', NULL, NULL, NULL, 1, '3', NULL, NULL, NULL, 1, '2023-02-28 20:42:12', '2023-02-28 20:42:12'),
(183, 10, 'oCHyitF1veiYhBuN5S9HFnaUrJN3wLdpF2ARazmC', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2023-03-03 12:34:57', '2023-03-03 12:34:57'),
(184, 10, 'dz1sxg9WIebBNy9DOxmYqzvMdpyBwwXI60yKu1N6', 32, 'Coxinha de Frango', 'item-1667665155.jpg', '2', '0', NULL, NULL, NULL, 1, '2', NULL, NULL, NULL, 1, '2023-03-03 12:50:36', '2023-03-03 12:50:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Yes,2=No',
  `is_available` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Yes,2=No',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Yes,2=No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `restaurant`, `name`, `slug`, `is_featured`, `is_available`, `is_deleted`, `created_at`, `updated_at`, `category_type`) VALUES
(1, 2, 'PIZZA', 'pizza', 2, 1, 1, '2022-10-24 06:27:31', '2022-11-02 19:47:56', 0),
(2, 2, 'Drinks', 'drinks', 2, 1, 1, '2022-10-24 06:40:37', '2022-11-02 19:47:47', 1),
(3, 5, 'Pizza', 'pizza-3', 2, 1, 1, '2022-10-25 05:23:01', '2022-11-02 21:19:10', 0),
(4, 5, 'Sandwich', 'sandwich', 2, 1, 1, '2022-10-25 05:28:25', '2022-11-02 21:19:04', 0),
(5, 2, 'Gás', 'gas', 2, 1, 2, '2022-11-02 19:43:48', '2022-11-02 19:43:48', 0),
(6, 2, 'Água', 'agua', 2, 1, 2, '2022-11-02 19:44:06', '2022-11-02 19:44:06', 0),
(7, 2, 'Carvão', 'carvao', 2, 1, 2, '2022-11-02 19:44:22', '2022-11-02 19:44:22', 0),
(8, 2, 'Kit gás', 'kit-gas', 2, 1, 2, '2022-11-02 19:45:01', '2022-11-02 19:45:01', 0),
(9, 2, 'Filtro e Suporte', 'filtro-e-suporte', 2, 1, 2, '2022-11-02 19:46:08', '2022-11-02 19:46:08', 0),
(10, 5, 'Biscoito, salgadinhos', 'biscoito-salgadinhos', 2, 1, 2, '2022-11-02 21:08:00', '2022-11-02 21:10:41', 0),
(11, 5, 'Básico da despensa', 'basico-da-despensa', 2, 1, 2, '2022-11-02 21:09:54', '2022-11-02 21:09:54', 0),
(12, 5, 'Carnes e aves', 'carnes-e-aves', 2, 1, 2, '2022-11-02 21:11:00', '2022-11-02 21:11:00', 0),
(13, 5, 'Congelados', 'congelados', 2, 1, 2, '2022-11-02 21:11:17', '2022-11-02 21:11:17', 0),
(14, 5, 'Doces e sobremesas', 'doces-e-sobremesas', 2, 1, 2, '2022-11-02 21:11:40', '2022-11-02 21:11:40', 0),
(15, 5, 'Frios', 'frios', 2, 1, 2, '2022-11-02 21:12:04', '2022-11-02 21:12:04', 0),
(16, 5, 'Frutas', 'frutas', 2, 1, 2, '2022-11-02 21:12:20', '2022-11-02 21:12:20', 0),
(17, 5, 'Entalados e conservas', 'entalados-e-conservas', 2, 1, 2, '2022-11-02 21:12:48', '2022-11-02 21:12:48', 0),
(18, 5, 'Legumes e verduras', 'legumes-e-verduras', 2, 1, 2, '2022-11-02 21:13:09', '2022-11-02 21:13:09', 0),
(19, 5, 'Molhos e temperos', 'molhos-e-temperos', 2, 1, 2, '2022-11-02 21:13:46', '2022-11-02 21:13:46', 0),
(20, 5, 'Ovos', 'ovos', 2, 1, 2, '2022-11-02 21:14:09', '2022-11-02 21:14:09', 0),
(21, 5, 'Padaria e confeitaria', 'padaria-e-confeitaria', 2, 1, 2, '2022-11-02 21:14:31', '2022-11-02 21:14:31', 0),
(22, 5, 'Peixaria', 'peixaria', 2, 1, 2, '2022-11-02 21:14:56', '2022-11-02 21:14:56', 0),
(23, 5, 'Queijos e laticínios', 'queijos-e-laticinios', 2, 1, 2, '2022-11-02 21:15:36', '2022-11-02 21:15:36', 0),
(24, 5, 'Bebidas', 'bebidas', 2, 1, 2, '2022-11-02 21:16:00', '2022-11-02 21:16:00', 0),
(25, 5, 'Bebidas alcoólicas', 'bebidas-alcoolicas', 2, 1, 2, '2022-11-02 21:16:44', '2022-11-02 21:16:44', 0),
(26, 5, 'Bebê e crianças', 'bebe-e-criancas', 2, 1, 2, '2022-11-02 21:17:17', '2022-11-02 21:17:17', 0),
(27, 5, 'Beleza e perfumaria', 'beleza-e-perfumaria', 2, 1, 2, '2022-11-02 21:17:39', '2022-11-02 21:17:39', 0),
(28, 5, 'Limpeza', 'limpeza', 2, 1, 2, '2022-11-02 21:18:15', '2022-11-02 21:18:15', 0),
(29, 10, 'Sobremesas', 'sobremesas', 2, 1, 2, '2022-11-05 16:05:39', '2022-11-05 16:07:14', 0),
(30, 10, 'Marmitex', 'marmitex', 2, 1, 2, '2022-11-05 16:05:52', '2022-11-05 16:05:52', 0),
(31, 10, 'Porções', 'porcoes', 2, 1, 2, '2022-11-05 16:06:12', '2022-11-05 16:06:12', 0),
(32, 10, 'Lanches', 'lanches', 2, 1, 2, '2022-11-05 16:06:23', '2022-11-05 16:06:23', 0),
(33, 10, 'Bebidas', 'bebidas-33', 2, 1, 2, '2022-11-05 16:06:33', '2022-11-05 16:06:33', 0),
(34, 10, 'Salgados', 'salgados', 2, 1, 2, '2022-11-05 16:07:50', '2022-11-05 16:07:50', 0),
(35, 11, 'Gás', 'gas-35', 2, 1, 2, '2022-11-05 16:50:58', '2022-11-05 16:50:58', 0),
(36, 11, 'Água', 'agua-36', 2, 1, 2, '2022-11-05 16:51:29', '2022-11-05 16:51:29', 0),
(37, 11, 'Carvão', 'carvao-37', 2, 1, 2, '2022-11-05 16:51:54', '2022-11-05 16:51:54', 0),
(38, 11, 'Kit gás', 'kit-gas-38', 2, 1, 2, '2022-11-05 16:52:12', '2022-11-05 16:52:12', 0),
(39, 11, 'Acessórios', 'acessorios', 2, 1, 2, '2022-11-05 16:53:05', '2022-11-05 16:54:30', 0),
(40, 8, 'Peças', 'pecas', 2, 1, 2, '2022-11-15 00:07:50', '2022-11-15 00:07:50', 0),
(41, 8, 'Acessórios', 'acessorios-41', 2, 1, 2, '2022-11-15 00:08:11', '2022-11-15 00:08:11', 0),
(42, 8, 'Monitores', 'monitores', 2, 1, 2, '2022-11-15 00:41:24', '2022-11-15 00:41:24', 0),
(43, 8, 'Notebook', 'notebook', 2, 1, 2, '2022-11-15 00:49:19', '2022-11-15 00:49:19', 0),
(44, 8, 'Celular', 'celular', 2, 1, 2, '2022-11-15 11:55:14', '2022-11-15 11:55:14', 0),
(45, 14, 'LANCHES', 'lanches-45', 2, 1, 2, '2022-11-18 14:57:49', '2022-11-18 14:57:49', 0),
(46, 14, 'BEBIDA', 'bebida', 2, 1, 2, '2022-11-18 14:58:10', '2022-11-18 14:58:10', 0),
(47, 14, 'SOBREMESA', 'sobremesa', 2, 1, 2, '2022-11-18 15:01:12', '2022-11-18 15:01:12', 0),
(48, 15, 'Cerveja', 'cerveja', 2, 1, 2, '2022-11-18 15:18:42', '2022-11-18 15:18:42', 0),
(49, 15, 'Energético', 'energetico', 2, 1, 2, '2022-11-18 15:19:06', '2022-11-18 15:19:06', 0),
(50, 15, 'Gelo', 'gelo', 2, 1, 2, '2022-11-18 15:19:50', '2022-11-18 15:19:50', 0),
(51, 15, 'Whisky', 'whisky', 2, 1, 2, '2022-11-18 15:20:28', '2022-11-18 15:20:28', 0),
(52, 15, 'Carvão', 'carvao-52', 2, 1, 2, '2022-11-18 15:20:49', '2022-11-18 15:20:49', 0),
(53, 15, 'Destilados', 'destilados', 2, 1, 2, '2022-11-18 15:21:06', '2022-11-18 15:21:06', 0),
(54, 16, 'Pizza', 'pizza-54', 2, 1, 2, '2022-11-27 18:31:30', '2022-11-27 18:31:30', 0),
(55, 16, 'Bebidas', 'bebidas-55', 2, 1, 2, '2022-11-27 18:32:11', '2022-11-27 18:32:11', 0),
(58, 33, 'Bebidas', 'bebidas-56', 2, 1, 2, '2023-01-10 16:59:01', '2023-01-10 16:59:01', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `active_from` varchar(255) NOT NULL,
  `active_to` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `coupons`
--

INSERT INTO `coupons` (`id`, `restaurant`, `name`, `code`, `type`, `price`, `active_from`, `active_to`, `limit`, `status`, `token`, `created_at`, `updated_at`) VALUES
(2, 1, 'staff hihioo', 'MENU#34324', 1, '70', '2023-01-07', '2023-01-23', 200, 2, 'd6f936b8b8c8832c40fecd2a8058601b', '2023-01-07 03:28:03', '2023-01-07 03:28:10'),
(3, 1, 'VIP LOJA COMPRE BEM', 'FREE#23awyf', 1, '1', '2023-01-10', '2023-01-31', 2, 2, 'a372c8d34cf8b3bbcd75a5bed329f744', '2023-01-10 15:23:36', '2023-01-10 16:19:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `_id` text DEFAULT NULL,
  `symbol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `currency`
--

INSERT INTO `currency` (`id`, `name`, `_id`, `symbol`) VALUES
(1, 'USD', '785934uijtr438tu8ir4jhtio4uyv59n84u5on3i4u5gv93', '$'),
(2, 'BRL', '4u589043iu5934un9034unb934nu9b30u09gn9u', 'R$');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deliveryareas`
--

CREATE TABLE `deliveryareas` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `slug` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `deliveryareas`
--

INSERT INTO `deliveryareas` (`id`, `restaurant`, `name`, `price`, `slug`, `created_at`, `updated_at`) VALUES
(1, 2, 'Far Away', 40, 'far-away', '2022-10-24 15:45:05', '2022-10-24 15:45:15'),
(2, 2, 'Near By', 20, 'near-by', '2022-10-24 15:45:28', '2022-10-24 15:45:28'),
(3, 10, 'Itaguai', 1, 'itaguai', '2022-11-10 13:23:35', '2022-11-10 13:23:35'),
(4, 10, 'Florida Mirim', 2, 'florida-mirim', '2022-11-10 13:24:01', '2022-11-10 13:24:01'),
(5, 10, 'Agenor de Campos', 3, 'agenor-de-campos', '2022-11-10 13:24:37', '2022-11-10 13:24:37'),
(6, 5, 'Taxa única (apenas para Mongaguá)', 10, 'taxa-unica-apenas-para-mongagua', '2022-11-10 13:51:33', '2022-11-10 13:51:33'),
(7, 33, 'Taxa única', 15, 'taxa-unica', '2023-01-10 21:32:35', '2023-01-10 21:32:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extras`
--

CREATE TABLE `extras` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `slug` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `extras`
--

INSERT INTO `extras` (`id`, `restaurant`, `item_id`, `name`, `price`, `slug`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Extra cheese', 5, 'extra-cheese', '2022-10-24 06:31:29', '2022-10-24 06:31:29'),
(2, 2, 1, 'Coke', 10, 'coke', '2022-10-24 06:31:51', '2022-10-24 06:31:51'),
(3, 2, 1, 'Sauce', 5, 'sauce', '2022-10-24 06:32:05', '2022-10-24 06:32:05'),
(4, 2, 1, 'Cheese', 8, 'cheese', '2022-10-24 06:32:21', '2022-10-24 06:32:21'),
(5, 5, 4, 'Coke', 12, 'coke-5', '2022-10-25 05:27:47', '2022-10-25 05:27:47'),
(6, 5, 4, 'Cheese', 12, 'cheese-6', '2022-10-25 05:27:54', '2022-10-25 05:27:54'),
(7, 10, 33, 'Banana à milanesa', 2, 'banana-a-milanesa', '2022-11-05 16:30:22', '2022-11-05 16:30:22'),
(8, 10, 33, 'Ovo', 1, 'ovo', '2022-11-05 16:31:11', '2022-11-05 16:31:11'),
(9, 10, 33, 'Bisteca', 5, 'bisteca', '2022-11-05 16:31:43', '2022-11-05 16:31:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

CREATE TABLE `info` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_auth_sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_auth_token` varchar(255) NOT NULL,
  `token` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `info`
--

INSERT INTO `info` (`id`, `type`, `t_auth_sid`, `t_auth_token`, `token`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 'twilio', 'AC57489503b4c37c069414f11c7c7217dd', 'a0f021048ee228cd3afcbb512fc7af89', 'tjietunur8498y8NICY8NF843CF89349M8Y838ny873cfhn82f989f83nyhc3fn', 'ksjhfnfuyvr4783y5n78y7B76TB67VR56R6VBN7MN89B87cvcr566cex4e4x3c5v6', '2022-11-06 06:20:53', '2022-11-06 06:20:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `description` text NOT NULL,
  `item_price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `tax` float DEFAULT 0,
  `slug` text DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1,
  `has_variants` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `restaurant`, `cat_id`, `item_name`, `description`, `item_price`, `image`, `tax`, `slug`, `is_available`, `has_variants`, `created_at`, `updated_at`, `_id`) VALUES
(1, 2, 1, 'Laziz Mac Veg Pizza', 'Paneer, onion, olives and baby corn.', 85, 'item-1666592957.jpg', 5, 'laziz-mac-veg-pizza', 1, 1, '2022-10-24 11:59:17', '2022-10-24 08:01:15', 'ioeio4uo4i3j543ih5894yuhr54i3h5u84y3hin'),
(2, 2, 1, 'Triple Cheese Margherita Pizza', 'Enjoy in every bite mozzarella, liquid cheese and filler cheese.', 80, 'item-1666594582.jpg', 0, 'triple-cheese-margherita-pizza', 1, 2, '2022-10-24 12:26:23', '2022-10-24 12:26:23', '0f6d980c8e05925a98ced09cb90bf3aa85cf59d297ca9d42c34485990748844820e0e576d925055ea48925f596edbbc8029489a78b9439ffa82896074351b819'),
(3, 2, 2, 'Coca Cola', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 10, 'item-1666600487.jpg', 0, 'coca-cola', 1, 2, '2022-10-24 14:04:47', '2022-10-24 14:04:47', '20b95d1f38c18a288f49e2e4ab77e27f530a8b610ce97a59a2f308d257f9e87e1de9352cbe813e7bb118d1c426419c68a501e1a89d40b52e27049d02efcad831'),
(4, 5, 3, 'Corn Delight Pizza', 'Green capsicum, sweet corn and baby corn.', 55, 'item-1666675583.jpg', 4, 'corn-delight-pizza', 1, 1, '2022-10-25 10:56:23', '2022-10-25 05:27:58', 'f61e6002ebd3104bb996ec9352983f0193f86c8e29207249ad5ec8870ab56440b30e629df855782cebd315fe2c683098fac5ccf060990ffefb16472481161cf7'),
(5, 5, 4, 'Garlic Bread with Cheese', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 10, 'item-1666675749.jpg', 0, 'garlic-bread-with-cheese', 1, 2, '2022-10-25 10:59:09', '2022-10-25 10:59:09', '3835578e271398c2f30eb489628582eab891cff6126f318ea7c5d41c521ca5b0e031ccb85c3701566cb3a0ccbfc7223e872f7fae1127265f962b73459990b575'),
(6, 2, 5, 'Botijão P13', 'Gás GLP Consigaz de cozinha: qualidade e segurança para seu lar', 118, 'item-1667418800.jpg', 0, 'botijao-p13', 1, 2, '2022-11-02 16:53:20', '2022-11-02 16:53:20', '5f0e0461df33d7ec2c92e3ba2d6917f8f046b966df832f4f565c75e9e6b896f7d9070df07ea0c6298bcc4655179edab9195ae3850d8f3b9f47af3dac29ad0b31'),
(7, 2, 5, 'Gás P20', 'Gás GLP Consigaz P20: qualidade e segurança para seu comércio', 192, 'item-1667419060.jpg', 0, 'gas-p20', 1, 2, '2022-11-02 16:57:40', '2022-11-02 16:57:40', '7ea693573961c4962a82eec6092c92fa8752c4bfd45a439433c73b37ee286825ede61de0435faa85a252333c301f13e42e076c3ca137683f0673b0209e593fc5'),
(8, 2, 9, 'Filtro de Barro 8litros', 'Filtro de Barro São Pedro 8 Litros com 1 Boia e 1 Vela Tradicional', 142, 'item-1667419435.jpg', 0, 'filtro-de-barro-8litros', 1, 2, '2022-11-02 17:03:55', '2022-11-02 17:03:55', 'a24aa074a9efa35da1ea1f2148a0440e850cc71d7583a2e065f1fd36752227aee57b95ad8a9801997edc9cde626c6ab197aacff75f27c8d72275cc425cf9523d'),
(9, 2, 9, 'Filtro de Barro 4litros', 'Filtro de Barro São Pedro 4 Litros', 72, 'item-1667419496.jpg', 0, 'filtro-de-barro-4litros', 1, 2, '2022-11-02 17:04:56', '2022-11-02 17:04:56', '4ec3171cdf7621f967e41b2e9eb4b12b125061bafeb0c9f7b152fb793071773ef9f33b1f04a7b7b1b515b3a017bbfe420c27f4d6be777173aeeab933193beb69'),
(10, 2, 9, 'Bomba de Água de Pressão', 'Bomba De Água Manual Pressão Para Galão 10 E 20 Litros', 17, 'item-1667419994.jpg', 0, 'bomba-de-agua-de-pressao', 1, 2, '2022-11-02 17:13:14', '2022-11-02 17:13:14', 'fc561cdc73acfac9655e6ce95633d147f6c4b657b2eb776bc054ece918e5214e342be573a56acd63f5c79a9177954b9dd9209387e6b6b2d46038fd899c4a3265'),
(11, 2, 9, 'Suporte Lucky', 'Suporte p/ Galão De Água Mineral 10 /20 Lts', 25, 'item-1667420161.jpg', 0, 'suporte-lucky', 1, 2, '2022-11-02 17:16:01', '2022-11-02 17:16:01', '412ef4402f2a9a892585d7cd1b4233bd5803a44cd6a846d53573ae3ccc3f5449c5b85ab53315a85e493c8fe2550cd6c205a267ced617f59969f09ef94619f07c'),
(12, 2, 9, 'Suporte - Bika D\'agua', 'Suporte Plástico p/ Galão de Água c/Cuba de Barro', 58, 'item-1667420356.jpg', 0, 'suporte-bika-dagua', 1, 2, '2022-11-02 17:19:16', '2022-11-02 17:19:16', 'a521771c812e03abc8881c1b4786fdf50900f582d2df61806d7dff6d2fe72c88444561a4f67063fea709179878c18087b59441f66c38a277a49c82950c656f2c'),
(13, 2, 8, 'Registro c/ Mangueira 1,20cm', 'Kit Regulador Registro De Gás + Mangueira e Abraçadeiras', 53, 'item-1667420602.jpg', 0, 'registro-c-mangueira-120cm', 1, 2, '2022-11-02 17:23:22', '2022-11-02 17:23:22', '4215da5d6ba5064508222c176d778e5bf40836de736059d2d18cb7664587459846dbc63196f412fcbd36d69ad8693f52d66df297789c960195675862b994a993'),
(14, 2, 8, 'Registro', 'Regulador De Gás - Registro Válvula Cozinha Inmetro', 30, 'item-1667420714.jpg', 0, 'registro', 1, 2, '2022-11-02 17:25:14', '2022-11-02 17:25:14', '103e3ef9449f999622d5105ee2d86f0090d42ec4ae7369030acfa392de3b7a0ae8ae653600f4c216a75e7b948f2fd091d0f50cc38089f55e2236e5baa937d8bb'),
(15, 2, 8, 'Mangueira 1,20cm', 'MANGUEIRA GÁS GLP 1,20M C/ABRACADEIRA METALICA Force Line', 18, 'item-1667420910.jpg', 0, 'mangueira-120cm', 1, 2, '2022-11-02 17:28:30', '2022-11-02 17:28:30', '28d21302d3d48cc1fd0b6e7173c3b11318e88cc68bbef1a2eaa0bb467341249ab8dd408f274c264bea7704336907643116db2181cf9ab539c7451c2014ef9677'),
(16, 2, 7, 'Carvão vegetal 10kg', 'Saco de carvão 10kg para Churrasco', 20, 'item-1667421280.jpg', 0, 'carvao-vegetal-10kg', 1, 2, '2022-11-02 17:34:40', '2022-11-02 17:34:40', '353e1184a98bc3fb8bf23a4b972bdbd4ed142bf5eb51102a4fa773cdf96583192dc63b86312bc31060bd36cd7a06a58ff0e270911f9878f966ada2177c7606b0'),
(17, 2, 6, 'Galão 20litros', 'Galão 20 litros Cristal', 14, 'item-1667421486.jpg', 0, 'galao-20litros', 1, 2, '2022-11-02 17:38:06', '2022-11-02 17:38:06', '710515de54f19e1920d54b4e505bd850ae586ab31d54d1ea2383f8ef01cba40a09577e5adba23c83b2b7d8bd60e304116d78aff54ae2e971ffa757d0629c89f3'),
(18, 5, 28, 'Desinfetante QUALITÁ 5 litros', 'Desinfetante QUALITÁ Herbal 5 Litros', 13, 'item-1667425159.jpg', 0, 'desinfetante-qualita-5-litros', 1, 2, '2022-11-03 03:09:19', '2022-11-03 03:09:19', '6dcef0ebf68a70d333be44ce61f9588b27fbc0572481e66d8810dc789106eb525341354060cba3fb2650693b3047a12e4c898a608429b8ed78dca19b38ba920e'),
(19, 5, 28, 'Desinfetante SANOL 2 Litros', 'Desinfetante Talco & Flores Brancas SANOL 2 Litros', 4, 'item-1667425268.jpg', 0, 'desinfetante-sanol-2-litros', 1, 2, '2022-11-03 03:11:08', '2022-11-03 03:11:08', '748000140f22f420b18230efd99bf137ae8c6311ed58517cd9554bdebbeaa627d0d41e3a15e8472082184498710cc8015048359d48505b7c180de4044ebb41df'),
(20, 5, 28, 'Kit Desinfetante Ype', 'Kit Desinfetante Ype Antibac Borrifador + Refil', 27, 'item-1667425368.jpg', 0, 'kit-desinfetante-ype', 1, 2, '2022-11-03 03:12:48', '2022-11-03 03:12:48', 'c12277bb4fd97aab6e325d91c09288e1ad6831e49c6f31bd07df069730f6f861c5bd6ec625421ac639393993c925fc5273e12c425b0b382bfc213cb1aaaac05f'),
(21, 5, 28, 'Lava-Roupas Comfort Caixa 1,6kg', 'Lava-Roupas em Pó Fiber Protect Comfort Caixa 1,6kg', 27, 'item-1667425532.jpg', 0, 'lava-roupas-comfort-caixa-16kg', 1, 2, '2022-11-03 03:15:32', '2022-11-03 03:15:32', 'dc5d5244763e8745d4f79a83bae0cbc1d7a65c267643b571635a3f08f8be501b3041f6def0ce5c7fa14e083a005cc2ae6a5101346e78946247d4d05d67b38b76'),
(22, 5, 27, 'Po Facial Aveludado', 'Bruna Tavares BT Skinpowder Medium Po Facial Aveludado', 69, 'item-1667425688.jpg', 0, 'po-facial-aveludado', 1, 2, '2022-11-03 03:18:08', '2022-11-03 03:18:08', '731d9ba4debaeb1e0a511568430d4f927635deb2198271e3998003ecd96c897c13236f5de68c5c05d33f73fe59ca944a68226fd3762853fc3929de4dee518d54'),
(23, 5, 27, 'Máscara Capilar Dabelle  400g', 'Máscara Capilar De Tratamento Dabelle Meu Cronograma Perfeito Hidratação 400g', 20, 'item-1667425879.jpg', 0, 'mascara-capilar-dabelle-400g', 1, 2, '2022-11-03 03:21:19', '2022-11-03 03:21:19', 'fed9068c40e5e4aaf7fb374eed79afd40690f0a411455982d61dce6ff706efd882c9a8ce27465d249654ec5d5fd97493c2c7ee4a69aca8582191f8e94e2b6b28'),
(24, 5, 26, 'Fralda Descartável  Personal Baby Protect & Sec G Pacote 34 Unidades', 'Fralda Descartável Infantil Personal Baby Protect & Sec G Pacote 34 Unidades Grátis 2 Fraldas', 40, 'item-1667426050.jpg', 0, 'fralda-descartavel-personal-baby-protect-sec-g-pacote-34-unidades', 1, 2, '2022-11-03 03:24:10', '2022-11-03 03:24:10', 'da85e02bfe6c5f133da7df79fa20ae38fb4c7e091ca45fc596262afb7ce9cc5fd84b86241b8811118ee09edae5c0c81a302ec99b3b002c631d02d48eea1050bb'),
(25, 5, 26, 'Escova Dental Infantil', 'Escova Dental Infantil Marie Macia - Etident', 7, 'item-1667426272.jpg', 0, 'escova-dental-infantil', 1, 2, '2022-11-03 03:27:52', '2022-11-03 03:27:52', 'b11678cd8f7cef99efcb47e668f67ee6746a555e9b841f78123daecfcb3e668568645a3cea393f2fe5055cdb10b31ca217f387b1577e5c6a6d0ec8c94d2629d1'),
(26, 5, 25, 'Cerveja COLORADO Ribeirão Lager 600 ML Garrafa', 'Uma cerveja que o nome já diz tudo. Nascida em Ribeirão Preto.', 10, 'item-1667426429.jpg', 0, 'cerveja-colorado-ribeirao-lager-600-ml-garrafa', 1, 2, '2022-11-03 03:30:29', '2022-11-03 03:30:29', 'fa2323a335141d3390d6ab331d442fa2b72d146c32d60fe788f52e727d1e675c7bb8c2d6ace0aa4827a23ee3d4c5ca1f856621d035459535c89915de0ed8aa86'),
(27, 5, 25, 'Cerveja AMSTEL Lager Lata 350ml', 'A Amstel Lata 350ml é uma cerveja lager puro malte apreciada em mais de 110 países.', 3, 'item-1667428216.jpg', 0, 'cerveja-amstel-lager-lata-350ml', 1, 2, '2022-11-03 04:00:16', '2022-11-03 04:00:16', '7e5a3d78445e5275404c502ac63d3be0444036d07567dc3d87a39a5a81b3d1cbe108240aabb471d0edfc4bfad70cbf737d98fdbef5c6bc6549921a0249bad0e9'),
(28, 5, 24, 'Suco AURORA de Uva Garrafa 1,5 Litros', 'Suco Concentrado AURORA Integral de Uva Garrafa 1,5 Litros', 18, 'item-1667428398.jpg', 0, 'suco-aurora-de-uva-garrafa-15-litros', 1, 2, '2022-11-03 04:03:18', '2022-11-03 04:03:18', 'ddd577389893b1d6dc6614e41304b6f8d1d25e991da7c197769eda4b63789f45a0081834447092c2b8b0e0b53596b185110082d8ca3e48426112a13329d1f4bc'),
(29, 5, 24, 'Suco Laranja One Garrafa 1,5l', 'Suco Integral Laranja Natural One Ambiente Garrafa 1,5l', 14, 'item-1667428518.jpg', 0, 'suco-laranja-one-garrafa-15l', 1, 2, '2022-11-03 04:05:18', '2022-11-03 04:05:18', '03f815ce641b4ff95f88aa7c375238e1e3f8d1a0f9d0aaa597544c4850457990737d0a044bee28030b5194f8bbcbfadbaafeff142f834415e8ee2a166e50e6d3'),
(30, 5, 23, 'Iogurte Danone Morango 900g', 'Iogurte Líquido Danone Morango 900g', 13, 'item-1667428692.jpg', 0, 'iogurte-danone-morango-900g', 1, 2, '2022-11-03 04:08:12', '2022-11-03 04:08:12', '0ef547a5dfd02f5e38511baec7b682e6cc694b7548d09afcc8cf971c2df7155f28093f87be551c3269dfe55f5c53e262ab567708604c42dce553cd5034905aa0'),
(31, 10, 34, 'Bolinho de queijo', 'Saboroso e macio 200gr - Tamanho médio', 2, 'item-1667664898.jpg', 0, 'bolinho-de-queijo', 1, 1, '2022-11-05 13:14:58', '2022-11-05 20:29:27', 'c8e8d3fcd9c909d2679646421c64677c82b49b1a4e048ec2c6cfc991770d0682c87fdfec9060080d9d320ff49028b58bb37557f81b7e5ea6dff75b91630d4623'),
(32, 10, 34, 'Coxinha de Frango', 'Sabor irresistível - Tamanho médio', 2, 'item-1667665155.jpg', 0, 'coxinha-de-frango', 1, 2, '2022-11-05 13:19:15', '2022-11-05 13:19:15', '425b37630488f7474da8ed333de8b5f519619655f29dacc6cc8e205d8ae7a453dd134279440dfa1e7d30a1f4cbc7671fd64471523e719c3efb73a2fc56d16bdc'),
(33, 10, 30, 'Feijoada', 'Feijoada, arroz, couve, farofa e torresmo - Tm pequena', 35, 'item-1667665422.jpg', 0, 'feijoada', 1, 2, '2022-11-05 13:23:42', '2022-11-05 16:31:51', 'a483c91633147786617714ecd2e28ad4d2ce37b57eb579910894792333bfd6153de1cde750e418b91d8d8f2af3957f23b3c2fea6b362cdc5078dbf0adefc6b3f'),
(34, 10, 30, 'Almôndegas', 'Arroz, feijão, almôndegas, purê de batatas e salada', 20, 'item-1667665697.jpg', 0, 'almondegas', 1, 2, '2022-11-05 13:28:17', '2022-11-05 13:28:17', 'f258090a5311e20a0a983a3741b1caac3d1a53635d248f833c67c2a0a9cf24dd33ca6f832acdcc29bcb4d7bd77330dc2c0cb1371e52de7014ff31a8aac1b365b'),
(35, 10, 29, 'Copo da Felicidade', 'Morango, nozes e creme holandes no Copo de 300g', 20, 'item-1667666261.jpg', 0, 'copo-da-felicidade', 1, 2, '2022-11-05 13:37:41', '2022-11-05 13:37:41', 'd1a073491699fbeedef4424d8466adf3ce35f730dc353914d08b00f7240381eeeecd8f3f5ef901114942503adf0264b87ddab2db7220a9ee4c1e65151bf7a3bb'),
(36, 11, 35, 'Botijão P13', 'Gás de cozinha 13 kg', 121, 'item-1667667579.jpg', 0, 'botijao-p13-36', 1, 2, '2022-11-05 12:59:39', '2022-11-05 12:59:39', '338aad59d21c59aaae9e99d88d487c5717492142cc6935c8f99b805696f6109980a08463d9821f924b22c196b2af7f6fe1252e7fd9cc8df6c39a39c9c15a3fd6'),
(37, 11, 35, 'Gás P45', 'Gás GLP Consigaz P45 Qualidade e Segurança para seu comércio', 480, 'item-1667667971.jpg', 0, 'gas-p45', 1, 2, '2022-11-05 13:06:11', '2022-11-05 13:06:11', '1128291c1e68ab787817fc8aae6e33fecac70ac0c87772a64fea134b207c56c05c3722b6c59f7542964db069a35d80ddeb2f490aab43f074ad1ffe2a4873972f'),
(38, 11, 38, 'Kit Registro Delta', 'Mangueira c/ 1,25cm , duas braçadeiras e Registro', 50, 'item-1667668169.jpg', 0, 'kit-registro-delta', 1, 2, '2022-11-05 13:09:29', '2022-11-05 13:09:29', 'da4f03aea717c22079e8e19488f8b9ac04160ea2f8778ce68694f0dbaf63f3dbad7873fb357e42628ceda67b18ae5b515b46d4da63a0581af151969978170bc2'),
(39, 11, 39, 'Bomba Elétrica', 'Bomba Elétrica para galão de água', 54, 'item-1667668489.jpg', 0, 'bomba-eletrica', 1, 2, '2022-11-05 13:14:49', '2022-11-05 13:14:49', '8c2b6247484fe47227520d9bc3fbcdc1b25a01efc2864272f39f60c16041a531cecd37e40409190cc25c1ace346f2c6e040f0f2fa9c7612bfeda6e283542f29c'),
(40, 11, 39, 'Bella Bomba', 'Bomba para galão de água manual', 41, 'item-1667668692.jpg', 0, 'bella-bomba', 1, 2, '2022-11-05 13:18:12', '2022-11-05 13:18:12', '8c08774107516973a49f07104bcb7f488c8681d30fe18b3ecabf0da3dbfc19d828cb924ef5a9c8207492bcc31994e50fb690f069866c2fb1a288cca05cc859df'),
(41, 11, 39, 'Bomba de Água de Pressão', 'Bomba De Água Manual Pressão Para Galão 10 E 20 Litros', 29, 'item-1667668827.jpg', 0, 'bomba-de-agua-de-pressao-41', 1, 2, '2022-11-05 13:20:27', '2022-11-05 13:20:27', 'b1bb242efd7bef3e981714264a58008d72ad54a2bedd1a8c68842a5ab26623d3cc0adf89a5ae6c060fe3529bf8a452c99e5eac076032312f1d4436bc1720ca56'),
(42, 11, 37, 'Carvão vegetal 4kg', 'Carvão Oriental 4kg', 10, 'item-1667668994.jpg', 0, 'carvao-vegetal-4kg', 1, 2, '2022-11-05 13:23:14', '2022-11-05 13:23:14', '0b8a8e4fd0bf71ca595bb0315ade1f184bac9a448f00c51f1f27fbb380a1ac4043f098b3baaabeb95007ec3548cf74bc1e5354125b06ed1f46a7c570ca4b497d'),
(43, 11, 37, 'Carvão vegetal 20kg', 'Saco 20 kg', 30, 'item-1667669142.jpg', 0, 'carvao-vegetal-20kg', 1, 2, '2022-11-05 13:25:42', '2022-11-05 13:25:42', 'd38a574716c163bad634c4cb680d709838e122850bbdf0ad9d9770f08e59c153394cd0b639c3100d35b8050749a0e70f8518138736a25b20a1043255248f8f98'),
(44, 11, 39, 'Vela Salus', 'Vela com carvão para filtro de Água', 15, 'item-1667669317.jpg', 0, 'vela-salus', 1, 2, '2022-11-05 13:28:37', '2022-11-05 13:28:37', 'b2a295f9c67d02059c9b47ad5b982aca83e4491563a5eaaa416e4a4ccc5593ee30e6034d9dec520f64183543c52e8fd143a7ca2d6f19cf3c0c922f82dc8830e9'),
(45, 11, 36, 'Água Serra Negra', 'Galão 20 litros Serra Negra', 14, 'item-1667669524.jpg', 0, 'agua-serra-negra', 1, 2, '2022-11-05 13:32:04', '2022-11-05 13:32:04', 'c9189fc7784de3b827b6207a4ab92644ccba06513db87a796d1452349dfb8e27105a746d594c93381d257a2b337b5190e4bc99bad3674cdbd33c68b7fb3dd588'),
(46, 8, 40, 'HD SSD Kingston 120GB', 'HD p/ Desktop e Notebook - SATA 3, 6Gbps, 2.5 Polegadas', 232, 'item-1668471185.jpg', 0, 'hd-ssd-kingston-120gb', 1, 2, '2022-11-14 20:13:05', '2022-11-14 20:13:05', 'fa2964cda6b3afc3f00bcc2f9a66f1747688dd82c3a89d3e592058605de9e52fc2cb83ec66431674e762d67b89314870607000892ac9864beb2f8de9fd8934c6'),
(47, 8, 40, 'HD SATA Western Digital Blue 1TB', 'HD p/ Desktop - SATA 3, 6Gbps, 7200rpm, 3.5 Polegadas', 282, 'item-1668471367.jpg', 0, 'hd-sata-western-digital-blue-1tb', 1, 2, '2022-11-14 20:16:07', '2022-11-14 20:16:07', 'fb29a1f370320578b4e13861cc92925e2d4f02a2a4bc9963718876a2c5015a29f47ffc0332498a7137f95ec0568bc0bcf68a72aba1660a835ba20e9757315d2d'),
(48, 8, 40, 'Memória Kingston 4GB DDR3 1600 MHz', 'Para Notebook', 168, 'item-1668471546.jpg', 0, 'memoria-kingston-4gb-ddr3-1600-mhz', 1, 2, '2022-11-14 20:19:06', '2022-11-14 20:19:06', 'f6d145eeb7b213b988af8dfbc3d0d89ce979cdc15ea53526b460a0daeb77a68dc90c3b6998d52c30390cdd239cf06c2a0003a39aa135c09c10218c9d77df5e0c'),
(49, 8, 41, 'Extensão SMS 64100', 'Extensão SMS 64100 - 4 Tomadas (1m)', 77, 'item-1668471635.jpg', 0, 'extensao-sms-64100', 1, 2, '2022-11-14 20:20:35', '2022-11-14 20:20:35', '4fe7554c90b07cabf601b9da94ca3e73c13b486eabd836607d6bdbf9df58f041dc0e6b34262e340c76346cacbda93b3d3ca197bd0451bfcf818b04a1d1095cd6'),
(50, 8, 41, 'Teclado e Mouse Sem Fio Logitech MK270 - Wireless', 'Teclado e Mouse Sem Fio Logitech MK270 - Wireless', 154, 'item-1668472534.jpg', 0, 'teclado-e-mouse-sem-fio-logitech-mk270-wireless', 1, 2, '2022-11-14 20:35:34', '2022-11-14 20:35:34', '6ef98b4f1ce3f65c35dba388b05c990e05744fc994d02af3f2d3677181414057d86ad3cc622670056667588df182e4f5f2dfa1ce9fd5526d47c4bfff7bfcd249'),
(51, 8, 41, 'Mouse Logitech M185 1000 dpi - Wireless', 'Mouse Logitech M185 1000 dpi - Wireless', 82, 'item-1668472610.jpg', 0, 'mouse-logitech-m185-1000-dpi-wireless', 1, 2, '2022-11-14 20:36:50', '2022-11-14 20:36:50', '81d21354b4b9e36adb184e6c4e5b0558ee687e27eb6f0c6b58142aec200031b377d5e411ca19f1368a916edddf4d0b3b9810c9f7cd17e9ee633c19c9e1b0bd81'),
(52, 8, 40, 'Placa de Rede HP PCI Express H241 - 2 Portas Ethernet RJ45 Gigabit', 'Placa de Rede HP PCI Express H241 - 2 Portas Ethernet RJ45 Gigabit', 489, 'item-1668472799.jpg', 0, 'placa-de-rede-hp-pci-express-h241-2-portas-ethernet-rj45-gigabit', 1, 2, '2022-11-14 20:39:59', '2022-11-14 20:39:59', 'a615bdcccfa231b8588deaa5180430d781d6f6ad971fd53ea57fab3f4927d68d302930f5e5c43b7f2937c3fea269a798df1df9e9e4cc3cbaf1436aac169e8a4c'),
(53, 8, 42, 'Monitor Touch Screen 15 Polegadas LED Elo Touch ET 1509L', '15 Polegadas LED Elo Touch ET 1509L', 2.585, 'item-1668473019.jpg', 0, 'monitor-touch-screen-15-polegadas-led-elo-touch-et-1509l', 1, 2, '2022-11-14 20:43:39', '2022-11-14 20:43:39', 'c612f068e82a0fa5e10787913ae897e441e523b66dba778727076c9d9965b072dd14da570abecba4811a9da426b5041e6f08ed4b33c8601aee23c0f7adbb5e32'),
(54, 8, 42, 'Monitor Touch Screen Jetway', '15 Polegadas LCD JMT-330', 1.732, 'item-1668473133.jpg', 0, 'monitor-touch-screen-jetway', 1, 2, '2022-11-14 20:45:33', '2022-11-14 20:45:33', 'ef474a9459dc517b8b627d5c18288288f6387f93954f013ddb6633c03f6d13297edb77781af90bf7ef494233a6020f1cd9d1f369bd9d5c8cf021630700f9e1b8'),
(55, 8, 43, 'Notebook Samsung Book 15.6 Polegadas LED', 'Intel Core i5-1135G7 2.4GHz, 8GB, 256GB SSD, Windows 11 Pro', 3.599, 'item-1668473773.jpg', 0, 'notebook-samsung-book-156-polegadas-led', 1, 2, '2022-11-14 20:56:13', '2022-11-14 20:56:13', 'e577586c3e5ee7353c74441bcd55e0eb4ad0f56b9dbf061ca97e99c54e81c15c365d22b76680206f2cc9b74972413633e49a7e109d2d430b2b8290083d8d1b7e'),
(56, 8, 43, 'Notebook Lenovo B330 15.6 Polegadas LED', 'Intel Core i5-8250U 3.9GHz, 4GB, 1TB, Windows 10 Pro', 2.399, 'item-1668473883.jpg', 0, 'notebook-lenovo-b330-156-polegadas-led', 1, 2, '2022-11-14 20:58:03', '2022-11-14 20:58:03', '8349a2e4f6df876eb715988e56ab45eef1a98ecb45103fd99a46565a4dc872ef17898fef2713ca0516cff06bea35701c2aa9bcd66690b7c2b071e004650b4d41'),
(57, 8, 44, 'Tela Display Frontal Lcd', 'Tela Display Frontal Lcd Compatível J7 Prime', 108, 'image-1668513728.jpg', 0, 'tela-display-frontal-lcd', 1, 2, '2022-11-15 07:57:40', '2022-11-15 12:02:08', '33d19261697370905caaac37413597f14581696c926c7facca034a6418b0eb6ecd34439ee254233fab4d689562408c3971fe148434482691d2234e502f35801a'),
(58, 8, 44, 'Tela Display Frontal Lcd Compatível A10', 'Tela Display Frontal Lcd Compatível A10', 83, 'item-1668513645.jpg', 0, 'tela-display-frontal-lcd-compativel-a10', 1, 2, '2022-11-15 08:00:45', '2022-11-15 08:00:45', 'f1120105d0d8404f40f2ced26481df22001dc921773a982d608150ddc7cf895fb434ac571f7be50a984ffdb4e21932dfa819626c60fbb7f21080d0ed28015a64'),
(59, 8, 44, 'Bateria Apple iPhone 6 Plus 2915 MAH', 'Bateria Apple iPhone 6 Plus 2915 MAH', 53, 'item-1668513846.jpg', 0, 'bateria-apple-iphone-6-plus-2915-mah', 1, 2, '2022-11-15 08:04:06', '2022-11-15 08:04:06', 'bdf9d7809b1e91f177c4cc8c615c0ee23f136ca189c92c6943075236bfe3d16931087c92ef40a3b0e522403cba78ef65c350ce665ef050bea1df08a9f20f4bf8'),
(60, 8, 44, 'CAPA CASE FLIP COVER J5 SAMSUNG ORIGINAL', 'CAPA CASE FLIP COVER J5 SAMSUNG ORIGINAL', 30, 'item-1668513970.jpg', 0, 'capa-case-flip-cover-j5-samsung-original', 1, 2, '2022-11-15 08:06:10', '2022-11-15 08:06:10', 'e93bcf37518f85b6c32316773049134a2405405c0463252dad6a4e3634e54df4d6177be85e01132eeffaf2ce0bd76f31be2765d7e934697d8556b195faf3cbd7'),
(61, 10, 33, 'Coca-Cola', 'Coca-Cola Sabor Original LATA 220ML', 2, 'item-1668781881.jpeg', 0, 'coca-cola-61', 1, 2, '2022-11-18 11:31:21', '2022-11-18 11:31:21', '2d5924834eea49d6665cc7197bf9b36f1e36ef881fbb9bd2c4e1515b558d9a24ec7f74a13915e62ce6b5cd9dec2deb4275794cf563eb51a9f09c25fa7df44e1d'),
(62, 10, 33, 'Coca-Cola', 'Coca-Cola Sabor Original LATA 350ML', 3, 'item-1668782002.jpg', 0, 'coca-cola-62', 1, 2, '2022-11-18 11:33:22', '2022-11-18 11:33:22', 'e6d36d568175ce4fd4509a0f00307c9d4a689ac4114b981cc5257742cfe81870019e3be2414450d3bece9658d3ed2bf4fd99182819e658bb4d0b86e83a5d10e7'),
(63, 10, 33, 'Refrigerante Guaraná ANTARCTICA', 'Refrigerante Guaraná ANTARCTICA Garrafa 2L', 10, 'item-1668782149.jpg', 0, 'refrigerante-guarana-antarctica', 1, 2, '2022-11-18 11:35:49', '2022-11-18 11:35:49', '6c17f05ca26bf898a5a1df97e502e85363f3729f4474ceeb6f751a17a2892d1a684704229e036850e82c32d9fee26e6bd515f91d5c0680c7adafdbd84203c761'),
(64, 10, 32, 'X-SALADA', 'PÃO ARTESANAL, HAMBURGUE, PRESUNTO, ALFACE, TOMATE E MOLHO ESPECIAL', 9, 'item-1668782281.jpg', 0, 'x-salada', 1, 2, '2022-11-18 11:38:01', '2022-11-18 11:38:01', '3b6c7bdf66954f5bc568b64d094202ebaeacc32f206a2a3f72be32f0b2d35a4a38362ce1c94230b784d9aa37feb28f427512a1203a2baaba35bace97b08c981c'),
(65, 10, 32, 'X - TUDO', 'PÃO, HAMBURGUE, OVO, QUEIJO, PRESUNTO, BACON, ALFACE, TOMATE, MILHO E BATATA.', 20, 'item-1668782437.jpg', 0, 'x-tudo', 1, 2, '2022-11-18 11:40:37', '2022-11-18 11:40:37', '1ddf22c388e98b0dff7ed7bea003bee21b94da23f3d0697377b4eec804458a32d2676da98da98c0d6df5652ad3f5ac4c7a2134c9a75cd63a0b192a8e4d5449f3'),
(66, 10, 32, 'FRITAS', 'PORÇÃO DE FRITAS GRANDE', 7, 'item-1668782658.jpg', 0, 'fritas', 1, 2, '2022-11-18 11:44:18', '2022-11-18 11:44:18', '9de0729ef6a1eaab949f770c76700a0f3a27a3502bb5ee88770491f4b43c997048149c0b86564603b924955befe3fd99126f6ec86588a91a1601d3c798936583'),
(67, 10, 31, 'FRITAS', 'PORÇÃO DE FRITAS GRANDE', 8, 'item-1668783386.jpg', 0, 'fritas-67', 1, 2, '2022-11-18 11:56:26', '2022-11-18 11:56:26', '54d4f424f029b03691902a16a2ddab00de8e0eef99cd84459a261ab46d3cce9d7de46d388c57a057a095c9ea5c69c2e08385cb81b3e62668cb0e433f6bd24abe'),
(68, 14, 45, 'Dogão Simples', 'Pão, salsicha, batalha palha, maionese e catchup.', 9, 'item-1668783876.jpg', 0, 'dogao-simples', 1, 2, '2022-11-18 20:34:36', '2022-11-18 20:34:36', 'd692b396fbadef97a58b8ddd4c049012c00616022ccbd014f911b62650a308f02d6813f133f5864853083ee8202d8c779b15d558b56ba0b31f2a699dae47666a'),
(69, 14, 45, 'Dogão Carne Moída', 'Pão, salsicha, carne moída, batalha palha, maionese e catchup.', 13, 'item-1668784053.jpg', 0, 'dogao-carne-moida', 1, 2, '2022-11-18 20:37:33', '2022-11-18 20:37:33', '63c7f42379e593c3e0c216a1f58a7b3024adef5a8542f10de591015e04649bbd2f4ae3cf271b9ce75eb4ce3f4ae5d6d0db7328fb29c64a04bf33ec3ed010209d'),
(70, 14, 45, 'Dogão Especial de Frango', 'Pão, salsicha, frango, presunto, queijo, batalha palha, maionese e catchup.', 15, 'item-1668784316.jpg', 0, 'dogao-especial-de-frango', 1, 2, '2022-11-18 20:41:56', '2022-11-18 20:41:56', 'df48233c4848a88feec27f91910c2af90f03a78aee42b3f3e45385bfbc4e77fc0eddccfc01332486e90efd112774e6a070c67e23ff4f57d434f0ca0d889d3a38'),
(73, 33, 58, 'Brahma Chopp Pilsen', 'Lata 269ml', 1.69, 'item-1673370045.png', 0, 'brahma-chopp-pilsen', 1, 2, '2023-01-10 22:30:45', '2023-01-10 22:30:45', 'be54397dd94a0acc010f8a3cf680563ff69bca32255372a7f306a0a864e5ac7ec8a3ce3a60707c058f04594eac32b3c0305697502d4f86dc2f81a06aabbd4efc'),
(74, 33, 58, 'Jack Daniel\'s', 'Litro', 119, 'item-1673370172.jpeg', 0, 'jack-daniels', 1, 2, '2023-01-10 22:32:52', '2023-01-10 22:32:52', 'c0f11444e86e8a1f234992ffa3aa3601edb03b166b6456a86f26eafb9ef81f7218219302ce0d3c7c52c35a7963d95d42677b41a965561f23390f9910a6aeae69'),
(75, 33, 58, 'Red Label', 'Litro', 75, 'item-1673370382.png', 0, 'red-label', 1, 2, '2023-01-10 22:36:22', '2023-01-10 22:36:22', '66c27aaacffe2513ab90530ad5313d2f7cdf789411911b4f1faa15b6fb4869577a38a0654f947b15c9ceee1533cc6ccb241b524d36a542ad14835427121e7e37'),
(76, 33, 58, 'Eisenbahn Pilsen', '355ml', 3, 'item-1673370504.jpeg', 0, 'eisenbahn-pilsen', 1, 2, '2023-01-10 22:38:24', '2023-01-10 22:38:24', '878f1b0b400a71fc37e274a516418e38a33dc1d17440a3f69f9581c9f721242adce22d67e6a2c57286c4a7b9a147bcdae9b2cd3d7f0de015b93bd67af751bce1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2021_12_20_101946_create_settings_table', 2),
(3, '2021_12_20_121616_create_categories_table', 3),
(4, '2021_12_22_072131_create_cuisines_table', 4),
(5, '2021_12_23_065134_create_menuses_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `restaurant` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `contents` varchar(255) NOT NULL,
  `is_new` int(11) NOT NULL,
  `is_read` int(11) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `restaurant`, `sender`, `type`, `contents`, `is_new`, `is_read`, `timestamp`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 10, 'tester', 1, 'yscIzc0fN1ywrOT', 1, 2, '14dc59959e2cf95914db9996c5ac6cbe', '2022-12-11 21:02:06', '2022-12-14 23:30:12', 1),
(2, 10, 'tester', 1, 'sLDX2wqyJA1yHZP', 1, 2, '08b9e95f5fce3480137c389bf8c0f697', '2022-12-13 22:33:37', '2022-12-13 22:38:52', 1),
(3, 10, 'Jsjshshss', 1, 'ezffHzi758UhK1P', 1, 1, '7fddb6955fe82ce667ec828945f41627', '2022-12-13 22:40:45', '2022-12-27 02:26:45', 2),
(4, 10, 'Robero', 1, 'RGBpypTBEFdCrMn', 1, 2, '65f5116afb4cda6bd867a350bc18d590', '2022-12-26 15:09:17', '2022-12-26 16:08:45', 1),
(5, 2, 'Roberto', 1, 'bmwiJcu7qx28Xtb', 1, 2, 'c7379cb2df07dd425c9677ce70271167', '2022-12-26 16:34:14', '2023-01-07 03:22:40', 2),
(6, 11, 'Roberto', 1, 'xDAReJa74LkdfDq', 2, 2, '249b31e1e4ce7a742115f6efeefb7309', '2022-12-26 16:54:12', '2022-12-26 16:54:12', 2),
(7, 8, 'Roberto', 1, 'PotcDwXYeICZ8ft', 1, 2, '72d55359837fea26e85ad5e368b04c56', '2022-12-31 13:30:37', '2023-01-08 18:33:52', 1),
(8, 31, 'Roberto', 1, 'MoERaWht9wZBpOD', 1, 2, '0b2c6d1cf056cb086f3eb3d539f656f1', '2022-12-31 14:34:57', '2022-12-31 16:01:32', 1),
(9, 8, 'Antonio', 1, 'z6HmoOHwn9ZBVyX', 1, 2, '39dc492e8d0b5c5b8e865541d93b6180', '2023-01-10 13:22:39', '2023-02-13 19:59:46', 1),
(10, 8, 'Antonio', 1, 'tPpKEKIRx5aLUEa', 1, 2, '4218a3eda5194e29c581d7943a3cfdf1', '2023-01-10 13:30:18', '2023-02-13 20:12:04', 1),
(11, 33, 'Antonio', 1, 'hmBwyj5oVdHd7i0', 1, 2, '7946444aea2ed374babf08a7f9f95db2', '2023-01-10 17:27:24', '2023-02-21 13:38:46', 2),
(12, 33, 'marcio', 1, 'fauwAOIYSTuIa6q', 1, 2, 'ac21729e9e97b7e67832dca25471a227', '2023-01-10 21:34:47', '2023-02-21 13:38:46', 2),
(13, 33, 'Paulo', 1, 'MAT7JxzuhPvLQJx', 1, 2, '28912516e7c4439d5535a1840631dde5', '2023-01-11 12:07:38', '2023-02-21 13:38:46', 2),
(14, 33, 'Antonio', 1, '3AESU64UVVAD9GZ', 1, 2, '57ff5494ad80bf32afb757b1eb5ee519', '2023-01-17 14:20:16', '2023-02-21 13:38:46', 2),
(15, 33, 'Antonio', 1, '48VTI2T23ZSVRHS', 1, 2, '1d4d8295299f2a1de6cdfafb28590058', '2023-01-19 13:14:19', '2023-02-21 13:38:46', 2),
(16, 33, 'Roberto', 1, 'U0N5T0ND5LUGM3S', 1, 2, '3c8499ad732b3d38b7b83eeddf4e6fbb', '2023-01-25 12:00:19', '2023-02-21 13:38:46', 2),
(17, 33, 'Antonio', 1, '3X7DFGN650P4NY6', 1, 2, '9b34be96a22d510185313b3895b700ff', '2023-01-28 10:55:40', '2023-02-21 13:38:46', 2),
(18, 33, 'Paulo', 1, 'XN7XXO785176ZVN', 1, 2, 'e2187cc430d63aa5cab9aa1211db9aac', '2023-02-07 22:56:50', '2023-02-21 13:38:46', 2),
(19, 8, 'Hshshdj', 1, '0TMN9WMJUO1UQRR', 1, 2, 'af0003269ff4d32e7bf3837f855bf42c', '2023-02-13 19:56:51', '2023-02-13 20:12:12', 1),
(20, 8, 'Yshshd', 1, 'RZMUU1ZD2G00I92', 1, 2, 'ab8f16cc934d8f6fe37ff7f51fed25d3', '2023-02-13 19:58:01', '2023-02-13 20:12:12', 1),
(21, 8, 'Wilton Gomes', 1, 'UD6O0ME6LSG41I1', 1, 2, 'f32dd5bfc3bd2aa258d7ff07962b2f85', '2023-02-18 19:55:12', '2023-02-18 21:12:23', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant` int(11) NOT NULL,
  `order_number` varchar(100) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_id` text DEFAULT NULL,
  `sub_total` varchar(255) NOT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Delivery , 2 = Pickup',
  `address` varchar(255) DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `delivery_area` varchar(255) DEFAULT NULL,
  `delivery_charge` varchar(50) DEFAULT NULL,
  `discount_amount` varchar(255) DEFAULT NULL,
  `couponcode` varchar(255) DEFAULT NULL,
  `order_notes` text DEFAULT NULL,
  `customer_name` text DEFAULT NULL,
  `customer_email` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `delivery_date` varchar(255) DEFAULT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `is_notification` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Unread , 2 = Read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `restaurant`, `order_number`, `payment_type`, `payment_id`, `sub_total`, `tax`, `grand_total`, `order_type`, `address`, `building`, `landmark`, `delivery_area`, `delivery_charge`, `discount_amount`, `couponcode`, `order_notes`, `customer_name`, `customer_email`, `mobile`, `delivery_date`, `delivery_time`, `status`, `is_notification`, `created_at`, `updated_at`) VALUES
(1, 2, 'UFOM6TEDMP', 'COD', NULL, '80', '0', '100', 1, 'Watte ABC Street', 'wwqe', 'fwe', 'Near By', '20', '0', NULL, 'For party', 'Jone Martin', 'john@gmail.cp,', '876543', '2022-10-27', '16:30 - 17:00', 1, 1, '2022-10-25 23:18:07', '2022-10-25 23:18:07'),
(2, 2, '3ab6db9f939ee2a1a0de80812f4a6f9c', 'PayPal', NULL, '10', '0', '30', 1, 'Rozhen House Street', 'Green House', '1234', 'Near By', '20', '0', NULL, 'For Party', 'John Martin', 'john@martinmail.com', '123457543', '2022-11-01', '11:00 - 11:30', 1, 1, '2022-10-29 20:22:48', '2022-10-29 20:22:48'),
(8, 2, 'c68193507644ed1d526da9412c3c7173', 'PayPal', NULL, '130', '5.5', '155.5', 1, 'werwer', 'ewrewr', 'werwe', 'Near By', '20', '0', NULL, 'For Party.', 'John Marthin', 'john@gmail.com', '1234567899', '2022-11-02', '12:30 - 13:00', 4, 1, '2022-11-01 02:37:22', '2022-11-01 22:35:10'),
(9, 2, 'XPQI1023OH', 'COD', NULL, '96', '0', '116', 1, 'Av. Tessitorio', '1212', 'Trev da 4 Agência', 'Near By', '20', '0', NULL, 'Depois das 13hs não terá ninguém em casa', 'Roberto', 'roberto@gmail.com', '13 999998889', '2022-11-06', '11:00 - 11:30', 1, 1, '2022-11-06 09:15:57', '2022-11-06 09:15:57'),
(10, 2, '5KM4NILYLP', 'COD', NULL, '87', '0', '127', 1, 'Bhdjdks nsndnxkf', '10000', 'Haklbsbdkf ndkdkjjah', 'Far Away', '40', '0', NULL, 'Isso é um teste', 'Robertinho', 'rcruz@gmail.com', '13997541840', '2022-11-06', '10:00 - 10:30', 1, 1, '2022-11-06 09:54:28', '2022-11-06 09:54:28'),
(11, 2, '0WL8LB8790', 'COD', NULL, '58', '0', '78', 1, 'Miguel Bonilha, 08', '08', 'Prox. ao Rubão', 'Near By', '20', '0', NULL, 'Fiado', 'Roberto', 'rcruz@gmail.com', '13999999999', '2022-11-06', '19:30 - 20:00', 1, 1, '2022-11-06 20:18:17', '2022-11-06 20:18:17'),
(12, 2, '8MYZOEE01U', 'COD', NULL, '75', '0', '95', 1, 'Miguel Bonilha', '08', 'Prox. do Trevo', 'Near By', '20', '0', NULL, 'Vou pagar depois, fiado!!', 'Roberto', 'email.rcruz@yahoo.com.br', '139090909090', '2022-11-09', '10:00 - 10:30', 1, 1, '2022-11-09 08:25:38', '2022-11-09 08:25:38'),
(13, 2, 'KWGYKZ7U0H', 'COD', NULL, '58', '0', '78', 1, 'Miguel Bonilha', '08', 'Prox. do Trevo', 'Near By', '20', '0', NULL, 'Tchau', 'Roberto', 'rz@gmail.com', '112hhhshshs', '2022-11-09', '10:00 - 10:30', 1, 1, '2022-11-09 08:29:03', '2022-11-09 08:29:03'),
(14, 2, '6NEP76LIG2', 'COD', NULL, '25', '0', '45', 1, 'Golden Street', 'GreenHouse', '123456', 'Near By', '20', '0', NULL, 'For Party', 'John Martin', 'john@martinmail.com', '123456789', '2022-11-10', '11:00 - 11:30', 4, 1, '2022-11-09 11:04:31', '2022-11-09 15:21:51'),
(15, 2, 'TX9PJKPIEM', 'COD', NULL, '96', '0', '116', 1, 'Av. Capitão Afonso Tessitorio', '1100', 'Proxi 4. Agência', 'Near By', '20', '0', NULL, 'Não vou pagar agora...aliás nem vou pagar!', 'Roberto', 'haja@gama.com', '13 99900088', '2022-11-09', '12:00 - 12:30', 1, 1, '2022-11-09 12:51:46', '2022-11-09 12:51:46'),
(16, 2, 'RPJWZAQVLU', 'COD', NULL, '58', '0', '78', 1, 'Av. Montreal, 460', 'ffdfdfd', 'hhfhfhfhn', 'Near By', '20', '0', NULL, 'gfgfbnbhghgqh1gh1q', 'R6bert6', 'ggsgsg@fffff', '12999999999', '2022-11-09', '14:30 - 15:00', 1, 1, '2022-11-09 16:38:37', '2022-11-09 16:38:37'),
(17, 10, 'RHOAQJAH3H', 'COD', NULL, '4', '0', '5', 1, 'Rua gahsjdd kkdjss', '8', 'Próx. Bajsjdjfkd', 'Itaguai', '1', '0', NULL, 'Rhhbdbsja jdjsnsns', 'Eu', 'roberto@gmail.com', '1239887399', '2022-11-10', '10:00 - 10:30', 4, 1, '2022-11-10 10:29:02', '2022-11-19 18:59:07'),
(18, 2, 'SGHQYKF98V', 'COD', NULL, '58', '0', '78', 1, 'Watte ABC Street', 'Big House', 'Right', 'Near By', '20', '0', NULL, NULL, 'John Martin', 'john@mail.com', '55 13 99754 1840', '2022-11-24', '16:30 - 17:00', 1, 1, '2022-11-12 14:28:42', '2022-11-12 14:28:42'),
(19, 2, 'C9LRG6BOKE', 'COD', NULL, '83', '0', '103', 1, 'Miguel Bonilha, 08', 'Big House', 'right', 'Near By', '20', '0', NULL, 'dfdfdfdfdfdf', 'John Martin', 'john@mail.com', '5513997541840', '2022-11-25', '16:30 - 17:00', 1, 1, '2022-11-12 14:38:37', '2022-11-12 14:38:37'),
(20, 2, 'CIIY4LH3ZT', 'COD', NULL, '148', '0', '168', 1, 'Cap. Afonso Tessitório', '1212', 'Trevo da 4. Agência', 'Near By', '20', '0', NULL, 'Não vou pagar nada!!!', 'Toninho', 'toninho@gmail.com', '5513997541840', '2022-11-12', '14:30 - 15:00', 1, 1, '2022-11-12 14:52:15', '2022-11-12 14:52:15'),
(21, 2, '4A2KJ79XRI', 'COD', NULL, '278', '0', '298', 1, 'Cap Afonso Tessitorio', '1212', 'Prox a 4Agencia', 'Near By', '20', '0', NULL, 'Fiado! Não vou pagar', 'Robero', 'rgg@gmail.com', '+5513997541840', '2022-11-12', '14:00 - 14:30', 1, 1, '2022-11-12 15:21:30', '2022-11-12 15:21:30'),
(22, 2, 'OTE7YMBMZ1', 'COD', NULL, '218', '0', '238', 1, 'Cap Afonso Tessit´rio', '1212', 'Prx. a 4 agencia', 'Near By', '20', '0', NULL, 'Fiado!!!', 'Roberto', 'fgarsf@gmail.com', '+5513997541840', '2022-11-12', '16:00 - 16:30', 1, 1, '2022-11-12 15:43:43', '2022-11-12 15:43:43'),
(23, 2, '9Y0D8K74LP', 'COD', NULL, '58', '0', '78', 1, 'Watte ABC Street', 'Big House', 'Right', 'Near By', '20', '0', NULL, NULL, 'John Martin', 'john@mail.com', '55 13 99754 1840', '2022-11-16', '11:00 - 11:30', 1, 1, '2022-11-12 15:53:02', '2022-11-12 15:53:02'),
(24, 2, '7Z6CNJB4UK', 'COD', NULL, '100', '0', '120', 1, 'Cap. Afonso Tessitório', '1212', 'Prox 4agencia', 'Near By', '20', '0', NULL, 'Fiado', 'Roberto', 'gare@gmail.com', '+5513997541840', '2022-11-12', '18:00 - 18:30', 1, 1, '2022-11-12 15:57:46', '2022-11-12 15:57:46'),
(25, 10, 'BAJ1G6F634', 'COD', NULL, '12', '0', '13', 1, 'Hbdbdmkamb', '5438', 'Trevo debaixo da Ponte', 'Itaguai', '1', '0', NULL, 'Fiado não vou pagar porra nenhhuma', 'Roberto', 'oneoutlet@oneoutlet.site', '+5513997541840', '2022-11-29', 'none', 4, 1, '2022-11-29 17:42:38', '2022-11-29 20:47:21'),
(26, 10, 'A60M5PZ8ZL', 'COD', NULL, '12', '0', '13', 1, 'Av tedditorio', '1212', 'Proximo do centro', 'Itaguai', '1', '0', NULL, 'Hsjxnxmdkdkdvs', 'Roberto', 'oneoutlet@oneoutlet.site', '+55997541840', '2022-11-30', 'none', 1, 1, '2022-11-30 20:38:17', '2022-11-30 20:38:17'),
(27, 10, 'R88NOYYPN7', 'COD', NULL, '12', '0', '13', 1, 'Av. Cap afonso tessitorio', '12q2', 'Jajzjxhxh', 'Itaguai', '1', '0', NULL, 'Jjbbxbalakxjdxs', 'Julio', 'oneoutlet@oneoutlet.site', '+551399987665', '2022-12-01', 'none', 1, 1, '2022-12-01 19:55:44', '2022-12-01 19:55:44'),
(28, 10, 'K1DAL03B3C', 'COD', NULL, '5', '0', '6', 1, 'Hshahsvs', '1230', 'Yhbbsvsnsmsnsbs', 'Itaguai', '1', '0', NULL, 'Ggahahsjbbshsva', 'Roberto', 'oneoutlet@oneoutlet.site', '+551399765383', '2022-12-06', 'none', 1, 1, '2022-12-06 11:30:21', '2022-12-06 11:30:21'),
(29, 14, 'RGYHZ5QPPH', 'COD', NULL, '15', '0', '15', 2, '', '', '', 'none', '0.00', '0', NULL, NULL, 'Infotech Gravity', 'oneoutlet@oneoutlet.site', '+5501234567890', '2022-12-08', 'none', 1, 1, '2022-12-08 17:51:35', '2022-12-08 17:51:35'),
(30, 14, 'Q864Y0Q6M7', 'COD', NULL, '13', '0', '13', 2, '', '', '', 'none', '0.00', '0', NULL, NULL, 'Infotech Gravity', 'oneoutlet@oneoutlet.site', '+5513996723219', '2022-12-08', 'none', 1, 1, '2022-12-08 17:54:53', '2022-12-08 17:54:53'),
(31, 14, 'M1QQ1S308X', 'COD', NULL, '28', '0', '28', 2, '', '', '', 'none', '0.00', '0', NULL, NULL, 'John', 'oneoutlet@oneoutlet.site', '+5513996723219', '2022-12-08', 'none', 1, 1, '2022-12-08 17:55:43', '2022-12-08 17:55:43'),
(32, 14, 'VOM1KQ89A3', 'COD', NULL, '15', '0', '15', 2, '', '', '', 'none', '0.00', '0', NULL, NULL, 'Infotech Gravity', 'oneoutlet@oneoutlet.site', '+5501234567890', '2022-12-08', 'none', 1, 1, '2022-12-08 18:15:20', '2022-12-08 18:15:20'),
(33, 10, 'yscIzc0fN1ywrOT', 'COD', NULL, '2', '0', '3', 1, 'Test for street', 'test for building', 'test fot', 'Itaguai', '1', '0', NULL, 'For party', 'tester', 'oneoutlet@oneoutlet.site', '+5513997541840', '2022-12-11', 'none', 1, 1, '2022-12-11 18:01:59', '2022-12-11 18:01:59'),
(34, 10, '1DxGskrXBmpIJ8d', 'COD', NULL, '4', '0', '5', 1, 'Av. São Luiz', '10', 'Yayagavbbbba hha', 'Itaguai', '1', '0', NULL, NULL, 'Roberto', 'oneoutlet@oneoutlet.site', '+5513987651234', '2022-12-13', 'none', 1, 1, '2022-12-13 19:10:21', '2022-12-13 19:10:21'),
(35, 10, 'G7ou2ZDyNc8Pbcg', 'COD', NULL, '12', '0', '13', 1, 'Monteiro lobato', '06', 'Próximo do lago', 'Itaguai', '1', '0', NULL, NULL, 'roberto', 'oneoutlet@oneoutlet.site', '+5513987651234', '2022-12-13', 'none', 1, 1, '2022-12-13 19:14:04', '2022-12-13 19:14:04'),
(36, 10, '6Yny4wNfHKJUC2d', 'COD', NULL, '4', '0', '5', 1, 'Miguel Bonilha', '09', 'ndhdgb bbxxgxgx', 'Itaguai', '1', '0', NULL, NULL, 'roberto', 'oneoutlet@oneoutlet.site', '+5513997541840', '2022-12-13', 'none', 1, 1, '2022-12-13 19:26:09', '2022-12-13 19:26:09'),
(37, 10, 'quDJYmHsqjy1rrS', 'COD', NULL, '2', '0', '3', 1, 'Miguel Bonilha', '08', 'teeserw', 'Itaguai', '1', '0', NULL, 'for party', 'tester', 'oneoutlet@oneoutlet.site', '+5513 99754 1840', '2022-12-13', 'none', 1, 1, '2022-12-13 19:28:33', '2022-12-13 19:28:33'),
(38, 10, 'sLDX2wqyJA1yHZP', 'COD', NULL, '2', '0', '3', 1, 'Miguel Bonilh', '08', 'teste', 'Itaguai', '1', '0', NULL, 'For party', 'tester', 'oneoutlet@oneoutlet.site', '+5513 99754 1840', '2022-12-13', 'none', 1, 1, '2022-12-13 19:33:32', '2022-12-13 19:33:32'),
(39, 10, 'ezffHzi758UhK1P', 'COD', NULL, '12', '0', '13', 1, 'Av. São Luiz', '1', 'Habsbsks', 'Itaguai', '1', '0', NULL, NULL, 'Jsjshshss', 'oneoutlet@oneoutlet.site', '+5513997541840', '2022-12-13', 'none', 1, 1, '2022-12-13 19:40:31', '2022-12-13 19:40:31'),
(40, 10, 'RGBpypTBEFdCrMn', 'COD', NULL, '12', '0', '13', 1, 'Tessitorio Afonso', '1212', 'Trevo 4 agência', 'Itaguai', '1', '0', NULL, NULL, 'Robero', 'oneoutlet@oneoutlet.site', '+5513998878976', '2022-12-26', 'none', 1, 1, '2022-12-26 12:08:46', '2022-12-26 12:08:46'),
(41, 10, '34LHcZyQwXxo9fE', 'COD', NULL, '2', '0', '3', 1, 'Afonso Tessitorio', '1212', 'Trevo', 'Itaguai', '1', '0', NULL, NULL, 'Roberto', 'oneoutlet@oneoutlet.site', '+5513998875640', '2022-12-26', 'none', 1, 1, '2022-12-26 12:41:25', '2022-12-26 12:41:25'),
(42, 2, 'yPuY7ZHpGHnrhBM', 'COD', NULL, '193', '0', '213', 1, 'Av Cap. Afonso Tessitorio', '1212', 'Trevo 4 agência', 'Near By', '20', '0', NULL, 'Tudo isso é fiado... não vou pagar nada!', 'Robero', 'oneoutlet@oneoutlet.site', '+5513 996785640', '2022-12-26', 'none', 1, 1, '2022-12-26 13:21:05', '2022-12-26 13:21:05'),
(43, 2, 'bmwiJcu7qx28Xtb', 'COD', NULL, '194', '0', '214', 1, 'Afonso Tessitorio', '1212', 'Trevo 4 agencia', 'Near By', '20', '0', NULL, 'Tudo isso é fiado... não vou pagar nada', 'Roberto', 'oneoutlet@oneoutlet.site', '+5513998765432', '2022-12-26', 'none', 1, 1, '2022-12-26 13:34:13', '2022-12-26 13:34:13'),
(44, 11, 'xDAReJa74LkdfDq', 'COD', NULL, '75', '0', '75', 1, 'Av. São Paulo', '5023', 'Trevo Nsa de Fátima', 'none', '0', '0', NULL, 'Tudo isso è fiado...não vou pagar nada😅', 'Roberto', 'oneoutlet@oneoutlet.site', '+5513987676590', '2022-12-26', 'none', 1, 1, '2022-12-26 12:54:12', '2022-12-26 12:54:12'),
(45, 8, 'PotcDwXYeICZ8ft', 'COD', NULL, '83', '0', '83', 1, 'Av. São Paulo,', '5403', 'Trevo', 'none', '0', '0', NULL, 'Trazer após as 16hs', 'Roberto', 'oneoutlet@oneoutlet.site', '+5513997651234', '2022-12-31', 'none', 1, 1, '2022-12-31 09:30:36', '2022-12-31 09:30:36'),
(46, 31, 'MoERaWht9wZBpOD', 'COD', NULL, '14', '0', '14', 1, 'Av. São Luiz', '485', 'Trevo', 'none', '0', '0', NULL, 'Gagbbdjd hhsjsjuf jbjhjsbshdhd\nHshsyshsnjhsn', 'Roberto', 'oneoutlet@oneoutlet.site', '+5513998764513', '2022-12-31', 'none', 1, 1, '2022-12-31 20:04:56', '2022-12-31 20:04:56'),
(47, 8, 'z6HmoOHwn9ZBVyX', 'COD', NULL, '30', '0', '30', 1, 'Av. São Paulo', '5403', 'Centro', 'none', '0', '0', NULL, 'Fiado', 'Antonio', 'oneoutlet@oneoutlet.site', '+5513998766765', '2023-01-10', 'none', 1, 1, '2023-01-10 09:22:38', '2023-01-10 09:22:38'),
(48, 8, 'tPpKEKIRx5aLUEa', 'COD', NULL, '30', '0', '30', 1, 'Av. São Paulo', '5403', 'Centro', 'none', '0', '0', NULL, NULL, 'Antonio', 'oneoutlet@oneoutlet.site', '+5513998766765', '2023-01-10', 'none', 1, 1, '2023-01-10 09:30:17', '2023-01-10 09:30:17'),
(49, 33, 'hmBwyj5oVdHd7i0', 'COD', NULL, '78', '0', '78', 1, 'Av. São Paulo', '5403', 'Centro', 'none', '0', '0', NULL, 'Tudo ok', 'Antonio', 'oneoutlet@oneoutlet.site', '+5513998766765', '2023-01-10', 'none', 1, 1, '2023-01-10 22:57:24', '2023-01-10 22:57:24'),
(50, 33, 'fauwAOIYSTuIa6q', 'COD', NULL, '4.69', '0', '19.69', 1, 'Av. São Luiz', '765', 'Perto', 'Taxa única', '15', '0', NULL, 'Pronto', 'marcio', 'oneoutlet@oneoutlet.site', '+5513998765654', '2023-01-10', 'none', 1, 1, '2023-01-11 03:04:47', '2023-01-11 03:04:47'),
(51, 33, 'MAT7JxzuhPvLQJx', 'COD', NULL, '122', '0', '137', 1, 'Av. Montreal', '123', 'Trevo', 'Taxa única', '15', '0', NULL, 'Perto', 'Paulo', 'oneoutlet@oneoutlet.site', '+5513987655678', '2023-01-11', 'none', 1, 1, '2023-01-11 17:37:38', '2023-01-11 17:37:38'),
(52, 33, '3AESU64UVVAD9GZ', 'COD', NULL, '194', '0', '209', 1, 'Av. São Paulo', '5403', 'Centro', 'Taxa única', '15', '0', NULL, NULL, 'Antonio', 'oneoutlet@oneoutlet.site', '+5513998766765', '2023-01-17', 'none', 1, 1, '2023-01-17 19:50:15', '2023-01-17 19:50:15'),
(53, 33, '48VTI2T23ZSVRHS', 'COD', NULL, '194', '0', '209', 1, 'Av. São Paulo', '5403', 'Centro', 'Taxa única', '15', '0', NULL, NULL, 'Antonio', 'oneoutlet@oneoutlet.site', '+5513998766765', '2023-01-19', 'none', 1, 1, '2023-01-19 18:44:19', '2023-01-19 18:44:19'),
(54, 33, 'U0N5T0ND5LUGM3S', 'COD', NULL, '120.69', '0', '135.69', 1, 'Av Cap. Afonso Tessitório', '1212', 'Centro', 'Taxa única', '15', '0', NULL, 'Ok', 'Roberto', 'oneoutlet@oneoutlet.site', '+5513998765432', '2023-01-25', 'none', 1, 1, '2023-01-25 17:30:18', '2023-01-25 17:30:18'),
(55, 33, '3X7DFGN650P4NY6', 'COD', NULL, '78', '0', '78', 2, '', '', '', 'Taxa única', '0.00', '0', NULL, NULL, 'Antonio', 'oneoutlet@oneoutlet.site', '+5513998766765', '2023-01-28', 'none', 1, 1, '2023-01-28 16:25:39', '2023-01-28 16:25:39'),
(56, 33, 'XN7XXO785176ZVN', 'COD', NULL, '78', '0', '93', 1, 'Av. Nossa Senhora de Fátima', '438', 'Perto', 'Taxa única', '15', '0', NULL, NULL, 'Paulo', 'oneoutlet@oneoutlet.site', '+55998764536', '2023-02-07', 'none', 1, 1, '2023-02-08 04:26:49', '2023-02-08 04:26:49'),
(57, 8, '0TMN9WMJUO1UQRR', 'COD', NULL, '282', '0', '282', 1, 'Sueueue', 'Jshdhd', 'Jshdhdus', 'none', '0', '0', NULL, NULL, 'Hshshdj', 'oneoutlet@oneoutlet.site', '+558822332233', '2023-02-13', 'none', 4, 1, '2023-02-13 15:56:51', '2023-02-13 20:00:17'),
(58, 8, 'RZMUU1ZD2G00I92', 'COD', NULL, '53', '0', '53', 1, 'Uehshd', 'Hdhdhd', 'Hddhdu', 'none', '0', '0', NULL, NULL, 'Yshshd', 'oneoutlet@oneoutlet.site', '+552233333333', '2023-02-13', 'none', 4, 1, '2023-02-13 15:58:00', '2023-02-13 20:00:08'),
(59, 8, 'UD6O0ME6LSG41I1', 'COD', NULL, '53', '0', '53', 1, 'Rua Teixeira Heizer, 1965', '1965', 'COnd Portal', 'none', '0', '0', NULL, 'teste', 'Wilton Gomes', 'oneoutlet@oneoutlet.site', '+5521981754152', '2023-02-18', 'none', 1, 1, '2023-02-18 15:55:11', '2023-02-18 15:55:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_image` varchar(255) DEFAULT NULL,
  `extras_id` varchar(255) DEFAULT NULL,
  `extras_name` varchar(255) DEFAULT NULL,
  `extras_price` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `variants_id` varchar(255) DEFAULT NULL,
  `variants_name` varchar(255) DEFAULT NULL,
  `variants_price` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_id`, `item_name`, `item_image`, `extras_id`, `extras_name`, `extras_price`, `price`, `variants_id`, `variants_name`, `variants_price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Garlic Bread with Cheese', 'item-1666675749.jpg', NULL, NULL, NULL, '10', NULL, NULL, NULL, '3', '2022-10-25 23:18:07', '2022-10-25 23:18:07'),
(2, 1, 4, 'Corn Delight Pizza', 'item-1666675583.jpg', '5, 6', 'Coke, Cheese', '12, 12', '64', '5', 'Medium', '40', '2', '2022-10-25 23:18:07', '2022-10-25 23:18:07'),
(3, 1, 4, 'Corn Delight Pizza', 'item-1666675583.jpg', '6', 'Cheese', '12', '45', '6', 'Small', '33', '2', '2022-10-25 23:18:08', '2022-10-25 23:18:08'),
(4, 1, 2, 'Triple Cheese Margherita Pizza', 'item-1666594582.jpg', NULL, NULL, NULL, '80', NULL, NULL, NULL, '1', '2022-10-25 23:18:08', '2022-10-25 23:18:08'),
(5, 2, 3, 'Coca Cola', 'item-1666600487.jpg', NULL, NULL, NULL, '10', NULL, NULL, NULL, '1', '2022-10-29 20:22:48', '2022-10-29 20:22:48'),
(6, 8, 3, 'Coca Cola', 'item-1666600487.jpg', NULL, NULL, NULL, '10', NULL, NULL, NULL, '2', '2022-11-01 02:37:22', '2022-11-01 02:37:22'),
(7, 8, 1, 'Laziz Mac Veg Pizza', 'item-1666592957.jpg', '2, 3', 'Coke, Sauce', '10, 5', '55', '2', 'Medium', '40', '2', '2022-11-01 02:37:22', '2022-11-01 02:37:22'),
(8, 9, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-06 09:15:57', '2022-11-06 09:15:57'),
(9, 9, 15, 'Mangueira 1,20cm', 'item-1667420910.jpg', NULL, NULL, NULL, '18', NULL, NULL, NULL, '1', '2022-11-06 09:15:57', '2022-11-06 09:15:57'),
(10, 9, 16, 'Carvão vegetal 10kg', 'item-1667421280.jpg', NULL, NULL, NULL, '20', NULL, NULL, NULL, '1', '2022-11-06 09:15:57', '2022-11-06 09:15:57'),
(11, 10, 17, 'Galão 20litros', 'item-1667421486.jpg', NULL, NULL, NULL, '14', NULL, NULL, NULL, '1', '2022-11-06 09:54:28', '2022-11-06 09:54:28'),
(12, 10, 13, 'Registro c/ Mangueira 1,20cm', 'item-1667420602.jpg', NULL, NULL, NULL, '53', NULL, NULL, NULL, '1', '2022-11-06 09:54:28', '2022-11-06 09:54:28'),
(13, 10, 16, 'Carvão vegetal 10kg', 'item-1667421280.jpg', NULL, NULL, NULL, '20', NULL, NULL, NULL, '1', '2022-11-06 09:54:28', '2022-11-06 09:54:28'),
(14, 11, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-06 20:18:17', '2022-11-06 20:18:17'),
(15, 12, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-09 08:25:38', '2022-11-09 08:25:38'),
(16, 12, 10, 'Bomba de Água de Pressão', 'item-1667419994.jpg', NULL, NULL, NULL, '17', NULL, NULL, NULL, '1', '2022-11-09 08:25:38', '2022-11-09 08:25:38'),
(17, 13, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-09 08:29:03', '2022-11-09 08:29:03'),
(18, 14, 11, 'Suporte Lucky', 'item-1667420161.jpg', NULL, NULL, NULL, '25', NULL, NULL, NULL, '1', '2022-11-09 11:04:31', '2022-11-09 11:04:31'),
(19, 15, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-09 12:51:46', '2022-11-09 12:51:46'),
(20, 15, 15, 'Mangueira 1,20cm', 'item-1667420910.jpg', NULL, NULL, NULL, '18', NULL, NULL, NULL, '1', '2022-11-09 12:51:46', '2022-11-09 12:51:46'),
(21, 15, 16, 'Carvão vegetal 10kg', 'item-1667421280.jpg', NULL, NULL, NULL, '20', NULL, NULL, NULL, '1', '2022-11-09 12:51:46', '2022-11-09 12:51:46'),
(22, 16, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-09 16:38:37', '2022-11-09 16:38:37'),
(23, 17, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-11-10 10:29:02', '2022-11-10 10:29:02'),
(24, 17, 31, 'Bolinho de queijo', 'item-1667664898.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-11-10 10:29:02', '2022-11-10 10:29:02'),
(25, 18, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-12 14:28:42', '2022-11-12 14:28:42'),
(26, 19, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-12 14:38:37', '2022-11-12 14:38:37'),
(27, 19, 11, 'Suporte Lucky', 'item-1667420161.jpg', NULL, NULL, NULL, '25', NULL, NULL, NULL, '1', '2022-11-12 14:38:37', '2022-11-12 14:38:37'),
(28, 20, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-12 14:52:15', '2022-11-12 14:52:15'),
(29, 20, 9, 'Filtro de Barro 4litros', 'item-1667419496.jpg', NULL, NULL, NULL, '72', NULL, NULL, NULL, '1', '2022-11-12 14:52:15', '2022-11-12 14:52:15'),
(30, 20, 15, 'Mangueira 1,20cm', 'item-1667420910.jpg', NULL, NULL, NULL, '18', NULL, NULL, NULL, '1', '2022-11-12 14:52:15', '2022-11-12 14:52:15'),
(31, 21, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-12 15:21:30', '2022-11-12 15:21:30'),
(32, 21, 11, 'Suporte Lucky', 'item-1667420161.jpg', NULL, NULL, NULL, '25', NULL, NULL, NULL, '1', '2022-11-12 15:21:31', '2022-11-12 15:21:31'),
(33, 21, 8, 'Filtro de Barro 8litros', 'item-1667419435.jpg', NULL, NULL, NULL, '142', NULL, NULL, NULL, '1', '2022-11-12 15:21:31', '2022-11-12 15:21:31'),
(34, 21, 13, 'Registro c/ Mangueira 1,20cm', 'item-1667420602.jpg', NULL, NULL, NULL, '53', NULL, NULL, NULL, '1', '2022-11-12 15:21:31', '2022-11-12 15:21:31'),
(35, 22, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-12 15:43:43', '2022-11-12 15:43:43'),
(36, 22, 15, 'Mangueira 1,20cm', 'item-1667420910.jpg', NULL, NULL, NULL, '18', NULL, NULL, NULL, '1', '2022-11-12 15:43:43', '2022-11-12 15:43:43'),
(37, 22, 8, 'Filtro de Barro 8litros', 'item-1667419435.jpg', NULL, NULL, NULL, '142', NULL, NULL, NULL, '1', '2022-11-12 15:43:43', '2022-11-12 15:43:43'),
(38, 23, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-12 15:53:02', '2022-11-12 15:53:02'),
(39, 24, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-11-12 15:57:46', '2022-11-12 15:57:46'),
(40, 24, 11, 'Suporte Lucky', 'item-1667420161.jpg', NULL, NULL, NULL, '25', NULL, NULL, NULL, '1', '2022-11-12 15:57:46', '2022-11-12 15:57:46'),
(41, 24, 10, 'Bomba de Água de Pressão', 'item-1667419994.jpg', NULL, NULL, NULL, '17', NULL, NULL, NULL, '1', '2022-11-12 15:57:46', '2022-11-12 15:57:46'),
(42, 25, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-11-29 17:42:38', '2022-11-29 17:42:38'),
(43, 25, 63, 'Refrigerante Guaraná ANTARCTICA', 'item-1668782149.jpg', NULL, NULL, NULL, '10', NULL, NULL, NULL, '1', '2022-11-29 17:42:38', '2022-11-29 17:42:38'),
(44, 26, 63, 'Refrigerante Guaraná ANTARCTICA', 'item-1668782149.jpg', NULL, NULL, NULL, '10', NULL, NULL, NULL, '1', '2022-11-30 20:38:17', '2022-11-30 20:38:17'),
(45, 26, 31, 'Bolinho de queijo', 'item-1667664898.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-11-30 20:38:17', '2022-11-30 20:38:17'),
(46, 27, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-01 19:55:44', '2022-12-01 19:55:44'),
(47, 27, 63, 'Refrigerante Guaraná ANTARCTICA', 'item-1668782149.jpg', NULL, NULL, NULL, '10', NULL, NULL, NULL, '1', '2022-12-01 19:55:44', '2022-12-01 19:55:44'),
(48, 28, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-06 11:30:21', '2022-12-06 11:30:21'),
(49, 28, 62, 'Coca-Cola', 'item-1668782002.jpg', NULL, NULL, NULL, '3', NULL, NULL, NULL, '1', '2022-12-06 11:30:21', '2022-12-06 11:30:21'),
(50, 29, 70, 'Dogão Especial de Frango', 'item-1668784316.jpg', NULL, NULL, NULL, '15', NULL, NULL, NULL, '1', '2022-12-08 17:51:35', '2022-12-08 17:51:35'),
(51, 30, 69, 'Dogão Carne Moída', 'item-1668784053.jpg', NULL, NULL, NULL, '13', NULL, NULL, NULL, '1', '2022-12-08 17:54:53', '2022-12-08 17:54:53'),
(52, 31, 70, 'Dogão Especial de Frango', 'item-1668784316.jpg', NULL, NULL, NULL, '15', NULL, NULL, NULL, '1', '2022-12-08 17:55:43', '2022-12-08 17:55:43'),
(53, 31, 69, 'Dogão Carne Moída', 'item-1668784053.jpg', NULL, NULL, NULL, '13', NULL, NULL, NULL, '1', '2022-12-08 17:55:43', '2022-12-08 17:55:43'),
(54, 32, 70, 'Dogão Especial de Frango', 'item-1668784316.jpg', NULL, NULL, NULL, '15', NULL, NULL, NULL, '1', '2022-12-08 18:15:20', '2022-12-08 18:15:20'),
(55, 33, 31, 'Bolinho de queijo', 'item-1667664898.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-11 18:01:59', '2022-12-11 18:01:59'),
(56, 34, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-13 19:10:21', '2022-12-13 19:10:21'),
(57, 34, 31, 'Bolinho de queijo', 'item-1667664898.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-13 19:10:21', '2022-12-13 19:10:21'),
(58, 35, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-13 19:14:04', '2022-12-13 19:14:04'),
(59, 35, 63, 'Refrigerante Guaraná ANTARCTICA', 'item-1668782149.jpg', NULL, NULL, NULL, '10', NULL, NULL, NULL, '1', '2022-12-13 19:14:04', '2022-12-13 19:14:04'),
(60, 36, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-13 19:26:09', '2022-12-13 19:26:09'),
(61, 36, 31, 'Bolinho de queijo', 'item-1667664898.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-13 19:26:09', '2022-12-13 19:26:09'),
(62, 37, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-13 19:28:33', '2022-12-13 19:28:33'),
(63, 38, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-13 19:33:32', '2022-12-13 19:33:32'),
(64, 39, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-13 19:40:31', '2022-12-13 19:40:31'),
(65, 39, 63, 'Refrigerante Guaraná ANTARCTICA', 'item-1668782149.jpg', NULL, NULL, NULL, '10', NULL, NULL, NULL, '1', '2022-12-13 19:40:31', '2022-12-13 19:40:31'),
(66, 40, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-26 12:08:46', '2022-12-26 12:08:46'),
(67, 40, 63, 'Refrigerante Guaraná ANTARCTICA', 'item-1668782149.jpg', NULL, NULL, NULL, '10', NULL, NULL, NULL, '1', '2022-12-26 12:08:46', '2022-12-26 12:08:46'),
(68, 41, 32, 'Coxinha de Frango', 'item-1667665155.jpg', NULL, NULL, NULL, '2', NULL, NULL, NULL, '1', '2022-12-26 12:41:25', '2022-12-26 12:41:25'),
(69, 42, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-12-26 13:21:05', '2022-12-26 13:21:05'),
(70, 42, 10, 'Bomba de Água de Pressão', 'item-1667419994.jpg', NULL, NULL, NULL, '17', NULL, NULL, NULL, '1', '2022-12-26 13:21:05', '2022-12-26 13:21:05'),
(71, 42, 6, 'Botijão P13', 'item-1667418800.jpg', NULL, NULL, NULL, '118', NULL, NULL, NULL, '1', '2022-12-26 13:21:05', '2022-12-26 13:21:05'),
(72, 43, 12, 'Suporte - Bika D\'agua', 'item-1667420356.jpg', NULL, NULL, NULL, '58', NULL, NULL, NULL, '1', '2022-12-26 13:34:13', '2022-12-26 13:34:13'),
(73, 43, 15, 'Mangueira 1,20cm', 'item-1667420910.jpg', NULL, NULL, NULL, '18', NULL, NULL, NULL, '1', '2022-12-26 13:34:13', '2022-12-26 13:34:13'),
(74, 43, 6, 'Botijão P13', 'item-1667418800.jpg', NULL, NULL, NULL, '118', NULL, NULL, NULL, '1', '2022-12-26 13:34:13', '2022-12-26 13:34:13'),
(75, 44, 44, 'Vela Salus', 'item-1667669317.jpg', NULL, NULL, NULL, '15', NULL, NULL, NULL, '1', '2022-12-26 12:54:12', '2022-12-26 12:54:12'),
(76, 44, 38, 'Kit Registro Delta', 'item-1667668169.jpg', NULL, NULL, NULL, '50', NULL, NULL, NULL, '1', '2022-12-26 12:54:12', '2022-12-26 12:54:12'),
(77, 44, 42, 'Carvão vegetal 4kg', 'item-1667668994.jpg', NULL, NULL, NULL, '10', NULL, NULL, NULL, '1', '2022-12-26 12:54:12', '2022-12-26 12:54:12'),
(78, 45, 59, 'Bateria Apple iPhone 6 Plus 2915 MAH', 'item-1668513846.jpg', NULL, NULL, NULL, '53', NULL, NULL, NULL, '1', '2022-12-31 09:30:36', '2022-12-31 09:30:36'),
(79, 45, 60, 'CAPA CASE FLIP COVER J5 SAMSUNG ORIGINAL', 'item-1668513970.jpg', NULL, NULL, NULL, '30', NULL, NULL, NULL, '1', '2022-12-31 09:30:36', '2022-12-31 09:30:36'),
(80, 46, 71, 'Coca-Cola', 'item-1672497052.jpg', NULL, NULL, NULL, '14', NULL, NULL, NULL, '1', '2022-12-31 20:04:56', '2022-12-31 20:04:56'),
(81, 47, 60, 'CAPA CASE FLIP COVER J5 SAMSUNG ORIGINAL', 'item-1668513970.jpg', NULL, NULL, NULL, '30', NULL, NULL, NULL, '1', '2023-01-10 09:22:38', '2023-01-10 09:22:38'),
(82, 48, 60, 'CAPA CASE FLIP COVER J5 SAMSUNG ORIGINAL', 'item-1668513970.jpg', NULL, NULL, NULL, '30', NULL, NULL, NULL, '1', '2023-01-10 09:30:17', '2023-01-10 09:30:17'),
(83, 49, 76, 'Eisenbahn Pilsen', 'item-1673370504.jpeg', NULL, NULL, NULL, '3', NULL, NULL, NULL, '1', '2023-01-10 22:57:24', '2023-01-10 22:57:24'),
(84, 49, 75, 'Red Label', 'item-1673370382.png', NULL, NULL, NULL, '75', NULL, NULL, NULL, '1', '2023-01-10 22:57:24', '2023-01-10 22:57:24'),
(85, 50, 76, 'Eisenbahn Pilsen', 'item-1673370504.jpeg', NULL, NULL, NULL, '3', NULL, NULL, NULL, '1', '2023-01-11 03:04:47', '2023-01-11 03:04:47'),
(86, 50, 73, 'Brahma Chopp Pilsen', 'item-1673370045.png', NULL, NULL, NULL, '1.69', NULL, NULL, NULL, '1', '2023-01-11 03:04:47', '2023-01-11 03:04:47'),
(87, 51, 76, 'Eisenbahn Pilsen', 'item-1673370504.jpeg', NULL, NULL, NULL, '3', NULL, NULL, NULL, '1', '2023-01-11 17:37:38', '2023-01-11 17:37:38'),
(88, 51, 74, 'Jack Daniel\'s', 'item-1673370172.jpeg', NULL, NULL, NULL, '119', NULL, NULL, NULL, '1', '2023-01-11 17:37:38', '2023-01-11 17:37:38'),
(89, 52, 75, 'Red Label', 'item-1673370382.png', NULL, NULL, NULL, '75', NULL, NULL, NULL, '1', '2023-01-17 19:50:15', '2023-01-17 19:50:15'),
(90, 52, 74, 'Jack Daniel\'s', 'item-1673370172.jpeg', NULL, NULL, NULL, '119', NULL, NULL, NULL, '1', '2023-01-17 19:50:15', '2023-01-17 19:50:15'),
(91, 53, 75, 'Red Label', 'item-1673370382.png', NULL, NULL, NULL, '75', NULL, NULL, NULL, '1', '2023-01-19 18:44:19', '2023-01-19 18:44:19'),
(92, 53, 74, 'Jack Daniel\'s', 'item-1673370172.jpeg', NULL, NULL, NULL, '119', NULL, NULL, NULL, '1', '2023-01-19 18:44:19', '2023-01-19 18:44:19'),
(93, 54, 74, 'Jack Daniel\'s', 'item-1673370172.jpeg', NULL, NULL, NULL, '119', NULL, NULL, NULL, '1', '2023-01-25 17:30:18', '2023-01-25 17:30:18'),
(94, 54, 73, 'Brahma Chopp Pilsen', 'item-1673370045.png', NULL, NULL, NULL, '1.69', NULL, NULL, NULL, '1', '2023-01-25 17:30:18', '2023-01-25 17:30:18'),
(95, 55, 76, 'Eisenbahn Pilsen', 'item-1673370504.jpeg', NULL, NULL, NULL, '3', NULL, NULL, NULL, '1', '2023-01-28 16:25:39', '2023-01-28 16:25:39'),
(96, 55, 75, 'Red Label', 'item-1673370382.png', NULL, NULL, NULL, '75', NULL, NULL, NULL, '1', '2023-01-28 16:25:39', '2023-01-28 16:25:39'),
(97, 56, 76, 'Eisenbahn Pilsen', 'item-1673370504.jpeg', NULL, NULL, NULL, '3', NULL, NULL, NULL, '1', '2023-02-08 04:26:49', '2023-02-08 04:26:49'),
(98, 56, 75, 'Red Label', 'item-1673370382.png', NULL, NULL, NULL, '75', NULL, NULL, NULL, '1', '2023-02-08 04:26:49', '2023-02-08 04:26:49'),
(99, 57, 47, 'HD SATA Western Digital Blue 1TB', 'item-1668471367.jpg', NULL, NULL, NULL, '282', NULL, NULL, NULL, '1', '2023-02-13 15:56:51', '2023-02-13 15:56:51'),
(100, 58, 59, 'Bateria Apple iPhone 6 Plus 2915 MAH', 'item-1668513846.jpg', NULL, NULL, NULL, '53', NULL, NULL, NULL, '1', '2023-02-13 15:58:00', '2023-02-13 15:58:00'),
(101, 59, 59, 'Bateria Apple iPhone 6 Plus 2915 MAH', 'item-1668513846.jpg', NULL, NULL, NULL, '53', NULL, NULL, NULL, '1', '2023-02-18 15:55:11', '2023-02-18 15:55:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant` int(11) DEFAULT NULL,
  `payment_name` varchar(255) NOT NULL,
  `public_key` text DEFAULT NULL,
  `secret_key` text DEFAULT NULL,
  `encryption_key` text DEFAULT NULL,
  `environment` int(11) NOT NULL,
  `bank_name` text DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `restaurant`, `payment_name`, `public_key`, `secret_key`, `encryption_key`, `environment`, `bank_name`, `account_number`, `account_holder_name`, `ifsc`, `status`, `created_at`, `updated_at`, `_id`) VALUES
(1, NULL, 'COD', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2021-09-03 10:36:58', '2022-10-24 06:07:53', 'hufwhfjknfuewdsfewrt43hgu'),
(2, NULL, 'RazorPay', 'rzp_test_4r8y0wDMkrUDFn', 'nEDuJlpL3x2BqHxYlQBYtrto', NULL, 1, NULL, NULL, NULL, NULL, 2, '2021-09-03 10:36:58', '2022-11-15 13:51:50', 'etertjio54jtio5u46t9u54jtio54jt6954u8943758934yvh5'),
(3, NULL, 'Stripe', 'pk_test_51IjNgIJwZppK21ZQa6e7ZVOImwJ2auI54TD6xHici94u7DD5mhGf1oaBiDyL9mX7PbN5nt6Weap4tmGWLRIrslCu00d8QgQ3nI', 'sk_test_51IjNgIJwZppK21ZQK85uLARMdhtuuhA81PB24VDfiqSW8SXQZKrZzvbpIkigEb27zZPBMF4UEG7PK9587Xresuc000x8CdE22A', NULL, 0, NULL, NULL, NULL, NULL, 2, '2021-09-03 10:36:58', '2022-11-15 13:51:54', 'edjoiv5u950i84390i5-059i34i590qu39045'),
(7, 2, 'COD', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-10-22 00:35:23', '2022-10-22 00:35:23', '9u8546kl54jnkl'),
(8, 2, 'RazorPay', 'eilwhrieklw5h43u59o43j5m43o', '35k4lmnkl4jio43u758949302uji34', NULL, 0, NULL, NULL, NULL, NULL, 2, '2022-10-22 00:35:23', '2022-10-25 00:21:28', '45654kjlk54k6jl54'),
(9, 2, 'Stripe', 'rzp_test_4r8y0wDMkrUDFn', 'nEDuJlpL3x2BqHxYlQBYtrto', NULL, 1, NULL, NULL, NULL, NULL, 2, '2022-10-22 00:35:23', '2022-10-22 00:35:23', 'gtrjloiu690568i954io'),
(11, 2, 'PayPal', 'sb-7j4hl606677@personal.example.com', 'P/9O*+Gk', NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-10-25 10:25:30', '2022-10-25 21:48:21', '90435iio34jt89mu903v903mu09cf9cfmu-0n'),
(12, NULL, 'PayPal', 'sb-7j4hl606677@personal.example.com', 'P/9O*+Gk', NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-10-25 10:25:30', '2022-10-25 21:48:21', '403985043iko43bm4i8503miv9nu90235i32un5892hvn4-0n'),
(17, 5, 'COD', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-10-25 10:23:46', '2022-10-25 10:23:46', '638b394a16f1eca735de00d3bb00c696928746f80380304f26ca8bfba0c959299a15470633f96416d3a302db36eac5f19615739f8070370e520e7d81ec3c8c89'),
(18, 5, 'RazorPay', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2022-10-25 10:23:46', '2022-10-25 10:23:46', 'db4d519f6377ecc8ba706376f83ae4c771c42d403fc77c27807b875a5185496d74fa64ded09810e75e6946e61d1cbc99ece01834d169a44f4f62323a5592194b'),
(19, 5, 'Stripe', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2022-10-25 10:23:46', '2022-10-25 10:23:46', '60f1359c5de9ff938e2055b3fc5a8169cbaac977bc8d6bc9f4952cca5b7ec0cbc0d969a4ccd99fbc8e162591624257937fb0a643957d6120579f7defea5ffc7d'),
(20, 5, 'PayPal', 'sb-7j4hl606677@personal.example.com', 'P/9O*+Gk', NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-10-25 10:25:30', '2022-10-25 21:48:21', '943u85r94iuojt93gvunoiu9vug9mdcu8923cunxdmu9'),
(23, 8, 'COD', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-05 18:41:23', '2022-11-05 18:41:23', '45345435345uhuy3tb4nd78bfvb6VB6VB6vb'),
(24, 8, 'RazorPay', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2022-11-05 18:41:23', '2022-11-05 18:41:23', '436546t4f3mhubTYVBTFV65B676767vn67'),
(25, 8, 'Stripe', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2022-11-05 18:41:23', '2022-11-05 18:41:23', 'hn7tb6BVB76T67BN77Y67BT56RV6BN'),
(26, 8, 'PayPal', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-05 18:41:23', '2022-11-05 18:41:23', 'EDFERIUT894UY87ny78bt78nc8m7cxy78n'),
(27, 10, 'COD', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-05 20:04:38', '2022-11-05 20:04:38', 'ewrcf5u8934ny78bny78bT6VB67B7N7'),
(28, 10, 'RazorPay', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2022-11-05 20:04:38', '2022-11-05 20:04:38', 'TRYH4574G7K98UNyB78T87N78M7'),
(29, 10, 'Stripe', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2022-11-05 20:04:38', '2022-11-05 20:04:38', 'HUIGB7GBUYNUYGYUgNYUYUNG7T7g7UM'),
(30, 10, 'PayPal', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-05 20:04:38', '2022-11-05 20:04:38', '87Y85T67HNT78NT67BT67VTR67VB7N67T7BT76B67BT67vb67n6t7'),
(31, 11, 'COD', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-05 20:16:27', '2022-11-05 20:16:27', '868y9h89h8787BN78NY78NM87bn87nyym8'),
(32, 11, 'RazorPay', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2022-11-05 20:16:27', '2022-11-05 20:16:27', '7t6v67r6c5w45xW45C45V6BT67NY78nm89nm'),
(33, 11, 'Stripe', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2022-11-05 20:16:27', '2022-11-05 20:16:27', '89yn8ym89mu89mUY89BNY9M889M,09'),
(34, 11, 'PayPal', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-05 20:16:27', '2022-11-05 20:16:27', 'vt6tb7n78b87N7T78BN87bnt78bvt78n78'),
(35, 14, 'COD', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:16:30', '2022-11-13 02:16:30', 'bt67rvc56ec65xw5vR675XW54CVB67NM788967GG'),
(36, 14, 'RazorPay', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:16:30', '2022-11-13 02:16:30', ''),
(37, 14, 'Stripe', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:16:30', '2022-11-13 02:16:30', ''),
(38, 14, 'PayPal', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:16:30', '2022-11-13 02:16:30', ''),
(39, 15, 'COD', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:22:26', '2022-11-13 02:22:26', ''),
(40, 15, 'RazorPay', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:22:26', '2022-11-13 02:22:26', ''),
(41, 15, 'Stripe', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:22:26', '2022-11-13 02:22:26', ''),
(42, 15, 'PayPal', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:22:26', '2022-11-13 02:22:26', ''),
(43, 16, 'COD', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:23:01', '2022-11-13 02:23:01', ''),
(44, 16, 'RazorPay', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:23:01', '2022-11-13 02:23:01', ''),
(45, 16, 'Stripe', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:23:01', '2022-11-13 02:23:01', ''),
(46, 16, 'PayPal', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2022-11-13 02:23:01', '2022-11-13 02:23:01', ''),
(67, 33, 'COD', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2023-01-10 16:35:02', '2023-01-10 16:35:02', 'c34669d985ce8e7feebbd7c00d815785917b0fb54c31a933a033b09f37aeef43158eb52baa721fe0c38da1be2cbe3dbec08ccb23dbbea11e5837d9e5595cf71a'),
(68, 33, 'RazorPay', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2023-01-10 16:35:02', '2023-01-10 16:35:02', 'b0a0b84e128620e2a2ce8c4ae42786e8093628ed7db06c649f44f23f3d8cc1291bfdcd89cbc8dca38f1cc9dfb1d98953c54c813ce005072af1123897afd8bb50'),
(69, 33, 'Stripe', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2023-01-10 16:35:02', '2023-01-10 16:35:02', '91961227d9530e27ce81bcb866d66e2585c4079531e90fd62d762f259852f558868609de1c6f5ad5e80557e80b95faec1d6b91d628eb614cb48810d4419e16f0'),
(70, 33, 'PayPal', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2023-01-10 16:35:02', '2023-01-10 16:35:02', '6d04a092594878693ce4bcc1b3f2faa875f63aff2dabf39e416d5ee0ec6898bba8f7fdab2d38891454cc014e34530538654bc49a63dc477ae2d9a9998307a745'),
(71, 36, 'COD', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2023-02-18 18:57:27', '2023-02-18 18:57:27', 'd86db27140faeb2ccd89d84d2b19c680d65476dc69156922e3cd594e52b0a335cd5ddd68372f6c637aee2fa0785065a7a0490babfa8d0dc71147345e5f73762e'),
(72, 36, 'RazorPay', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2023-02-18 18:57:27', '2023-02-18 18:57:27', 'd112c8879f732651b3de3a58adf66dfb9b1acd1e0e4196f5ca8c162667aedd6bb6953d83d1feca5437af463cb4e92381d2730e98355eab416e2f915bfe19fb1b'),
(73, 36, 'Stripe', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2023-02-18 18:57:27', '2023-02-18 18:57:27', 'afb8795fbf2db7b92bac3ab50578ed1abc82e0093d0776844749e179f64d8f81333d128bcd40a9c13fe4a9d2a859a96ea5508174f6d7b4927caec77dfab89896'),
(74, 36, 'PayPal', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2023-02-18 18:57:27', '2023-02-18 18:57:27', '2e62e574fc61f69fa24fa4fdf34d8a1bdace11cb494d6df2ade2c091085bd28f3379de6656aa9512223446b9149498cad20890247c5cb81595ab7cc32140e569');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` longtext NOT NULL,
  `features` longtext NOT NULL,
  `price` float NOT NULL,
  `item_unit` int(11) NOT NULL,
  `plan_period` varchar(255) NOT NULL,
  `order_limit` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Yes,2=No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `_id` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `plans`
--

INSERT INTO `plans` (`id`, `name`, `description`, `features`, `price`, `item_unit`, `plan_period`, `order_limit`, `is_deleted`, `created_at`, `updated_at`, `_id`, `type`) VALUES
(1, 'FREE', 'Free growing business that needs more', 'Full access to menu Creation tool, Unlimited Views, Unlimited Orders, Email Support', 0, 50, '1', 50, 1, '2022-10-21 20:19:03', '2022-10-21 21:27:36', '387un8932u59v83u5901n2u501u0v591uv59', 1),
(2, 'Grátis', 'Permissão para cadastrar apenas 10 itens e realizar apenas 10 pedidos', 'Acesso total à ferramenta de criação de menus, Visualizações limitadas, Pedidos limitados, Suporte por e-mail', 0, 10, '5', 10, 2, '2022-10-21 21:28:43', '2022-12-09 04:01:35', '34543ufi590342u5oigm3vpo5p2hyuihdy7382b7cxt78N7CT3C5T3XC783NCY278nuc3yxr3yn8vc3c2y', 1),
(3, 'PLUS', '', '', 89, 0, '6', 0, 2, '2022-10-28 18:24:58', '2022-10-28 18:24:58', '94759843uitu493u7t5i4j39875843uujt9478t54ujt89465', 2),
(4, 'PREMIUM', '', '', 130, 0, '6', 0, 2, '2022-10-28 18:28:30', '2022-10-28 18:28:30', '895890437u689u90vj9034unvfu3091nvuvg59hn39', 2),
(5, 'ADVANCE', 'Para negócios em crescimento que precisam de mais', 'Acesso total à ferramenta de criação de menus, Visualizações limitadas, Pedidos limitados, Suporte por e-mail', 69, 300, '2', 300, 2, '2022-10-21 22:08:38', '2022-11-04 12:04:39', 'f435t546t4y45ew3453543gb6lkioewuriowu58943uy34iy8IOY8IEUWNY83YR8MJY87DNYny8h3y2894yh8xm3827xy2', 1),
(6, 'PRO', 'Para negócios em crescimento que precisam de mais', 'Acesso total à ferramenta de criação de menus, Visualizações ilimitadas, Pedidos ilimitados, Suporte por e-mail', 89, 180, '4', 180, 2, '2022-10-21 22:10:11', '2022-11-08 15:31:51', '89083490vn59035u903u09vi9n1u5093v0591BUYBUYVYUV67567Y7B6RG56V6vt67r56vb67r56v', 1),
(8, 'EXPERT', 'Special Client!!!', 'All func is possible', 10000, -1, '10', -1, 2, '2022-11-05 03:45:39', '2022-11-05 03:45:39', 'ghkerht8t84kvoierut9045ui960tu54tj43ju983452892nhy57852879b5278c528dbtx8bdnbbHNUIEWVCY773CB7NXCNHECB4Unch4y3', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privacypolicy`
--

CREATE TABLE `privacypolicy` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `privacypolicy_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `privacypolicy`
--

INSERT INTO `privacypolicy` (`id`, `restaurant`, `privacypolicy_content`, `created_at`, `updated_at`) VALUES
(1, 2, '', '2022-11-15 21:27:26', '2022-11-15 23:24:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant` int(11) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_position` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL DEFAULT 'default-logo.png',
  `favicon` varchar(255) NOT NULL DEFAULT 'default-favicon.png',
  `delivery_type` varchar(10) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `country_code` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `website_title` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `og_image` varchar(255) NOT NULL DEFAULT 'default-og.png',
  `facebook_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `linkedin_link` varchar(255) NOT NULL,
  `whatsapp_widget` longtext DEFAULT NULL,
  `whatsapp_message` longtext NOT NULL,
  `item_message` text NOT NULL,
  `language` int(11) NOT NULL DEFAULT 1,
  `template` int(11) NOT NULL DEFAULT 1,
  `primary_color` varchar(255) NOT NULL DEFAULT '#171a29',
  `secondary_color` varchar(255) NOT NULL DEFAULT '#171a29',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `restaurant`, `currency`, `currency_position`, `logo`, `favicon`, `delivery_type`, `timezone`, `address`, `email`, `description`, `country_code`, `contact`, `copyright`, `website_title`, `meta_title`, `meta_description`, `og_image`, `facebook_link`, `twitter_link`, `instagram_link`, `linkedin_link`, `whatsapp_widget`, `whatsapp_message`, `item_message`, `language`, `template`, `primary_color`, `secondary_color`, `created_at`, `updated_at`) VALUES
(1, 1, 'R$', 'left', 'logo-menu.svg', 'favicon.ico', '', 'Asia/Kolkata', '', '', '', '', '', '2023 @ Todos os direitos reservados', 'One Outlet Softwares', '', '', 'default-og.png', '', '', '', '', '', '', '', 1, 1, '#171a29', '#171a29', NULL, '2022-11-02 13:50:36'),
(2, 2, 'R$', 'left', 'logo-1667992516.jpg', 'favicon-1667418034.jpg', 'both', 'America/Sao_Paulo', 'Miguel Bonilha, 08', 'consigazgasbom@gmail.com', 'Há mais de 40 anos a Consigaz é modelo de qualidade e segurança no engarrafamento, na distribuição e na comercialização de Gás Liquefeito de Petróleo (GLP) para residências e empresas.', '+55', '13974167086', '2021 @ Todos os direitos Consigaz', 'CONSIGAZ GÁS BOM MONGAGUÁ', 'CONSIGAZ GÁS BOM MONGAGUÁ', 'Há mais de 40 anos a Consigaz é modelo de qualidade e segurança no engarrafamento, na distribuição e na comercialização de Gás Liquefeito de Petróleo (GLP) para residências e empresas.', 'og-1667992516.jpg', 'Your facebook page link', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Olá! \r\nGostaria de confirmar meu pedido 👇\r\n*{delivery_type}* Nº do Pedido: {order_no}\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n👉 Subtotal : {sub_total}\r\n👉 Taxa de Entrega : {delivery_charge}\r\n👉 Desconto : - {discount_amount}\r\n---------------------------\r\n📃 Total : {grand_total}\r\n---------------------------\r\n📄 Observação : {notes}\r\n\r\n✅ Informação do Cliente\r\n\r\nNome : {customer_name}\r\nCelular : {customer_mobile}\r\n\r\n📍 Detalhes da Entrega\r\n\r\nEndereço : {address}, {building}, {landmark}, {postal_code}\r\n\r\n---------------------------\r\nData : {date}\r\nPreferência de horário : {time}\r\n---------------------------\r\n💳 Forma de Pagamento :\r\n{payment_type}\r\n\r\n{store_name} \r\nPEDIDO CONFIRMADO\r\n\r\nRastreamento do pedido 👇\r\n{track_order_url}\r\n\r\nClick aqui para realizar um novo pedido 👇\r\n{store_url}', '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 2, '#009dff', '#172466', '2022-10-22 00:35:23', '2022-12-26 16:14:01'),
(4, 5, 'R$', 'left', 'logo-1667423072.png', 'favicon-1667423072.png', 'both', 'America/Sao_Paulo', 'Av. São Paulo, 5403', 'john@doemail.com', 'Faça sua compra com apenas um click e receba no conforto da sua casa.', '+55', '13997541840', '2022 @ all rights reserved', 'MERCADO EXTRA Mongaguá Loja Av.São Paulo', 'MERCADO EXTRA 1886', 'Faça sua compra com apenas um click e receba no conforto da sua casa.', 'og-1667423072.png', 'Your facebook page link', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Hi, \r\nI would like to place an order 👇\r\n*{delivery_type}* Order No: {order_no}\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n👉Subtotal : {sub_total}\r\n👉Tax : {total_tax}\r\n👉Delivery charge : {delivery_charge}\r\n👉Discount : - {discount_amount}\r\n---------------------------\r\n📃 Total : {grand_total}\r\n---------------------------\r\n📄 Comment : {notes}\r\n\r\n✅ Customer Info\r\n\r\nCustomer name : {customer_name}\r\nCustomer phone : {customer_mobile}\r\n\r\n📍 Delivery Details\r\n\r\nAddress : {address}, {building}, {landmark}, {postal_code}\r\n\r\n---------------------------\r\nDate : {date}\r\nTime : {time}\r\n---------------------------\r\n💳 Payment type :\r\n{payment_type}\r\n\r\n{store_name} will confirm your order upon receiving the message.\r\n\r\nTrack your order 👇\r\n{track_order_url}\r\n\r\nClick here for next order 👇\r\n{store_url}', '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 2, '#81045f', '#f51919', '2022-10-25 10:23:46', '2022-11-12 20:59:10'),
(5, 8, 'R$', 'left', 'logo-1668470022.jpg', 'favicon-1668470022.jpg', 'delivery', 'America/Campo_Grande', 'Av. Nossa Senhora de Fátima, 482', 'benettoninfo@gmail.com', 'Montagem e manutenção de aparelhos celulares, notebooks e computadores.\r\nComércio de peças e acessórios.', '+55', '13996069536', '2021 @ Todos os direitos Benetton Informática', 'Benetton Informática e Celular', 'Benetton Informática e Celular', 'Montagem e manutenção de aparelhos celulares, notebooks e computadores.\r\nComércio de peças e acessórios.', 'og-1668470022.jpg', 'Your facebook page link', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Oi, \r\n\r\nEu gostaria de confirmar meu pedido 👇\r\n\r\n*{delivery_type}* Nº do pedido: {order_no}\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n\r\n👉 Taxa de Entrega : {delivery_charge}\r\n\r\n👉 Desconto : - {discount_amount}\r\n---------------------------\r\n\r\n📃 Total : {grand_total}\r\n---------------------------\r\n\r\n📄 Observação : {notes}\r\n\r\n✅ Informação do Cliente\r\n\r\nNome do Cliente: {customer_name}\r\n\r\nTelefone do Cliente: {customer_mobile}\r\n\r\n📍 Detalhe da Entrega\r\n\r\nEndereço : {address}, {building}, {landmark}, {postal_code}\r\n---------------------------\r\n\r\n💳 Forma de pagamento:\r\n{payment_type}\r\n{store_name} will confirm your order upon receiving the message.\r\n\r\nAcompanhe seu pedido por aqui 👇\r\n\r\n{track_order_url}\r\n\r\nUse esse link para continuar comprando na Benetton 👇\r\n\r\n{store_url}', '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 1, '#07690d', '#000a05', '2022-11-05 18:41:23', '2023-02-13 20:08:26'),
(6, 10, 'R$', 'left', 'logo-1667663005.jpg', 'favicon-1667663005.jpg', 'both', 'America/Sao_Paulo', 'Av. Montreal, 460', 'dgustilitoral@gmail.com', 'Refeições - Bolos - Doces - Bebidas - Donuts - Lanches - Porções - Tapiócas - Pasteis e muito mais ...', '+55', '13996723219', '2021 @ Todos os direitos reservados D\'gusti Litoral', 'D\'gusti Delivery', 'Xcccvvbbbb', 'Refeições - Bolos - Doces - Bebidas - Donuts - Lanches - Porções - Tapiócas - Pasteis e muito mais ...', 'og-1667663005.jpg', 'https://www.facebook.com/Dgustimongagua', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Olá, \r\n\r\nEu gostaria de confirmar meu pedido 👇\r\n\r\n* Tipo de Pedido: {delivery_type}* Nº do Pedido: {order_no}\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n\r\n👉 Taxa de entrega : {delivery_charge}\r\n\r\n👉 Desconto : - {discount_amount}\r\n---------------------------\r\n\r\n📃 Total : {grand_total}\r\n---------------------------\r\n\r\n📄 Observação : {notes}\r\n\r\n✅ Informação do cliente\r\n\r\nNome do cliente : {customer_name}\r\n\r\nTelefone do cliente : {customer_mobile}\r\n\r\n📍 Detalhes da entrega\r\n\r\nAddress : {address}, {building}, {landmark}\r\n---------------------------\r\n💳 Forma de pagamento :\r\n{payment_type}\r\n{store_name} \r\n\r\nAcompanhamento do pedido 👇\r\n\r\n{track_order_url}\r\n\r\nClique aqui para realizar o  próximo pedido 👇\r\n\r\n{store_url}', '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 2, '#171a29', '#f9ae0b', '2022-11-05 20:04:38', '2022-12-26 15:06:28'),
(7, 11, 'R$', 'left', 'logo-1667664120.jpg', 'favicon-1667664120.jpg', 'both', 'America/Campo_Grande', 'Av. São Luiz, 485', 'consigazvera@gmail.com', 'Há mais de 40 anos a Consigaz é modelo de qualidade e segurança no engarrafamento, na distribuição e na comercialização de Gás Liquefeito de Petróleo (GLP) para residências e empresas.', '+55', '13996951794', '2021 @ Todos os direitos Consigaz', 'Consigaz Vera Cruz Mongaguá', 'Consigaz Vera Cruz Monaguá', 'Há mais de 40 anos a Consigaz é modelo de qualidade e segurança no engarrafamento, na distribuição e na comercialização de Gás Liquefeito de Petróleo (GLP) para residências e empresas.', 'og-1667664120.jpg', 'Your facebook page link', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Oi, \r\n\r\nGostaria de confirmar meu pedido 👇\r\n\r\n*{delivery_type}* Order No: {order_no}\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n\r\n👉 Taxa de entrega : {delivery_charge}\r\n\r\n👉 Desconto : - {discount_amount}\r\n---------------------------\r\n\r\n📃 Total : {grand_total}\r\n---------------------------\r\n\r\n📄 Observação : {notes}\r\n\r\n✅ Informações do Cliente:\r\n\r\nNome do Cliente : {customer_name}\r\n\r\nTelefone do Cliente : {customer_mobile}\r\n\r\n📍  Detalhes da Entrega\r\n\r\nEndereço : {address}, {building}, {landmark}, {postal_code}\r\n---------------------------\r\n\r\n💳 Forma de Pagemto:\r\n{payment_type}\r\n{store_name} will confirm your order upon receiving the message.\r\n\r\nRastreamento do Pedido 👇\r\n\r\n{track_order_url}\r\n\r\nContinue suas compras através do nosso link 👇\r\n\r\n{store_url}', '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 2, '#3c56d7', '#0a185c', '2022-11-05 20:16:27', '2022-12-26 16:46:44'),
(8, 14, 'R$', 'left', 'logo-1668286147.jpg', 'favicon-1668286147.jpg', 'both', 'Asia/Kolkata', 'Your address', 'yourmail@gmail.com', 'Your description', '+55', 'Your contact', '2021 @ all rights reserved', 'Your restaurant name', 'Your restaurant name', 'Description', 'og-1668286147.jpg', 'Your facebook page link', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Hi, \r\n\r\nI would like to place an order 👇\r\n\r\n*{delivery_type}* Order No: {order_no}\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n\r\n👉Subtotal : {sub_total}\r\n\r\n👉Tax : {total_tax}\r\n\r\n👉Delivery charge : {delivery_charge}\r\n\r\n👉Discount : - {discount_amount}\r\n---------------------------\r\n\r\n📃 Total : {grand_total}\r\n---------------------------\r\n\r\n📄 Comment : {notes}\r\n\r\n✅ Customer Info\r\n\r\n\r\n\r\nCustomer name : {customer_name}\r\n\r\nCustomer phone : {customer_mobile}\r\n\r\n📍 Delivery Details\r\n\r\n\r\n\r\nAddress : {address}, {building}, {landmark}\r\n---------------------------\r\n\r\nDate : {date}\r\n\r\nTime : {time}\r\n---------------------------\r\n\r\n💳 Payment type :\r\n{payment_type}\r\n{store_name} will confirm your order upon receiving the message.\r\n\r\nTrack your order 👇\r\n\r\n{track_order_url}\r\n\r\nClick here for next order 👇\r\n\r\n{store_url}', '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 2, '#171a29', '#171a29', '2022-11-13 02:16:30', '2022-12-08 12:44:24'),
(9, 15, 'R$', 'left', 'logo-1668286556.jpg', 'favicon-1668286556.jpg', 'both', 'America/Campo_Grande', 'Rua O Alsemberg, 29', 'yourmail@gmail.com', 'Adega, com cerveja sempre gelada drinks em geral, pacotes de gelo, carvão para churrasco, essência carvão de narguile e muito mais.', '+55', 'Your contact', '2021 @ Adega Beach', 'Adega Beach', 'Adega Beach', 'Adega, com cerveja sempre gelada drinks em geral, pacotes de gelo, carvão para churrasco, essência carvão de narguile e muito mais.', 'og-1668286556.jpg', 'Your facebook page link', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Hi, \r\n\r\nI would like to place an order 👇\r\n\r\n*{delivery_type}* Order No: {order_no}\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n\r\n👉Subtotal : {sub_total}\r\n\r\n👉Tax : {total_tax}\r\n\r\n👉Delivery charge : {delivery_charge}\r\n\r\n👉Discount : - {discount_amount}\r\n---------------------------\r\n\r\n📃 Total : {grand_total}\r\n---------------------------\r\n\r\n📄 Comment : {notes}\r\n\r\n✅ Customer Info\r\n\r\n\r\n\r\nCustomer name : {customer_name}\r\n\r\nCustomer phone : {customer_mobile}\r\n\r\n📍 Delivery Details\r\n\r\n\r\n\r\nAddress : {address}, {building}, {landmark}\r\n---------------------------\r\n\r\nDate : {date}\r\n\r\nTime : {time}\r\n---------------------------\r\n\r\n💳 Payment type :\r\n{payment_type}\r\n{store_name} will confirm your order upon receiving the message.\r\n\r\nTrack your order 👇\r\n\r\n{track_order_url}\r\n\r\nClick here for next order 👇\r\n\r\n{store_url}', '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 2, '#171a29', '#171a29', '2022-11-13 02:22:26', '2022-11-18 17:12:39'),
(10, 16, 'R$', 'left', 'logo-1668286459.jpg', 'favicon-1668286459.jpg', 'both', 'Asia/Kolkata', 'Your address', 'yourmail@gmail.com', 'Your description', '+55', 'Your contact', '2021 @ all rights reserved', 'Your restaurant name', 'Your restaurant name', 'Description', 'og-1668286459.jpg', 'Your facebook page link', 'Your twitter page link', 'Your instagram page link', 'Your linkedin page link', NULL, 'Hi, \r\n\r\nI would like to place an order 👇\r\n\r\n*{delivery_type}* Order No: {order_no}\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n\r\n👉Subtotal : {sub_total}\r\n\r\n👉Tax : {total_tax}\r\n\r\n👉Delivery charge : {delivery_charge}\r\n\r\n👉Discount : - {discount_amount}\r\n---------------------------\r\n\r\n📃 Total : {grand_total}\r\n---------------------------\r\n\r\n📄 Comment : {notes}\r\n\r\n✅ Customer Info\r\n\r\n\r\n\r\nCustomer name : {customer_name}\r\n\r\nCustomer phone : {customer_mobile}\r\n\r\n📍 Delivery Details\r\n\r\n\r\n\r\nAddress : {address}, {building}, {landmark}\r\n---------------------------\r\n\r\nDate : {date}\r\n\r\nTime : {time}\r\n---------------------------\r\n\r\n💳 Payment type :\r\n{payment_type}\r\n{store_name} will confirm your order upon receiving the message.\r\n\r\nTrack your order 👇\r\n\r\n{track_order_url}\r\n\r\nClick here for next order 👇\r\n\r\n{store_url}', '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 2, '#171a29', '#171a29', '2022-11-13 02:23:01', '2022-11-12 20:54:19'),
(16, 33, 'R$', 'left', 'logo-1673369809.png', 'favicon-1673369809.png', 'both', 'Asia/Kolkata', 'Rua Professor Domingos Cambiaghi,117', 'teste45@gmail.com', 'Distante também somos unidos.', '+55', 'Prefixo + nº13996069536', '2023 @ Todos os direitos reservados', 'COMPRE BEM', 'COMPRE BEM', 'Distante também somos unidos', 'og-1673369809.png', 'Insira o link da sua pagina do face', 'Insira o link da sua pagina do linkedin', 'Insira o link da sua pagina do insta', 'Insira o link da sua pagina do twitter', NULL, 'Olá, \r\n\r\nEu gostaria de confirmar meu pedido 👇\r\n\r\n*{delivery_type}* Nº do Pedido: {order_no}\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n\r\n👉Taxa de Entrega : {delivery_charge}\r\n\r\n👉Desconto : - {discount_amount}\r\n---------------------------\r\n\r\n📃 Total : {grand_total}\r\n---------------------------\r\n\r\n📄 Observação : {notes}\r\n\r\n✅ Informação do Cliente\r\n\r\n\r\n\r\nNome do cliente : {customer_name}\r\n\r\nCelular do cliente : {customer_mobile}\r\n\r\n📍 Detalhes da Entrega\r\n\r\n\r\n\r\nEndereço : {address}, {building}, {landmark}\r\n---------------------------\r\n\r\n💳 Forma de pagamento :\r\n{payment_type}\r\n{store_name} Agradece a preferência.\r\n\r\nAcompanhe seu pedido por aqui 👇\r\n\r\n{track_order_url}\r\n\r\nClique aqui fazer um novo pedido 👇\r\n\r\n{store_url}', '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 2, '#ff621f', '#2d5ef0', '2023-01-10 22:05:02', '2023-01-10 17:18:03'),
(17, 36, 'R$', 'left', 'default-logo.png', 'default-favicon.png', 'both', 'Asia/Kolkata', 'Endereço completo', 'Informe seu email', 'Faça uma descrição do negócio', '+55', 'Prefixo + nº', '2023 @ Todos os direitos reservados', 'Insira o nome da loja', 'Insira o nome da loja', 'Faça uma descrição do negócio', 'default-og.png', 'Insira o link da sua pagina do face', 'Insira o link da sua pagina do linkedin', 'Insira o link da sua pagina do insta', 'Insira o link da sua pagina do twitter', NULL, 'Olá, \r\n\r\nEu gostaria de confirmar meu pedido 👇\r\n\r\n*{delivery_type}* Nº do Pedido: {order_no}\r\n---------------------------\r\n{item_variable}\r\n---------------------------\r\n\r\n👉Taxa de Entrega : {delivery_charge}\r\n\r\n👉Desconto : - {discount_amount}\r\n---------------------------\r\n\r\n📃 Total : {grand_total}\r\n---------------------------\r\n\r\n📄 Observação : {notes}\r\n\r\n✅ Informação do Cliente\r\n\r\n\r\n\r\nNome do cliente : {customer_name}\r\n\r\nCelular do cliente : {customer_mobile}\r\n\r\n📍 Detalhes da Entrega\r\n\r\n\r\n\r\nEndereço : {address}, {building}, {landmark}\r\n---------------------------\r\n\r\n💳 Forma de pagamento :\r\n{payment_type}\r\n{store_name} Agradece a preferência.\r\n\r\nAcompanhe seu pedido por aqui 👇\r\n\r\n{track_order_url}\r\n\r\nClique aqui fazer um novo pedido 👇\r\n\r\n{store_url}', '🔵 {qty} X {item_name} {variantsdata} - {item_price}', 1, 1, '#171a29', '#171a29', '2023-02-19 00:27:27', '2023-02-19 00:27:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `systemaddons`
--

CREATE TABLE `systemaddons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(20) NOT NULL,
  `activated` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `systemaddons`
--

INSERT INTO `systemaddons` (`id`, `name`, `unique_identifier`, `version`, `activated`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Payment', 'payment', '3.0', 1, 'payment.jpg', '2022-10-23 13:57:16', '2022-10-24 06:19:03'),
(2, 'Template', 'template', '1.0', 1, 'template-gravity.jpg', '2022-10-24 22:12:49', '2022-11-01 23:45:08'),
(3, 'Coupons', 'coupons', '1.0', 1, 'coupons-gravity.jpg', '2023-01-07 03:26:16', '2023-01-07 03:26:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_book`
--

CREATE TABLE `table_book` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `type_of_event` varchar(255) DEFAULT NULL,
  `no_of_people` varchar(255) DEFAULT NULL,
  `date_of_event` varchar(255) DEFAULT NULL,
  `time_required` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `additional_requests` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temp_register`
--

CREATE TABLE `temp_register` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `is_verified` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `timestamp` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `terms_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `timings`
--

CREATE TABLE `timings` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `open_time` varchar(30) NOT NULL,
  `close_time` varchar(30) NOT NULL,
  `is_always_close` tinyint(1) NOT NULL COMMENT '1 For Yes, 2 For No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `timings`
--

INSERT INTO `timings` (`id`, `restaurant`, `day`, `open_time`, `close_time`, `is_always_close`, `created_at`, `updated_at`) VALUES
(1, 2, 'Monday', '12:00am', '11:59pm', 2, '2022-10-23 12:27:03', '2022-10-22 00:35:22'),
(2, 2, 'Tuesday', '12:00am', '11:59pm', 2, '2022-10-23 12:27:04', '2022-10-22 00:35:22'),
(3, 2, 'Wednesday', '12:00am', '11:59pm', 2, '2022-10-23 12:27:04', '2022-10-22 00:35:23'),
(4, 2, 'Thursday', '12:00am', '11:59pm', 2, '2022-10-23 12:27:07', '2022-10-22 00:35:23'),
(5, 2, 'Friday', '12:00am', '11:59pm', 2, '2022-10-23 12:27:05', '2022-10-22 00:35:23'),
(6, 2, 'Saturday', '12:00am', '11:59pm', 2, '2022-10-23 12:27:07', '2022-10-22 00:35:23'),
(7, 2, 'Sunday', '12:00am', '11:59pm', 2, '2022-10-23 12:27:09', '2022-10-22 00:35:23'),
(15, 5, 'Monday', '12:00am', '11:59pm', 2, '2022-10-25 10:23:45', '2022-10-25 10:23:45'),
(16, 5, 'Tuesday', '12:00am', '11:59pm', 2, '2022-10-25 10:23:46', '2022-10-25 10:23:46'),
(17, 5, 'Wednesday', '12:00am', '11:59pm', 2, '2022-10-25 10:23:46', '2022-10-25 10:23:46'),
(18, 5, 'Thursday', '12:00am', '11:59pm', 2, '2022-10-25 10:23:46', '2022-10-25 10:23:46'),
(19, 5, 'Friday', '12:00am', '11:59pm', 2, '2022-10-25 10:23:46', '2022-10-25 10:23:46'),
(20, 5, 'Saturday', '12:00am', '11:59pm', 2, '2022-10-25 10:23:46', '2022-10-25 10:23:46'),
(21, 5, 'Sunday', '12:00am', '11:59pm', 2, '2022-10-25 10:23:46', '2022-10-25 10:23:46'),
(22, 8, 'Monday', '12:00am', '11:59pm', 2, '2022-11-05 18:41:23', '2022-11-05 18:41:23'),
(23, 8, 'Tuesday', '12:00am', '11:59pm', 2, '2022-11-05 18:41:23', '2022-11-05 18:41:23'),
(24, 8, 'Wednesday', '12:00am', '11:59pm', 2, '2022-11-05 18:41:23', '2022-11-05 18:41:23'),
(25, 8, 'Thursday', '12:00am', '11:59pm', 2, '2022-11-05 18:41:23', '2022-11-05 18:41:23'),
(26, 8, 'Friday', '12:00am', '11:59pm', 2, '2022-11-05 18:41:23', '2022-11-05 18:41:23'),
(27, 8, 'Saturday', '12:00am', '11:59pm', 2, '2022-11-05 18:41:23', '2022-11-05 18:41:23'),
(28, 8, 'Sunday', '12:00am', '11:59pm', 2, '2022-11-05 18:41:23', '2022-11-05 18:41:23'),
(29, 10, 'Monday', '9:00am', '10:30pm', 2, '2022-11-06 00:28:52', '2022-11-06 00:28:52'),
(30, 10, 'Tuesday', '9:00am', '10:30pm', 2, '2022-11-06 00:28:52', '2022-11-06 00:28:52'),
(31, 10, 'Wednesday', '9:00am', '10:30pm', 2, '2022-11-06 00:28:52', '2022-11-06 00:28:52'),
(32, 10, 'Thursday', '9:00am', '10:30pm', 2, '2022-11-06 00:28:52', '2022-11-06 00:28:52'),
(33, 10, 'Friday', '9:00am', '10:30pm', 2, '2022-11-06 00:28:52', '2022-11-06 00:28:52'),
(34, 10, 'Saturday', '9:00am', '10:30pm', 2, '2022-11-06 00:28:52', '2022-11-06 00:28:52'),
(35, 10, 'Sunday', '9:00am', '10:30pm', 2, '2022-11-06 00:28:52', '2022-11-06 00:28:52'),
(36, 11, 'Monday', '12:00am', '11:59pm', 2, '2022-11-05 20:16:27', '2022-11-05 20:16:27'),
(37, 11, 'Tuesday', '12:00am', '11:59pm', 2, '2022-11-05 20:16:27', '2022-11-05 20:16:27'),
(38, 11, 'Wednesday', '12:00am', '11:59pm', 2, '2022-11-05 20:16:27', '2022-11-05 20:16:27'),
(39, 11, 'Thursday', '12:00am', '11:59pm', 2, '2022-11-05 20:16:27', '2022-11-05 20:16:27'),
(40, 11, 'Friday', '12:00am', '11:59pm', 2, '2022-11-05 20:16:27', '2022-11-05 20:16:27'),
(41, 11, 'Saturday', '12:00am', '11:59pm', 2, '2022-11-05 20:16:27', '2022-11-05 20:16:27'),
(42, 11, 'Sunday', '12:00am', '11:59pm', 2, '2022-11-05 20:16:27', '2022-11-05 20:16:27'),
(43, 14, 'Monday', '12:00am', '11:59pm', 2, '2022-11-13 02:16:30', '2022-11-13 02:16:30'),
(44, 14, 'Tuesday', '12:00am', '11:59pm', 2, '2022-11-13 02:16:30', '2022-11-13 02:16:30'),
(45, 14, 'Wednesday', '12:00am', '11:59pm', 2, '2022-11-13 02:16:30', '2022-11-13 02:16:30'),
(46, 14, 'Thursday', '12:00am', '11:59pm', 2, '2022-11-13 02:16:30', '2022-11-13 02:16:30'),
(47, 14, 'Friday', '12:00am', '11:59pm', 2, '2022-11-13 02:16:30', '2022-11-13 02:16:30'),
(48, 14, 'Saturday', '12:00am', '11:59pm', 2, '2022-11-13 02:16:30', '2022-11-13 02:16:30'),
(49, 14, 'Sunday', '12:00am', '11:59pm', 2, '2022-11-13 02:16:30', '2022-11-13 02:16:30'),
(50, 15, 'Monday', '12:00am', '11:59pm', 2, '2022-11-13 02:22:26', '2022-11-13 02:22:26'),
(51, 15, 'Tuesday', '12:00am', '11:59pm', 2, '2022-11-13 02:22:26', '2022-11-13 02:22:26'),
(52, 15, 'Wednesday', '12:00am', '11:59pm', 2, '2022-11-13 02:22:26', '2022-11-13 02:22:26'),
(53, 15, 'Thursday', '12:00am', '11:59pm', 2, '2022-11-13 02:22:26', '2022-11-13 02:22:26'),
(54, 15, 'Friday', '12:00am', '11:59pm', 2, '2022-11-13 02:22:26', '2022-11-13 02:22:26'),
(55, 15, 'Saturday', '12:00am', '11:59pm', 2, '2022-11-13 02:22:26', '2022-11-13 02:22:26'),
(56, 15, 'Sunday', '12:00am', '11:59pm', 2, '2022-11-13 02:22:26', '2022-11-13 02:22:26'),
(57, 16, 'Monday', '12:00am', '11:59pm', 2, '2022-11-13 02:23:01', '2022-11-13 02:23:01'),
(58, 16, 'Tuesday', '12:00am', '11:59pm', 2, '2022-11-13 02:23:01', '2022-11-13 02:23:01'),
(59, 16, 'Wednesday', '12:00am', '11:59pm', 2, '2022-11-13 02:23:01', '2022-11-13 02:23:01'),
(60, 16, 'Thursday', '12:00am', '11:59pm', 2, '2022-11-13 02:23:01', '2022-11-13 02:23:01'),
(61, 16, 'Friday', '12:00am', '11:59pm', 2, '2022-11-13 02:23:01', '2022-11-13 02:23:01'),
(62, 16, 'Saturday', '12:00am', '11:59pm', 2, '2022-11-13 02:23:01', '2022-11-13 02:23:01'),
(63, 16, 'Sunday', '12:00am', '11:59pm', 2, '2022-11-13 02:23:01', '2022-11-13 02:23:01'),
(106, 33, 'Monday', '12:00am', '11:59pm', 2, '2023-01-10 16:35:02', '2023-01-10 16:35:02'),
(107, 33, 'Tuesday', '12:00am', '11:59pm', 2, '2023-01-10 16:35:02', '2023-01-10 16:35:02'),
(108, 33, 'Wednesday', '12:00am', '11:59pm', 2, '2023-01-10 16:35:02', '2023-01-10 16:35:02'),
(109, 33, 'Thursday', '12:00am', '11:59pm', 2, '2023-01-10 16:35:02', '2023-01-10 16:35:02'),
(110, 33, 'Friday', '12:00am', '11:59pm', 2, '2023-01-10 16:35:02', '2023-01-10 16:35:02'),
(111, 33, 'Saturday', '12:00am', '11:59pm', 2, '2023-01-10 16:35:02', '2023-01-10 16:35:02'),
(112, 33, 'Sunday', '12:00am', '11:59pm', 2, '2023-01-10 16:35:02', '2023-01-10 16:35:02'),
(113, 36, 'Monday', '12:00am', '11:59pm', 2, '2023-02-18 18:57:27', '2023-02-18 18:57:27'),
(114, 36, 'Tuesday', '12:00am', '11:59pm', 2, '2023-02-18 18:57:27', '2023-02-18 18:57:27'),
(115, 36, 'Wednesday', '12:00am', '11:59pm', 2, '2023-02-18 18:57:27', '2023-02-18 18:57:27'),
(116, 36, 'Thursday', '12:00am', '11:59pm', 2, '2023-02-18 18:57:27', '2023-02-18 18:57:27'),
(117, 36, 'Friday', '12:00am', '11:59pm', 2, '2023-02-18 18:57:27', '2023-02-18 18:57:27'),
(118, 36, 'Saturday', '12:00am', '11:59pm', 2, '2023-02-18 18:57:27', '2023-02-18 18:57:27'),
(119, 36, 'Sunday', '12:00am', '11:59pm', 2, '2023-02-18 18:57:27', '2023-02-18 18:57:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `payment_id` text DEFAULT NULL,
  `screenshot` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_type` varchar(255) NOT NULL,
  `plan_period` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Pending, 2 = Approved , 3 = Rejected',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `transaction`
--

INSERT INTO `transaction` (`id`, `restaurant`, `plan`, `coupon_id`, `amount`, `payment_id`, `screenshot`, `date`, `payment_type`, `plan_period`, `status`, `created_at`, `updated_at`) VALUES
(5, 5, 'FREE', NULL, '0', NULL, NULL, '2022-10-25', 'COD', '1', 2, '2022-10-25 10:55:52', '2022-10-25 10:55:52'),
(6, 2, 'ADVANCE', NULL, '29', 'bad94e6b95f2bd66e0cbb1d5c16a03f0', NULL, '2022-10-27', 'PayPal', '4', 2, '2022-10-27 06:41:08', '2022-10-27 06:41:08'),
(7, 27, 'PREMIUM', NULL, '130', '3dff042afd4dc9317289a66a218cd1116fa63393', NULL, '2022-11-29', 'PayPal', '6', 2, '2022-11-29 18:53:34', '2022-11-29 18:53:34'),
(8, 27, 'PREMIUM', NULL, '130', '8cf437a954b8d58717e33dd802010fbb2b7d5ec9', NULL, '2022-11-29', 'PayPal', '6', 2, '2022-11-29 19:12:06', '2022-11-29 19:12:06'),
(9, 28, 'PREMIUM', NULL, '130', '5b8d608dfebc9cf6eb5ea939c176fc670e96cea3', NULL, '2022-11-29', 'PayPal', '6', 2, '2022-11-29 19:31:36', '2022-11-29 19:31:36'),
(10, 29, 'PREMIUM', NULL, '130', 'cf61282142d49df60462748a9c0d402738025b23', NULL, '2022-12-01', 'PayPal', '6', 2, '2022-12-01 19:03:07', '2022-12-01 19:03:07'),
(11, 30, 'PREMIUM', NULL, '130', '954ed0a55b23d81a170aaac1fcae468da9a40bb1', NULL, '2022-12-01', 'PayPal', '6', 2, '2022-12-01 23:57:30', '2022-12-01 23:57:30'),
(12, 31, 'PREMIUM', NULL, '130', '79347f1700b09eaf963003f8c87877c0c7d85c80', NULL, '2022-12-31', 'PayPal', '6', 2, '2022-12-31 14:23:13', '2022-12-31 14:23:13'),
(13, 33, 'PREMIUM', 3, '130', 'a2210fb97c32506ea48fff8826ed9181710ce709', NULL, '2023-01-10', 'PayPal', '6', 2, '2023-01-10 16:35:02', '2023-01-10 16:35:02'),
(14, 36, 'PREMIUM', NULL, '130', 'afa9d8dabc4e8db1120b70248fa2163963b5fb48', NULL, '2023-02-18', 'PayPal', '6', 2, '2023-02-18 18:57:27', '2023-02-18 18:57:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT '1.png',
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `login_type` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1=Admin,2=vendor,3=driver,4=User/Customer',
  `description_user` text DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `plan_app` varchar(255) DEFAULT NULL,
  `purchase_amount` varchar(255) DEFAULT NULL,
  `purchase_date` varchar(255) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `free_plan` int(11) NOT NULL DEFAULT 0,
  `is_delivery` tinyint(1) DEFAULT NULL COMMENT '1=Yes,2=No',
  `is_verified` tinyint(1) NOT NULL COMMENT '1=Yes,2=No',
  `is_available` tinyint(1) NOT NULL COMMENT '1=Yes,2=No',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_approved` int(11) NOT NULL,
  `app_payment_id` varchar(255) DEFAULT NULL,
  `app_purchase_date` datetime DEFAULT NULL,
  `is_expired` int(11) NOT NULL DEFAULT 1,
  `app_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `slug`, `email`, `country_code`, `mobile`, `avatar`, `image`, `password`, `login_type`, `type`, `description_user`, `token`, `otp`, `payment_id`, `plan`, `plan_app`, `purchase_amount`, `purchase_date`, `payment_type`, `free_plan`, `is_delivery`, `is_verified`, `is_available`, `remember_token`, `created_at`, `updated_at`, `is_approved`, `app_payment_id`, `app_purchase_date`, `is_expired`, `app_token`) VALUES
(1, 'Robert Cruz', 'admin-3', 'admin@gmail.com', '+55', '1234567890', 'avatar-1672292740.png', 'default.png', '$2y$10$vLrqNcEXtnIe2OZKl11gC.ie6.YpQs1QgGKTPN.h671DO/9JO7HqW', 'email', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, NULL, 1, 1, NULL, '2022-08-15 21:31:17', '2022-12-29 05:45:40', 2, NULL, NULL, 1, 'ikjfioehwfioujweijfiwmjr89yr6t4b6rt7328tvr8732'),
(2, 'Consigaz Gás Bom Mongaguá', 'john-martin', 'vendor@yopmail.com', '+55', '13974044868', 'avatar-1672292307.png', 'favicon-1667418034.jpg', '$2y$10$ZAl9uJslQRE/2vuMoPd3H./oAvAlTw2kwrXVZYQwMk5FzPincbd/q', 'email', 2, NULL, NULL, NULL, 'bad94e6b95f2bd66e0cbb1d5c16a03f0', 'ADVANCE', NULL, '29', '2022-10-27 06:41:08am', 0, 1, NULL, 2, 1, NULL, '2022-09-26 07:11:43', '2022-12-29 05:38:27', 2, NULL, NULL, 1, 'ret54654yrt4564hgv4fd24fft45'),
(5, 'Extra Mongaguá Av. São Paulo', 'john-doe', 'john@doemail.com', '+55', '12345678', '1.png', 'favicon-1667423072.png', '$2y$10$P/nJEmB3Y0PM9hDgDurxoOUzIavBvs5396iJeocFtSvVhY21qBuku', 'email', 2, NULL, NULL, NULL, NULL, 'FREE', NULL, '0', '2022-10-25 10:55:52am', 0, 1, NULL, 2, 1, NULL, '2022-10-25 10:23:45', '2022-11-15 18:33:03', 2, NULL, NULL, 1, 'wrjio4y8jfy839hdy783h873j893jy98h3f689353895fh7389'),
(6, 'Mercado Extra 1886', 'mercado-extra-1886', 'extra1886@gmail.com', '+55', '13988792795', '1.png', 'default-logo.png', '$2y$10$tqb0XerJRqZovFF4BWHFTucmBNbWRZ3GXH4o5dhu3OogVbz9MQxKi', 'email', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2022-11-03 00:54:06', '2022-11-03 00:54:06', 1, NULL, NULL, 1, 'fhy3478hf83yg63hf389jfd99999999999h678h88jfh'),
(8, 'Benetton Informática e Celular', 'ja-ferreira-mat-de-construcao', 'jaferreira@gmail.com', '+55', '1399999999', '1.png', 'favicon-1668470022.jpg', '$2y$10$tgs1V01ITXy1iLguqibzMuRxCriZWolPF.oT4B12rBbPvzS/kx9bK', 'email', 2, NULL, 'fe8c063e81ec85be72b90bea050ed7414bea58a0785792602ee0c67c8292c26ae1e343aa036d546d4466dde85f03e65c25c9f1300c2cbf90a8f8b35a2f406e9f7f00028fd6cd11b42e8778476d13f3bc', NULL, '10a80ff716ecd900f0664b38d230c078ba88f19c20de76c689883c392e03f40e594cd3f2ae48d305100452197f5032361302f822fee9aee41759d2f5b33937b6', 'EXPERT', NULL, '10000', '2022-11-05 06:41:22pm', 5, 1, NULL, 2, 1, NULL, '2022-11-05 18:41:23', '2022-11-14 23:53:42', 2, NULL, NULL, 1, 'kihjiohyr84y954395u384ujr849y589y4hrjh4389uy85r943yhtugh'),
(10, 'D\'gusti Delivery', 'dgusti-delivery', 'dgustilitoral@gmail.com', '+55', '1398646477998', '1.png', 'favicon-1667663005.jpg', '$2y$10$NI92WsAMyx6xj3nDFHXs4up.u9eh0.AD0Lt9SPk1FTJT.0546KHaa', 'email', 2, NULL, '60f02bb787b3c313c56cc8e932f005fe62d5701642e7d666fd370823387ea81c1f12a3047fbab068c2c42fb7096cd3f4ed5176ffed07f9c63b90eff4425df7f37bbe1f6f03cd778bb65d0bb79a647b09', NULL, '82d94b5181b46bfdd84121bcba11f3250168993131eb2099bbdc988ac125273cf529c922e4f1dfc62b4ad7294d17ee02a1f517a35df3c11d9aa5c0ff56ca5c6a', 'EXPERT', NULL, '10000', '2022-11-05 08:04:38pm', 5, 1, NULL, 2, 1, NULL, '2022-11-05 20:04:38', '2022-11-06 23:15:46', 2, NULL, NULL, 1, 'fnjkhtuy4t578435y894u932u49032ujdr9i32uy84932yhr8hy'),
(11, 'Consigaz Vera Cruz Mongaguá', 'consigaz-vera-cruz-mongagua', 'consigazvera@gmail.com', '+55', '13997541840', '1.png', 'favicon-1667664120.jpg', '$2y$10$HqAjtkb0xu0/iBtnITtm5epuxD8V50whrOzzH0iS/SfKDkr5UfcGm', 'email', 2, NULL, '914bed5832b94030bea91ec198edee852ce4de4e13d6fd3abe893a6d349bcada782f5912fe10108b0a7526af61b619ba97faa147d253fe53aab38d7fd787c37a4d4272f294c2a4885da509c95e8c78f4', NULL, '517bf2404d3c0a35e1ec9d52b6cd8171ca672b13d550bd1dd76e4677a4d326760246e438cd923a3f458b48597d547f959d596a457c0d14e3ede0f5bc5613338c', 'EXPERT', NULL, '10000', '2022-11-05 08:16:27pm', 5, 1, NULL, 2, 1, NULL, '2022-11-05 20:16:27', '2022-11-10 10:11:10', 2, NULL, NULL, 1, 'hujhfu7eryt784yr894ur8943ujjjjjjjj9034ujd9fuy893yhr832yh'),
(12, 'virus', 'virus', 'virus@yopmail.com', '+55', '3514569871', '1.png', 'default-logo.png', '$2y$10$G1j4KONgXR8jspHLt11IUOovUotlFUv34ISEjmZ.TFd377cspGGUe', 'email', 3, NULL, 'd6ca52571f81dbe0c1112b2e17629da976be4f485b672bb75a8e8a3bec5dea937add33d322459ef09a3543a62f0d7f2ac1b93177d0ede07e0a8f7010a6ca0a07326577fbe6d73973bd67437829bf9301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2022-11-10 10:44:07', '2022-11-10 10:44:07', 1, NULL, NULL, 1, 'jiohuj83y24832yhrijhfi8u8933689432yuh8i4uhjt849367823'),
(14, 'Dogão Suarão', 'dogao-suarao', 'dog@gmail.com', '+55', '1398888899888', '1.png', 'favicon-1668286147.jpg', '$2y$10$55jIsROXpKg3LqwaRuMB.OWqwuUycRdh42Yt2rhdhU.gY5SUvoSdm', 'email', 2, NULL, '13ea9b9418650cdc54dde1894a9c315dce142109198eb09f593998fae8b0a556f7cd24ebbb46086833be5ba65961e7f9c1a3eaeea7d2216129aa4ccb0779eaea89040e4a3ae9afa58d587513c37dcf9f', NULL, '781e53165a753c22ab2fa93ca9187f734b81dcf82d011f5f52c0ab5ff79cb6689837063d5cbbfe5a49349f510edcdb63dc861fdd2b21cceb0db555f619762cd5', 'EXPERT', NULL, '10000', '2022-11-13 02:16:30am', 5, 1, NULL, 2, 1, NULL, '2022-11-13 02:16:30', '2022-11-12 20:49:07', 2, NULL, NULL, 1, '6765y765uy65urtyhtrhrt6y4eet436t4tgtewt43534'),
(15, 'Adega Beach', 'adega-beach', 'beaech@gmail.com', '+55', '138989899999', '1.png', 'favicon-1668286556.jpg', '$2y$10$GN728iOwGTHmVeDdhuEwzu7yhKQsr8tu/asLAnKF0/ieSiHmkgupm', 'email', 2, NULL, '9921de700076d7a77c94868ad58ca1503d13f320b45c703cfb611b842da3e534776208ec474a74bf62d2dfe9bd42c893780d5fa2a24387be65163d030db7c2dbeaf09c6bcee30b4ca2bb0d7c58d2fd4d', NULL, 'a8f0766ea43ecf51697c05bbded77aa5bfaa92dd20c39436d3241b4ed4ac8ff95793a683b6e1d9d470c0824b8da61a2f1ed0947aa798d3dbb6447bd025ec7562', 'EXPERT', NULL, '10000', '2022-11-13 02:22:26am', 5, 1, NULL, 2, 1, NULL, '2022-11-13 02:22:26', '2022-11-12 20:55:56', 2, NULL, NULL, 1, 'ewrfuiewht89743y678t43yt78tyhrf8h8392yhf9832'),
(16, 'Pizzaria&Cia', 'pizzariacia', 'pizzariaecia@gmail.com', '+55', '1397888988898', '1.png', 'favicon-1668286459.jpg', '$2y$10$wZfs.fkkFcgTdonFvvzeteymDijJyF5A3XTSm8ytrl5oR0E4QA7Oi', 'email', 2, NULL, '29071bfe3837839bf4dff34ce9c52cbb1e8b859d55706023236209742f88f10182f5a3080d1162ebff1ec3f67022b13ecc655956334ca39d102b2ed06bd928a5a9bf6b5f989b9e4de23188fd586992a6', NULL, 'bcbac285a4e2cd8b7df2bb4fbd7cb0bdd33132211e4840b5ea8c5efd4562016bfe3dd4ee125b74417daa7a936f3945abc44a5134766155c341fff354ba60792f', 'EXPERT', NULL, '10000', '2022-11-13 02:23:01am', 5, 1, NULL, 2, 1, NULL, '2022-11-13 02:23:01', '2022-11-12 20:54:19', 2, NULL, NULL, 1, 'bjfkbui3r7g82yr7823yu8r923r8923jhrfjh3289ryh782tgr'),
(25, 'Roberto', 'roberto', 'email.rcruz@yahoo.com.br', '+55', '13909888888', '1.png', 'default-logo.png', '$2y$10$eQsNygYQDfMlUlTUUQ6H1OEZcvrwGYQx4uTKiadbHyRaf5T1l.8vi', 'email', 3, NULL, 'e0e48e893fcc33249e8f663b8f814c9096c5117af2364aacdb0f337f419f436b3518d03fc75e8f53d47f1430e911ef7400363c93dfba975cda7ee19656def5a5c1bfc188dba59d2681648aa0e6ca8c8e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2022-11-29 20:13:38', '2023-03-03 17:33:51', 2, '7d8fca5384a7d0405c55484745cb2730097caefc', '2022-11-29 08:13:38', 2, '14424436941a3638280c87282c6456bd2b13ed67552bf583ee3ec673338775ce520378b0fed09212a714a6cc99ffa3bd80c0abde7e543216438'),
(26, 'Carvão', 'carvao', 'teste03@gmail.com', '+55', '13987764788', '1.png', 'default-logo.png', '$2y$10$JJcIYnd2hRpK4Ja6T.oQb.OeZSHyQUm1Pf4y6H/DYsP2BFP.pBmfW', 'email', 3, NULL, '413be12d3e7599d9ce2e6553e1ae6f502f8b377d883dced6f420c5117ddc01aff0911214c091f4c1bf59c4b46ea455198126ea3b110c335350a5d0cdf09088e85f4af48084b77bbb74135951948156bb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2022-11-29 20:28:31', '2023-03-03 17:33:51', 2, '1b8b34249884df32c168f97dc612eb44ebc19977', '2022-11-29 08:28:31', 2, '1073952612af33f806a7e95a1f53084e59ab69a8f46a655e49e0388d76fd13893968f57269548181bcc0ec75032267e31f5ae164681802703955'),
(32, 'Pedro Batista', 'pedro-batista', 'teste35@gmail.com', '+55', '13999087865', '1.png', 'default-logo.png', '$2y$10$jHX3qGEZ2b4AKlaLAq/jT.6C8a3FQR8Yo3p8jKz2S3CwzKSN9wUP6', 'email', 3, NULL, '04903b693070c00f0dd4ce18ca5a71c09744f5abf6566b0fa6c44353466779429cb6bfe6d3b7aff40f7cdd3b3826da4b08ffe2052c57495ec22a7f47e8df573b11e982654ca8f5b4f6e630f509a4f1a3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2023-01-07 20:47:18', '2023-03-03 17:33:51', 2, 'fe5cb4eda0aaedbf5f62d64a085aa3bd840b4730', '2023-01-07 08:47:18', 2, '92614671137011c2b8f070eb90937032439388e6bedefd7d6672be3732b817a50e44a0dc765284afcf02fb47dc28eb07fe7c3c3d2828029731'),
(33, 'COMPRE BEM', 'compre-bem', 'teste45@gmail.com', '+55', '13998976565', 'avatar-1673368538.png', 'favicon-1673369809.png', '$2y$10$nFdPIrqwZZ.qBCPJyF5nUuGnAEPoWdxDO8WpX/nLHjMcQBJNhQcAS', 'email', 2, NULL, '4c40a89654bcb4699f07d14cf58a626866429db2773e1557130dd69c060d8735fe59496003bc0fd18adaef2f4c72057891ab9d6b9e1c9d8a7ef51b284943b28feede605af4f56bdf1f284b959ebfe5b1', NULL, NULL, NULL, 'PREMIUM', NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2023-01-10 20:38:46', '2023-01-10 16:56:49', 2, 'a2210fb97c32506ea48fff8826ed9181710ce709', '2023-01-10 04:35:02', 1, '386641371480a78c74cd3d2bddf0b4d81fe23eb3f77e52c370c9ee78706eb7d85525d145453792245bc497b9853fb4fa96068eab314409935'),
(34, 'Pedro Batista', 'pedro-batista-34', 'novo@gmail.com', '+55', '13900988767', '1.png', 'default-logo.png', '$2y$10$uA2VmFi7GVXGhvXCHTnlUeF.KNnOKroz2afF9DO1g2Ml/BYiiTdc2', 'email', 3, NULL, '888c4b8d8a32ffe71208635251a5a88a7de8e873bf66cd9b0897b1e6fc9318728243854d40e8e442eefb5806e4c73c69e3a449f2a24aad9c6a6ff54ba7b15812f6a5e4460eadf80f053ab0b411edbf1c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2023-01-10 22:08:44', '2023-03-03 17:33:51', 2, '4e1222897a4f5fca15e73b043aeedb6b70d15e2b', '2023-01-10 10:08:44', 2, '717434094da41dbae88a37626b72a8a76a45de0453979edf8d015dd11f7af28ad674e471a90e411c3de3c6b768fa43303dd58a6c41358034446'),
(35, 'Wilton Gomes', 'wilton-gomes', 'ti@wdmais.com.br', '+55', '21981754152', '1.png', 'default-logo.png', '$2y$10$qFxmiYUnx3XbidAQgqF2Xu7RBWmfrcSIT3AweolTRZBTu6UUysceK', 'email', 3, NULL, '004c11309f6df0bd622639556473984fb2258d838be06c721141525ce22776187d83ed5ea2a4b7eb5c1ddfb36945d49130a989381a3fa952132dff9148dd443833687ce1fa1cabb0464c221bac7af5b2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2023-02-17 19:42:42', '2023-03-03 17:33:51', 2, '64170883f21c046e7e104a5e9c0fee6eb18a12e8', '2023-02-17 07:42:42', 2, '1611318431d3bcdd21eab97361e251e8f03bf9ef5c0e1a6f7b4647a6d999283a47aff38cea926a8e0790b55396c765f488ba2bffb3832605673'),
(36, 'Pedro Paulo', 'pedro-paulo', 'pedro@hotmail.com', '+55', '13987899090', '1.png', 'default-logo.png', '$2y$10$D6K5axJ0HqcatCYNVUUP5OiFDPYBziBtt7BcV0mpBUhWBoQZ8AAcW', 'email', 2, NULL, '94ae3540097f6164246375b4ce5afe304fa7d67f25c23da747bc95fc93dadc06cb84ac191ed4cc942d1221b0a348767fe1650ee4cab843e9b31ea109a9f6acfb27dfc596ca0acabd25c63bb974a059a5', NULL, NULL, NULL, 'PREMIUM', NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2023-02-19 00:10:46', '2023-02-19 00:27:27', 2, 'afa9d8dabc4e8db1120b70248fa2163963b5fb48', '2023-02-18 06:57:27', 1, '1795915209cd39492dc9b09e4885e24966e87a275824d92f34df3d81bba342ac03de8525340732b163af2f74de0fc095b1ba7c7c94144764115'),
(37, 'Mario Sergio', 'mario-sergio', 'teste50@gmail.com', '+55', '13 989098765', '1.png', 'default-logo.png', '$2y$10$NT.ljA2Qn2qLmSYT3LXtnOeys/hvMfiXvQJVal4hg/xvFvEAIGfHa', 'email', 3, NULL, 'a8f85191469016c3530af588ddae33ba92321c73136b8264a29c891efccdb0223f646d80d0edee1a6dce4ba07db716f19db003e65686001e1a6def7397978ef6a5dfe7fcebc80b41e1e48471b456963c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2023-02-22 00:05:14', '2023-03-03 17:33:51', 2, '05678b9539741d03190294c6278fd0173ba56afe', '2023-02-22 12:05:14', 2, '2096723621b4fb3a84ce409393fd89068daf4ca2e653dceedb1b2983b5d1ef43af1f48ccbe9eff464f89d1ad8cd3a36c5afe1fb73b586829415'),
(38, 'tachieli Lopes', 'tachieli-lopes', 'tachiele@yahoo.com', '+55', '51985060252', '1.png', 'default-logo.png', '$2y$10$lqGFQE1i4Ho3osrK622QK.AVH8w2MJ4aXaU453W/Mc2HlrbyiDQim', 'email', 3, NULL, '161d6d815f2023b9f8a406750e5401f7dc46b2dc31221b7be89b30b4a0e899028d8bc8e3fedf867c2e8cd25605d2141de5f4a65fd9cd010dc019f5adbe3a9955e96499a96b220ca31e4cb37eb56494c3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2023-03-03 04:32:16', '2023-03-03 04:32:16', 2, '81e9d79dfc9e8c5b1479c8ee346b3ce624b119fa', '2023-03-03 04:32:16', 1, '4282819298493e08466b76cdd1655e9824a7192849f26ca3f7df67c9961c7d00ae5fe9b5c0e8e91ce5ca9c2899780d311ef812ccb1033878196'),
(39, 'phantom0810', 'phantom0810', 'mukhaletaet@gmail.com', '+55', '6563430991', '1.png', 'default-logo.png', '$2y$10$AvkHAE9pY.VpEyTsnk6QNeA7hNzg4rJc.WnO/qOvQo7Mj10ftc31a', 'email', 3, NULL, '5a184ef170e55f84b676bd513fbb92281063aadd6d1ad7005a0c9bfbd88445bbdba073bd5c7df4afcb760a1eb2c358daa3767a70bd164082bbd9c384a272218a0841c1f76bd5a4c16831b5776f53c737', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2023-03-03 06:36:32', '2023-03-03 06:36:32', 2, 'a49489c62fb697e83fc144dc09cd3dc3141a5603', '2023-03-03 06:36:32', 1, '14167676697c46e4d4e44be3fdd03f59b79f4ee7ac4ce61fe9f2f2f458e4e5fae83c7054f2b6cc1f14910b3830c31c6d48dbe4fd6f2068464586'),
(40, 'abdul alim khan', 'abdul-alim-khan', 'abdulalim.khan63@gmail.com', '+55', '9300014089', '1.png', 'default-logo.png', '$2y$10$N53G1/62Gm7yzdQaPaOOZO6VbWuxYXcywhiHvansATC6HJXQphtfm', 'email', 3, NULL, 'adaf074b859f55538b10b2c06fbb07afef69b6a7a755913f16b34c32e65b208803a141cd56239af4e4e71128a21f37bdb8099cb35d01c093617d547105f4866e79d1764b21697e75d26b4c859e6ed5ce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 2, 1, NULL, '2023-03-03 23:03:27', '2023-03-03 23:03:27', 2, '6a5b49654d497167d02d675e36f632c324113296', '2023-03-03 11:03:27', 1, '1323025895128f2a868696087fbe2dbb7ff096a25644682d72d2a2602ac4c23e3844ad61f228fbbe82cf72fa8eac138a24c68d92d3662733399');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_temp`
--

CREATE TABLE `user_temp` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `restaurant` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `sub_total` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) DEFAULT NULL,
  `order_type` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `delivery_area` varchar(255) DEFAULT NULL,
  `delivery_charge` varchar(255) DEFAULT NULL,
  `discount_amount` varchar(255) DEFAULT NULL,
  `couponcode` varchar(255) DEFAULT NULL,
  `order_notes` text DEFAULT NULL,
  `customer_name` text DEFAULT NULL,
  `customer_email` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `delivery_date` varchar(255) DEFAULT NULL,
  `delivery_time` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `user_temp`
--

INSERT INTO `user_temp` (`id`, `payment_id`, `restaurant`, `order_number`, `sub_total`, `tax`, `grand_total`, `order_type`, `address`, `building`, `landmark`, `delivery_area`, `delivery_charge`, `discount_amount`, `couponcode`, `order_notes`, `customer_name`, `customer_email`, `mobile`, `delivery_date`, `delivery_time`, `status`, `timestamp`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 11, '2', '5d7bd9bf55703564cc232a9f0ac0cca9', '10', '0', '30', 1, 'ewr', 'ewr', 'ewrew', 'Near By', '20', '0', NULL, 'r', 'ewr', 'ewr', 'ewrew', '2022-11-02', '11:00 - 11:30', 1, '04e87abaefeb266e33b229db1ee1e4498e86efa4109fe3818c5b5e8c6d05e6a4', 2, '2022-10-30 01:13:19', '2022-10-30 01:13:19'),
(2, 11, '2', 'ef14bf6c7c133fcbc09108a504b86ec2', '10', '0', '30', 1, 'test', 'test', 'test', 'Near By', '20', '0', NULL, 'test', 'test', 'test@gmail.com', '12445677', '2022-11-04', '13:00 - 13:30', 1, 'dc4aabed5a1acb3f27ec6ba66a3fc9dd8547a7869b95eca3922a724a5ff1b382', 2, '2022-10-30 01:24:42', '2022-10-30 01:24:42'),
(3, 11, '2', '3ab6db9f939ee2a1a0de80812f4a6f9c', '10', '0', '30', 1, 'Rozhen House Street', 'Green House', '1234', 'Near By', '20', '0', NULL, 'For Party', 'John Martin', 'john@martinmail.com', '123457543', '2022-11-01', '11:00 - 11:30', 1, 'c98e6a896de50391cd472d23b854d94d64f8fe9851eedffa4f2d3adbccbab092', 1, '2022-10-30 01:41:46', '2022-10-29 20:25:09'),
(4, 11, '2', 'c68193507644ed1d526da9412c3c7173', '130', '5.5', '155.5', 1, 'werwer', 'ewrewr', 'werwe', 'Near By', '20', '0', NULL, 'For Party.', 'John Marthin', 'john@gmail.com', '1234567899', '2022-11-02', '12:30 - 13:00', 1, '095543d21508afe4e377b02ef113059c7cf1c9e98d48ebdfe96a89e80b53003a', 1, '2022-11-01 08:04:59', '2022-11-01 02:37:22'),
(5, 11, '2', 'a8dfabb1d8976a58d839e9f936dfb0af', '232', '0', '232', 2, '', '', '', NULL, '0.00', '0', NULL, NULL, 'test', 'test@gmail.com', '2323232323', '2022-12-15', '11:00 - 11:30', 1, '4b4ea1e016fb080b30d1387d98e92b8112b74c18545d40d4923e8f312451333f', 2, '2022-11-10 03:42:06', '2022-11-10 03:42:06'),
(6, 30, '10', 'yajupnHwg2GXocg', '12', '0', '13', 1, 'Miguel Bonilha', '08', 'Proximo', 'Itaguai', '1', '0', NULL, NULL, 'Roberto', 'oneoutlet@oneoutlet.site', '+5513998763450', '2022-12-26', 'none', 1, '6d13f5a912d147b0249acdd7df963a875ea5ee34a572a191b31f114ea68bf6ce', 2, '2022-12-26 21:28:47', '2022-12-26 21:28:47'),
(7, 26, '8', 'ToSEM6DfFHDI0AY', '30', '0', '30', 1, 'test for building', 'test for street', 'test for addrew', 'none', '0', '0', NULL, 'For test', 'tester', 'oneoutlet@oneoutlet.site', '+553298478932', '2022-12-29', 'none', 1, '4eca15e663156147406f2baf61b44b6a883f909bed26a5e4685356b891de9173', 2, '2022-12-29 01:35:06', '2022-12-29 01:35:06'),
(8, 70, '33', 'tDDUTQGD46d2eR7', '78', '0', '78', 1, 'Av. São Paulo', '5403', 'Centro', 'none', '0', '0', NULL, 'Tudo ok', 'Antonio', 'oneoutlet@oneoutlet.site', '+5513998766765', '2023-01-10', 'none', 1, '962408b7c249d14bf188f6de2553bdbea213857f1effe064550bc674173da43b', 2, '2023-01-10 22:56:29', '2023-01-10 22:56:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variants`
--

CREATE TABLE `variants` (
  `id` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `slug` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `variants`
--

INSERT INTO `variants` (`id`, `restaurant`, `item_id`, `name`, `price`, `slug`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Large', 60, 'large', '2022-10-24 06:32:33', '2022-10-24 06:32:33'),
(2, 2, 1, 'Medium', 40, 'medium', '2022-10-24 06:32:45', '2022-10-24 06:32:45'),
(3, 2, 1, 'Small', 20, 'small', '2022-10-24 06:32:57', '2022-10-24 06:32:57'),
(4, 5, 4, 'Large', 50, 'large', '2022-10-25 05:27:13', '2022-10-25 05:27:13'),
(5, 5, 4, 'Medium', 40, 'medium', '2022-10-25 05:27:28', '2022-10-25 05:27:28'),
(6, 5, 4, 'Small', 33, 'small', '2022-10-25 05:27:37', '2022-10-25 05:27:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_temp`
--
ALTER TABLE `admin_temp`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cart_item_id_foreign` (`item_id`) USING BTREE;

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `deliveryareas`
--
ALTER TABLE `deliveryareas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `privacypolicy`
--
ALTER TABLE `privacypolicy`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `systemaddons`
--
ALTER TABLE `systemaddons`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `table_book`
--
ALTER TABLE `table_book`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `temp_register`
--
ALTER TABLE `temp_register`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `timings`
--
ALTER TABLE `timings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `user_temp`
--
ALTER TABLE `user_temp`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_temp`
--
ALTER TABLE `admin_temp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `deliveryareas`
--
ALTER TABLE `deliveryareas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `extras`
--
ALTER TABLE `extras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `privacypolicy`
--
ALTER TABLE `privacypolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `systemaddons`
--
ALTER TABLE `systemaddons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `table_book`
--
ALTER TABLE `table_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `timings`
--
ALTER TABLE `timings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de la tabla `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `user_temp`
--
ALTER TABLE `user_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
