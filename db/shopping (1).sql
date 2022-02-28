-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 05:36 PM
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
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `card_num` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `cvv` int(10) NOT NULL,
  `expiry` varchar(20) NOT NULL,
  `balance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`card_num`, `name`, `cvv`, `expiry`, `balance`) VALUES
('1111111111111111', 'jishna', 111, '05/2022', '100'),
('4716108999716531', 'shajmil', 545, '03', '5');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(9, 'Women', 'Women cloth fashion', '2022-01-07 15:50:19', NULL),
(10, 'Kids', 'Kids cloth fashion', '2022-01-07 15:50:42', NULL),
(18, 'Wedding ', 'fgfhg', '2022-02-25 05:43:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  `information` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`, `information`) VALUES
(19, 1, '21', 1, '2022-01-02 16:38:06', 'COD', NULL, 'want'),
(20, 1, '21', 1, '2022-01-02 16:39:09', 'COD', NULL, 'want nice fit shirt for wedding dress color =Red'),
(21, 6, '3', 1, '2022-01-08 07:56:57', 'Internet Banking', NULL, ''),
(22, 6, '3', 1, '2022-01-08 07:59:15', 'Internet Banking', NULL, ''),
(23, 6, '2', 1, '2022-01-08 08:01:51', 'COD', NULL, ''),
(24, 5, '3', 1, '2022-01-08 09:23:21', NULL, NULL, ''),
(25, 8, '5', 1, '2022-02-23 08:49:32', 'Debit / Credit card', NULL, ''),
(26, 8, '18', 1, '2022-02-23 08:49:32', 'Debit / Credit card', NULL, ''),
(27, 8, '6', 2, '2022-02-23 09:03:41', 'Debit / Credit card', NULL, ''),
(28, 8, '2', 1, '2022-02-23 09:12:11', 'COD', NULL, ''),
(29, 8, '2', 1, '2022-02-23 10:32:01', 'COD', NULL, ''),
(30, 8, '10', 1, '2022-02-23 11:15:27', 'Debit / Credit card', NULL, ''),
(31, 8, '10', 1, '2022-02-23 11:22:14', 'COD', NULL, ''),
(32, 10, '15', 1, '2022-02-24 03:00:03', 'Debit / Credit card', 'Delivered', ''),
(33, 10, '6', 1, '2022-02-24 03:03:28', NULL, 'Delivered', ''),
(34, 8, '9', 1, '2022-02-25 03:02:47', 'Internet Banking', NULL, ''),
(35, 11, '6', 1, '2022-02-25 05:36:57', 'COD', NULL, ''),
(36, 11, '18', 1, '2022-02-25 05:36:57', 'COD', NULL, ''),
(37, 1, '6', 1, '2022-02-25 05:41:59', 'COD', NULL, ''),
(38, 8, '3', 1, '2022-02-26 12:34:13', 'Debit / Credit card', NULL, ''),
(39, 8, '18', 1, '2022-02-26 12:39:58', '', NULL, ''),
(40, 8, '21', 1, '2022-02-26 12:45:01', 'COD', NULL, ''),
(41, 8, '21', 1, '2022-02-26 12:45:14', 'COD', NULL, ''),
(42, 8, '10', 1, '2022-02-26 12:53:30', 'COD', NULL, ''),
(43, 8, '16', 1, '2022-02-26 12:54:58', 'Internet Banking', NULL, ''),
(44, 8, '20', 1, '2022-02-26 13:02:27', 'Debit / Credit card', NULL, ''),
(45, 8, '20', 1, '2022-02-26 15:23:13', 'Debit / Credit card', NULL, ''),
(46, 8, '20', 1, '2022-02-26 15:24:45', 'Debit / Credit card', NULL, ''),
(47, 8, '9', 2, '2022-02-26 15:29:53', 'Debit / Credit card', NULL, ''),
(48, 8, '5', 1, '2022-02-26 15:48:03', 'Debit / Credit card', NULL, ''),
(49, 8, '5', 1, '2022-02-26 15:49:03', 'Debit / Credit card', NULL, ''),
(50, 8, '9', 3, '2022-02-26 15:53:30', 'Debit / Credit card', NULL, ''),
(51, 8, '3', 1, '2022-02-26 15:59:04', 'Debit / Credit card', NULL, ''),
(52, 8, '3', 3, '2022-02-26 16:12:32', 'Debit / Credit card', NULL, ''),
(53, 8, '2', 1, '2022-02-26 16:18:08', 'Debit / Credit card', NULL, ''),
(54, 8, '18', 1, '2022-02-26 16:25:39', NULL, NULL, ''),
(55, 8, '18', 1, '2022-02-26 16:32:37', NULL, NULL, ''),
(56, 8, '18', 1, '2022-02-26 16:33:43', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 32, 'Delivered', 'fgfdg', '2022-02-24 03:21:10'),
(6, 33, 'in Process', 'done', '2022-02-24 03:22:43'),
(7, 33, 'Delivered', 'jakajnz', '2022-02-24 03:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 8, 2, 4, 2, 'iouiohij', 'jhggygyu', 'gyyghjgj', '2022-02-23 08:52:16'),
(6, 13, 1, 5, 0, 'niya', 'jjj', 'khj', '2022-02-24 03:48:15'),
(7, 13, 1, 5, 0, 'niya', 'jjj', 'khj', '2022-02-24 03:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(2, 9, 22, 'Indian Designer wear lehenga set', 'TCNS CLOTHING CO. LIMITED', 2500, 3000, '<span style=\"color: rgb(17, 17, 17); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;?????? Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, ????, Meiryo, &quot;?? ?????&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\">Designer Lehenga Set, Designer Sarees and Anarkali Suits. Hand Embroidered .&nbsp;</span><span style=\"color: rgb(17, 17, 17); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;?????? Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, ????, Meiryo, &quot;?? ?????&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\">Free Shipping Worldwide | Full&nbsp; Customisation&nbsp; | 4 Week Delivery | Shop Now</span><br>', '2.jpg', '4.jpg', '7.jpg', 0, 'In Stock', '2022-01-07 16:34:09', NULL),
(3, 9, 22, 'Party Wear for Women ', 'Zoeken.limited', 2999, 3200, '<span style=\"color: rgb(17, 17, 17); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;?????? Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, ????, Meiryo, &quot;?? ?????&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\">Drawing inspiration from the sun and life around us, this collective party wear is for those who light up any party or gathering with their energy. Indo western outfits</span><br>', '67.jpg', '6.jpg', '88.jpg', 0, 'In Stock', '2022-01-07 16:47:22', NULL),
(4, 9, 22, 'Edge : Skirts &Tops', 'TCNS CLOTHING CO. LIMITED', 2300, 2500, '<span style=\"color: rgb(17, 17, 17); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;?????? Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, ????, Meiryo, &quot;?? ?????&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\">Ethnic Wear Dresses Online Shopping for Womens Dresses.</span><br>', '47.jpg', '56.jpg', '78.jpg', 0, 'In Stock', '2022-01-07 16:55:21', NULL),
(5, 9, 22, 'Party Wear for Women ', 'Zoeken.limited', 2300, 3600, '<span style=\"color: rgb(17, 17, 17); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;?????? Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, ????, Meiryo, &quot;?? ?????&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px;\">Ethnic Wear Dresses Online Shopping for Womens Dresses</span><br>', '79.jpg', '887.jpg', '65.jpg', 0, 'In Stock', '2022-01-07 17:00:05', NULL),
(6, 9, 19, 'Gown fashion', 'Zoeken  CLOTHING CO. LIMITED', 2600, 3700, '<span style=\"box-sizing: border-box; font-family: Roboto, sans-serif; color: rgb(17, 17, 17); font-size: 14px;\">&nbsp;</span><span style=\"box-sizing: border-box; font-family: Roboto, sans-serif; color: rgb(17, 17, 17); font-size: 14px;\">Hand Embroidered&nbsp;| Free Shipping Worldwide | Full&nbsp; Customisation&nbsp; | 4 Week Delivery | Shop Now</span><br>', '2db98885e26fdb8d4e91fa7931e7d895.jpg', '2db98885e26fdb8d4e91fa79631e7d895 (1).jpg', '757e58a942ff3cf345778a590d99469e.jpg', 0, 'In Stock', '2022-01-08 06:01:06', NULL),
(7, 9, 19, 'Self Design Satin Blend Stitched Flared/A-line Gown ', 'Mozila  .limited', 600, 1000, '<div class=\"col col-3-12 _2H87wv\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 187.413px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135); font-size: 14px; font-family: Roboto, Arial, sans-serif;\">Style Code</div><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">NTSLDRNVBL005</span><div><div class=\"col col-3-12 _2H87wv\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 187.413px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135); font-size: 14px; font-family: Roboto, Arial, sans-serif;\">Neck</div><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">Sweetheart Neck</span></div><div><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><br></span></div><div><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">There might be little shade variation between actual product and image shown on the screen due to photography effect</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><br></span></div>', '0-free-sleeveless-stitched-ntsldrnvbl005-mozila-0-original-imafxt9hp6nyhnef.jpg', '0-free-sleeveless-stitched-ntsldrnvbl005-mozila-0-original-imafxt9hkrnsehap.jpg', '0-free-sleeveless-stitched-ntsldrnvbl705-mozila-0-original-imafxt9hp6nyhnef.jpg', 0, 'In Stock', '2022-01-08 06:11:01', NULL),
(8, 9, 19, 'Embroidered Silk Blend Semi Stitched Anarkali Gown', 'TCNS CLOTHING CO. LIMITED', 999, 1500, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Embroidered Silk Blend Semi Stitched Anarkali Gown.</span><div><div class=\"col col-3-12 _2H87wv\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 187.413px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135); font-size: 14px; font-family: Roboto, Arial, sans-serif;\">Style Code</div><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">MNKBD005</span></div><div><div class=\"row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 749.662px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><div class=\"col col-3-12 _2H87wv\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 187.413px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Occasion</div><div class=\"col col-9-12 _2vZqPX\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 562.237px; display: inline-block; vertical-align: top;\">Party &amp; Festive</div></div><div class=\"row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 749.662px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><div class=\"col col-3-12 _2H87wv\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 187.413px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Neck</div><div class=\"col col-9-12 _2vZqPX\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 562.237px; display: inline-block; vertical-align: top;\">Round Neck</div></div></div>', 'no-free-mnkbg004-aaishvi-no-original-imaf6kfb4huaexrdd.jpg', 'no-free-mnkbg004-aaishvi-no-original-imafkfb4huaexrdd.jpg', 'no-free-mnkbg004-aaishvi-no-original8imafkfb4huaexrdd.jpg', 0, 'In Stock', '2022-01-08 06:15:40', NULL),
(9, 9, 19, 'Gown fashion', 'Mozila  .limited', 2300, 2500, '<span style=\"box-sizing: border-box; font-family: Roboto, sans-serif; color: rgb(17, 17, 17); font-size: 14px;\">&nbsp;Hand Embroidered .&nbsp;</span><span style=\"box-sizing: border-box; font-family: Roboto, sans-serif; color: rgb(17, 17, 17); font-size: 14px;\">Free Shipping Worldwide | Full&nbsp; Customisation&nbsp; | 4 Week Delivery | Shop Now</span><br>', '460893c7222ab52f564cd342c20d7669.jpg', '460893c7222ab52f564cd342c20d7869 (1).jpg', '460893c7222ab52f568cd342c20d7669 (1).jpg', 0, 'In Stock', '2022-01-08 06:29:02', NULL),
(10, 9, 19, 'Gown ', 'pravathy chankramath.limted', 2300, 2500, '<span style=\"box-sizing: border-box; font-family: Roboto, sans-serif; color: rgb(17, 17, 17); font-size: 14px;\">Free Shipping Worldwide | Full&nbsp; Customisation&nbsp; | 4 Week Delivery | Shop Now</span><br>', 'a4335db88bb262999baf90529d5af66 (1).jpg', 'a4335db88bb262999abaf90529daf66 (1).jpg', 'a4335db88bb262999abaf90529d5af66.jpg', 0, 'In Stock', '2022-01-08 06:33:22', NULL),
(12, 9, 19, 'Latest Model Designer Half Saree Patterns ', 'TCNS CLOTHING CO. LIMITED', 2500, 3700, '<a class=\"Wk9 xQ4 CCY czT eEj kVc\" href=\"https://i.pinimg.com/originals/e2/32/44/e23244225a6bd2318c11f00067458c8e.jpg\" rel=\"noopener noreferrer nofollow\" target=\"_blank\" style=\"transition: transform 85ms ease-out 0s; color: rgb(68, 68, 68); outline: 0px; display: block; border-radius: 0px; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;?????? Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, ????, Meiryo, &quot;?? ?????&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 12px; font-weight: 700;\"><h1 class=\"lH1 dyH iFc mWe ky3 pBj zDA IZT\" style=\"margin-bottom: 0px; font-size: var(--g-heading-font-size-3); color: var(--g-colorGray300); -webkit-font-smoothing: antialiased; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;?????? Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, ????, Meiryo, &quot;?? ?????&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; overflow-wrap: break-word;\">Latest Model Designer Half Saree Patterns&nbsp;</h1><div><br></div><div><span style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 14px; font-weight: 400;\">Free Shipping Worldwide | Full&nbsp; Customisation&nbsp; | 4 Week Delivery | Shop Now</span><br></div></a>', 'e23244225a6bd2318c11f00067458c8e.jpg', 'e23244225a6bd2318c11f0006748c8e (1).jpg', 'e23244225a6bd2318c1f00067458c8e (1).jpg', 0, 'In Stock', '2022-01-08 06:45:23', NULL),
(13, 9, 22, 'Edge : Skirts &Tops', 'TCNS CLOTHING CO. LIMITED', 1200, 2500, '<span style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 14px;\">Free Shipping Worldwide | Full&nbsp; Customisation&nbsp; | 4 Week Delivery | Shop Now</span><br>', 'bc5a9de2c4d79a191c4ef141b352dbed (2).jpg', 'bc5a9de2c4d79a191c4ef141b352dbed (3).jpg', 'bc5a9de2c4d79a191c4ef141b352dbed.jpg', 0, 'In Stock', '2022-01-08 06:49:07', NULL),
(14, 9, 23, 'Women Red Solid Anarkali Kurta', 'Sangria.limited', 1649, 2999, '<span style=\"color: rgb(40, 44, 63); font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Red solid anarkali kurta, has a mandarin collar, long sleeves, flared hem</span><br>', 'f82a09ff-1ed2-4aab-9109-3ba97.jpg', '9b8633a1-b051-432f-83cc-949af22a79841617706880001-Sangria-Women-Red-Solid-Anarkali-Kurta-8711617706878825-2.jpg', '3f6049f0-99eb-4282-9d50-43ea8a9c7ed41617706879979-Sangria-Women-Red-Solid-Anarkali-Kurta-8711617706878825-3.jpg', 0, 'In Stock', '2022-01-08 06:59:43', NULL),
(15, 9, 23, 'Women Coral Floral Embroidered Thread Work Kurta', 'Varanga', 899, 2999, '<ul style=\"box-sizing: inherit; list-style: none; margin-left: 0px; color: rgb(40, 44, 63); font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"box-sizing: inherit;\">Colour: coral</li><li style=\"box-sizing: inherit;\">Floral embroidered</li><li style=\"box-sizing: inherit;\">Round neck</li><li style=\"box-sizing: inherit;\">Three-quarter, regular sleeves</li><li style=\"box-sizing: inherit;\">A-line shape with regular style</li><li style=\"box-sizing: inherit;\">Thread work detail</li><li style=\"box-sizing: inherit;\">Calf length with straight hem</li><li style=\"box-sizing: inherit;\">Machine weave regular silk</li></ul>', '296b218b-3102-4314-8048-e570819d94f31629971409858VarangaCoralGotaPattiKurtaWithGotaEmbellishmantOnSleeves1.jpg', '41f42d3b-28d9-452a-9a97-fff7cdab1fa51629971409581VarangaCoralGotaPattiKurtaWithGotaEmbellishmantOnSleeves2.jpg', '1fed74e8-733a-47a0-b304-add59c120d061629971409202VarangaCoralGotaPattiKurtaWithGotaEmbellishmantOnSleeves3.jpg', 0, 'In Stock', '2022-01-08 07:03:56', NULL),
(16, 9, 23, 'Women Purple Woven Design Straight Kurta', ' Inddus', 967, 2199, '<span style=\"color: rgb(40, 44, 63); font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Purple woven design straight kurta, has a boat neck, three-quarter sleeves, straight hem, and side slits.</span><div><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); font-size: medium; margin-bottom: 0px; font-weight: 500; text-transform: capitalize; border: none; padding-bottom: 5px; font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Material &amp; Care</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); line-height: 1.4; font-size: medium; margin-bottom: 0px; width: 526.075px; font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Material: Art Silk<br style=\"box-sizing: inherit;\">Dry Clean</p><div><span style=\"color: rgb(40, 44, 63); font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><br></span></div></div>', '0f1076fe-789b-41fa-b355-9f87551342681607079409935-Inddus-Women-Kurtas-3701607079408043-4.jpg', '04561cc0-33c3-4558-8110-90fe279692e31607079410015-Inddus-Women-Kurtas-3701607079408043-2.jpg', '6731c8e9-ad0e-4005-b1bd-c4c2d03c79591607079410060-Inddus-Women-Kurtas-3701607079408043-1.jpg', 0, 'In Stock', '2022-01-08 07:08:10', NULL),
(17, 9, 23, 'Women Pink Embroidered A-Line Kurta', 'Inddus', 1664, 4499, '<span style=\"color: rgb(40, 44, 63); font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Pink embroidered A-line kurta, has a boat neck, short sleeves, and flared hem.</span><br>', '6b212905-7fe5-4611-abcd-e3138ad9b8071607076566624-Inddus-Women-Kurtas-4961607076564861-1.jpg', '6ab1621a-5494-4f65-9249-548c58befdfe1607076566581-Inddus-Women-Kurtas-4961607076564861-2.jpg', 'd96285b0-4092-404d-a33e-1029b64c83441607076566540-Inddus-Women-Kurtas-4961607076564861-3.jpg', 0, 'In Stock', '2022-01-08 07:12:24', NULL),
(18, 10, 27, 'Girls Purple Embroidered Maxi Dress', 'Girls Purple Embroidered Maxi Dress', 899, 2499, '<div style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;\"><p class=\"pdp-product-description-content\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); line-height: 1.4; font-size: 16px; margin-top: 12px; width: 491px;\">Purple embroidered knitted maxi dress, has a round neck, sleeveless, zip closure, an attached lining, and flared hem</p></div><div class=\"pdp-sizeFitDesc\" style=\"box-sizing: inherit; border: none; margin-top: 12px; color: rgb(0, 0, 0); font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); margin-bottom: 0px; font-weight: 500; text-transform: capitalize; border: none; padding-bottom: 5px;\">Material &amp; Care</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); line-height: 1.4; font-size: 16px; margin-bottom: 0px; width: 526.075px;\">Material: Liva<br style=\"box-sizing: inherit;\">Hand Wash</p></div>', '0d9552d3-b999-40fd-8396-8ddf58b971521605728312256-1.jpg', '2e22133a-8eae-4fae-b60a-5b92b0e71d401605728312323-2.jpg', 'ddb68c13-23f5-4b23-a6bf-901e765da79a1605728312379-3.jpg', 0, 'In Stock', '2022-01-08 07:18:41', NULL),
(19, 10, 27, 'Girls Green Embellished Maxi Dress', 'Aarika', 659, 1999, '<div style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;\"><p class=\"pdp-product-description-content\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); line-height: 1.4; font-size: 16px; margin-top: 12px; width: 491px;\">Green and Navy Blue embellished knitted maxi dress, has a round neck, sleeveless, concealed zip closure, an attached lining, and flared hem</p></div><div class=\"pdp-sizeFitDesc\" style=\"box-sizing: inherit; border: none; margin-top: 12px; color: rgb(0, 0, 0); font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); margin-bottom: 0px; font-weight: 500; text-transform: capitalize; border: none; padding-bottom: 5px;\">Material &amp; Care</h4><p class=\"pdp-sizeFitDescContent pdp-product-description-content\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); line-height: 1.4; font-size: 16px; margin-bottom: 0px; width: 526.075px;\">Material: Nylon<br style=\"box-sizing: inherit;\">Hand Wash</p></div>', '16591932-6594-424d-ac1f-ca212e9c953b1586253855260AarikaGirlsGreenEmbellishedMaxiDress1.jpg', '8c55be45-4193-4f6f-938b-6b2660d4e7331586253855324AarikaGirlsGreenEmbellishedMaxiDress2.jpg', 'b914784a-fd21-4a1c-99b6-cc5a023264c11586253855381AarikaGirlsGreenEmbellishedMaxiDress3.jpg', 0, 'In Stock', '2022-01-08 07:21:47', NULL),
(20, 10, 27, 'Girls Pink Solid Satin Maxi Dress', 'Kidling', 899, 2499, '<div style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;\"><p class=\"pdp-product-description-content\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); line-height: 1.4; font-size: 16px; margin-top: 12px; width: 491px;\">Pink solid woven maxi dress, has a mock neck, sleeveless, concealed zip closure, and flared hem</p></div><div class=\"pdp-sizeFitDesc\" style=\"box-sizing: inherit; border: none; margin-top: 12px; color: rgb(0, 0, 0); font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;\"><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); font-size: medium; margin-bottom: 0px; font-weight: 500; text-transform: capitalize; border: none; padding-bottom: 5px; font-family: Whitney, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif;\">Material &amp; Care</h4><h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); margin-bottom: 0px; font-weight: 500; text-transform: capitalize; border: none; padding-bottom: 5px;\"><p class=\"pdp-sizeFitDescContent pdp-product-description-content\" style=\"box-sizing: inherit; line-height: 1.4; font-size: medium; margin-bottom: 0px; width: 526.075px; text-transform: none;\">Material: Satin&nbsp;<br style=\"box-sizing: inherit;\">Hand Wash</p></h4></div>', '02e1823a-26f3-49b0-a8d3-64f2bf0075a31581975134595-1.jpg', '63e084e1-6c97-4edb-987f-2a70f32bfdc91581975134708-4.jpg', 'dec845c7-fa90-4faa-870b-161f828a6b7b1581975134631-2.jpg', 0, 'In Stock', '2022-01-08 07:25:21', NULL),
(21, 10, 27, 'Casual Frock', 'ARK DRESSES', 698, 900, 'Girls frock/Knee Length Casual Dress<div>(White ,Fashion&nbsp; Sleeve)</div>', 'IMG-20220221-WA0004.jpg', 'IMG-20220221-WA0005.jpg', 'IMG-20220221-WA0006.jpg', 0, 'In Stock', '2022-02-21 11:17:41', NULL),
(22, 10, 27, 'Baby Girls', 'Rania Dresses', 890, 1000, 'Festive/Wedding Dress (Pink, sleeve)<div>Type&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Fit and Flare Dress</div><div>Occasion&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Festive/Wedding</div><div>Primary color&nbsp; &nbsp; &nbsp; &nbsp; PINK</div><div>Fabric&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Net<br><div><br><div><br></div></div></div>', 'IMG-20220221-WA0007.jpg', 'IMG-20220221-WA0008.jpg', 'IMG-20220221-WA0009.jpg', 0, 'Out of Stock', '2022-02-21 11:25:38', NULL),
(23, 9, 22, 'Women Top and Skirt Set Crepe', 'THE FAB FACTORY', 1450, 2499, 'Fabric&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Crepe<div>Type&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Top and Skirt Set</div><div>Pattern&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Printed</div>', 'IMG-20220221-WA0010.jpg', 'IMG-20220221-WA0011.jpg', 'IMG-20220221-WA0012.jpg', 0, 'In Stock', '2022-02-21 11:31:10', NULL),
(24, 9, 22, 'Women top and skirt set', 'Alasha', 999, 2599, 'TOP AND SKIRT SET', 'IMG-20220221-WA0013.jpg', 'IMG-20220221-WA0014.jpg', 'IMG-20220221-WA0015.jpg', 0, 'In Stock', '2022-02-21 11:39:18', NULL),
(25, 9, 19, 'Party Wear', 'Alankrita Collection', 930, 1999, 'Georgette Blend Stitched Anarkali Gown (pink)<div>Occasion&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Party &amp; Festive</div><div><br></div>', 'IMG-20220221-WA0016.jpg', 'IMG-20220221-WA0017.jpg', 'IMG-20220221-WA0018.jpg', 0, 'In Stock', '2022-02-21 11:45:32', NULL),
(26, 9, 19, 'Embroidered Gown', 'Fashion Web', 825, 2999, 'Embroidered Gown<br>', 'IMG-20220221-WA0019.jpg', 'IMG-20220221-WA0020.jpg', 'IMG-20220221-WA0021.jpg', 0, 'Out of Stock', '2022-02-21 11:50:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(19, 9, 'Gown', '2022-01-07 16:00:35', NULL),
(22, 9, 'Skirts & Tops', '2022-01-07 16:20:49', NULL),
(23, 9, 'Kurtas', '2022-01-08 06:35:17', NULL),
(25, 9, 'Saree', '2022-01-08 06:35:40', NULL),
(27, 10, 'Frock', '2022-01-08 06:38:02', NULL),
(30, 18, 'fghf', '2022-02-25 05:44:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'fredyd900@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-02 06:06:01', NULL, 1),
(25, 'jincyjerom25@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-04 10:30:28', NULL, 0),
(26, 'jincy@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-08 07:42:14', '08-01-2022 01:12:20 PM', 1),
(27, 'jincy@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-08 07:43:36', '08-01-2022 01:14:50 PM', 1),
(28, 'sneha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-08 07:45:45', NULL, 0),
(29, 'sneha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-08 07:46:03', NULL, 0),
(30, 'sneha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-08 07:47:40', NULL, 1),
(31, 'jincy@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-08 09:23:04', NULL, 1),
(32, 'jincy@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-17 07:02:23', NULL, 1),
(33, 'jincyjerom25@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 08:41:30', NULL, 0),
(34, 'jishnarosh555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 08:44:22', NULL, 0),
(35, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 08:45:34', '23-02-2022 02:28:27 PM', 1),
(36, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 08:58:59', NULL, 1),
(37, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 09:11:53', NULL, 1),
(38, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 10:31:40', NULL, 1),
(39, 'shona@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 16:42:34', '23-02-2022 10:38:13 PM', 1),
(40, 'shona@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 17:11:18', NULL, 1),
(41, 'jincy123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 02:54:03', NULL, 0),
(42, 'jincy123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 02:54:30', NULL, 0),
(43, 'appu123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 02:55:18', NULL, 0),
(44, 'appu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 02:55:36', '24-02-2022 08:47:23 AM', 1),
(45, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 03:18:01', '24-02-2022 09:01:16 AM', 1),
(46, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 03:34:26', NULL, 1),
(47, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 03:47:35', '24-02-2022 09:25:53 AM', 1),
(48, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 04:29:26', NULL, 1),
(49, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-25 03:01:02', NULL, 1),
(50, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-25 03:39:15', '25-02-2022 09:11:21 AM', 1),
(51, 'namitha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-25 05:32:05', NULL, 1),
(52, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-26 12:25:09', '26-02-2022 05:56:34 PM', 1),
(53, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-26 12:31:53', '26-02-2022 08:59:28 PM', 1),
(54, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-26 15:29:33', '26-02-2022 09:28:43 PM', 1),
(55, 'jishnarosh5555@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-26 15:58:48', '26-02-2022 10:05:36 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'Fredy Daniel', 'fredyd900@gmail.com', 9656829642, '24b48b2338ae01a78aeba90957f3408d', 'rtyry', 'uytu', 'tyutut', 0, 'tyjtu', 'tyu', 'yutut', 0, '2022-01-02 06:04:58', NULL),
(5, 'jincy', 'jincy@gmail.com', 9988567404, '764ae3a901cf639f5925e9aa26fc83dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-08 07:41:53', NULL),
(6, 'sneha', 'sneha@gmail.com', 9895678923, 'e26bfda67f49ca1fc48f9b51003a5910', NULL, NULL, NULL, NULL, 'Thozhuthumparambil (h)', 'Kerala', 'Ernakulam', 682502, '2022-01-08 07:45:27', NULL),
(7, 'jishna', 'jishna123@gamil.com', 9988567404, '764ae3a901cf639f5925e9aa26fc83dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-23 08:42:25', NULL),
(8, 'jishna roshy', 'jishnarosh5555@gmail.com', 8565983268, '3c1bc560935fde1f6f86d235a330c88e', 'vadakkethalkkal house\r\np.o perinjanam,thrissur,kerala,680686', 'kerala', 'thrissur', 680686, 'vadakkethalkkal house\r\np.o perinjanam,thrissur,kerala,680686', 'kerala', 'thrissur', 680686, '2022-02-23 08:43:51', NULL),
(9, 'shona', 'shona@gmail.com', 9988567404, '6e513cd46304521ea0aa946d6f249678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-23 16:41:48', NULL),
(10, 'appu', 'appu@gmail.com', 6532981478, '622622b00805c54040dd9a15674a5117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-24 02:54:56', NULL),
(11, 'namitha', 'namitha@gmail.com', 4515845854, '4d6c57324bebe9e244be3e1faf150a97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-25 05:31:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 5, 3, '2022-01-08 07:43:46'),
(3, 5, 15, '2022-01-08 07:43:55'),
(4, 6, 2, '2022-01-08 07:47:53'),
(5, 6, 15, '2022-01-08 07:47:59'),
(6, 6, 18, '2022-01-08 07:48:05'),
(9, 10, 9, '2022-02-24 02:56:09'),
(10, 8, 2, '2022-02-24 03:38:53'),
(11, 1, 2, '2022-02-25 05:45:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`card_num`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
