-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 08:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbadmin`
--

CREATE TABLE `tbadmin` (
  `fld_id` int(10) NOT NULL,
  `fld_username` varchar(30) NOT NULL,
  `fld_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbadmin`
--

INSERT INTO `tbadmin` (`fld_id`, `fld_username`, `fld_password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tbfood`
--

CREATE TABLE `tbfood` (
  `food_id` bigint(11) NOT NULL,
  `fldvendor_id` int(11) NOT NULL,
  `foodname` varchar(100) NOT NULL,
  `cost` bigint(15) NOT NULL,
  `cuisines` varchar(50) NOT NULL,
  `paymentmode` varchar(50) NOT NULL,
  `fldimage` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbfood`
--

INSERT INTO `tbfood` (`food_id`, `fldvendor_id`, `foodname`, `cost`, `cuisines`, `paymentmode`, `fldimage`) VALUES
(3, 22, 'shahi panner', 20, 'vegetable', 'COD', 'Shahi-Paneer-Recipe.jpg'),
(4, 22, 'chola kulcha', 100, 'lunch', 'COD', 'maxresdefault.jpg'),
(5, 23, 'Pizza', 100, 'Medium Size, fast food', 'COD', 'phut_0.jpg'),
(6, 23, 'Pizza Full', 300, 'Fast food,full size', 'COD', 'phut_0.jpg'),
(7, 23, 'burger ', 50, 'Fast food', 'COD', 'photo-1534790566855-4cb788d389ec.jpg'),
(8, 25, 'Chiken burger', 180, 'secret', 'COD', 'Chicken_Burger-scaled-e1624614963511.jpg'),
(9, 25, 'BBQ burger', 250, 'Secret', 'COD', '4023531.jpg'),
(10, 25, 'Naga drums', 300, 'Secret', 'COD', 'chillox_banani_naga_drums_thumbnail_1615271375203.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `fld_cart_id` bigint(10) NOT NULL,
  `fld_product_id` bigint(11) NOT NULL,
  `fld_customer_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcart`
--

INSERT INTO `tblcart` (`fld_cart_id`, `fld_product_id`, `fld_customer_id`) VALUES
(3, 6, 'customer1@gmail.com'),
(4, 3, 'customer1@gmail.com'),
(5, 5, 'customer2@gmail.com'),
(6, 6, 'customer2@gmail.com'),
(7, 5, 'customer2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `fld_cust_id` int(10) NOT NULL,
  `fld_name` varchar(30) NOT NULL,
  `fld_email` varchar(50) NOT NULL,
  `fld_mobile` char(11) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`fld_cust_id`, `fld_name`, `fld_email`, `fld_mobile`, `password`) VALUES
(1, 'gajender', 'customer1@gmail.com', '7503515382', 'customer1'),
(2, 'sanjay', 'customer2@gmail.com', '7503515386', 'customer2'),
(3, 'saana', 'customer3@gmail.com', '7503515383', 'customer3'),
(0, 'Sarwer', 'sarwer@gmail.com', '01689271421', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `fld_msg_id` int(10) NOT NULL,
  `fld_name` varchar(50) NOT NULL,
  `fld_email` varchar(50) NOT NULL,
  `fld_phone` bigint(10) DEFAULT NULL,
  `fld_msg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`fld_msg_id`, `fld_name`, `fld_email`, `fld_phone`, `fld_msg`) VALUES
(1, 'Sarwer', 'customer3@gmail.com', 7503515386, 'Hello World'),
(2, 'H.M. Sarwer Alam', 'Sarweralam867@gmail.com', 1689271421, 'Tata bye bye'),
(3, 'H.M. Sarwer Alam', 'Sarweralam867@gmail.com', 1689271421, 'hahahaha');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `fld_order_id` int(10) NOT NULL,
  `fld_cart_id` bigint(10) NOT NULL,
  `fldvendor_id` bigint(10) DEFAULT NULL,
  `fld_food_id` bigint(10) DEFAULT NULL,
  `fld_email_id` varchar(50) DEFAULT NULL,
  `fld_payment` varchar(20) DEFAULT NULL,
  `fldstatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`fld_order_id`, `fld_cart_id`, `fldvendor_id`, `fld_food_id`, `fld_email_id`, `fld_payment`, `fldstatus`) VALUES
(1, 1, 21, 1, 'customer3@gmail.com', '50', 'Delivered'),
(2, 2, 22, 3, 'customer3@gmail.com', '20', 'Delivered'),
(4, 10, 22, 3, 'customer3@gmail.com', '20', 'In Process'),
(5, 11, 25, 9, 'sarwer@gmail.com', '250', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `tblvendor`
--

CREATE TABLE `tblvendor` (
  `fldvendor_id` int(10) NOT NULL,
  `fld_name` varchar(30) NOT NULL,
  `fld_email` varchar(50) NOT NULL,
  `fld_password` varchar(50) NOT NULL,
  `fld_mob` char(11) NOT NULL,
  `fld_phone` char(11) NOT NULL,
  `fld_address` varchar(50) NOT NULL,
  `fld_logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvendor`
--

INSERT INTO `tblvendor` (`fldvendor_id`, `fld_name`, `fld_email`, `fld_password`, `fld_mob`, `fld_phone`, `fld_address`, `fld_logo`) VALUES
(22, 'Hotel Raddison', 'vendor1@gmail.com', 'vendor1', '7503515386', '114565457', 'noida', '46388969.jpg'),
(23, 'Hotel Picasso', 'vendor2@gmail.com', 'vendor2', '7503515385', '114565457', 'C-33, SWARN PARK, MUNDKA', '46388969.jpg'),
(25, 'Chillox', 'chillox@gmail.com', '123', '01600000000', '01700000000', 'Dhanmondi Dhaka', 'package_60.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbadmin`
--
ALTER TABLE `tbadmin`
  ADD PRIMARY KEY (`fld_id`);

--
-- Indexes for table `tbfood`
--
ALTER TABLE `tbfood`
  ADD PRIMARY KEY (`food_id`),
  ADD KEY `fldvendor_id` (`fldvendor_id`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`fld_cart_id`),
  ADD KEY `fld_product_id` (`fld_product_id`),
  ADD KEY `fld_customer_id` (`fld_customer_id`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`fld_email`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`fld_msg_id`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`fld_order_id`),
  ADD KEY `fldvendor_id` (`fldvendor_id`);

--
-- Indexes for table `tblvendor`
--
ALTER TABLE `tblvendor`
  ADD PRIMARY KEY (`fldvendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbadmin`
--
ALTER TABLE `tbadmin`
  MODIFY `fld_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbfood`
--
ALTER TABLE `tbfood`
  MODIFY `food_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `fld_cart_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `fld_msg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `fld_order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvendor`
--
ALTER TABLE `tblvendor`
  MODIFY `fldvendor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbfood`
--
ALTER TABLE `tbfood`
  ADD CONSTRAINT `tbfood_ibfk_1` FOREIGN KEY (`fldvendor_id`) REFERENCES `tblvendor` (`fldvendor_id`);

--
-- Constraints for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD CONSTRAINT `customer_rel` FOREIGN KEY (`fld_customer_id`) REFERENCES `tblcustomer` (`fld_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_rel` FOREIGN KEY (`fld_product_id`) REFERENCES `tbfood` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
