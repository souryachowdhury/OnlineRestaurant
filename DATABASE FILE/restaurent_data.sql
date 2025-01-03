-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2023 at 08:03 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `onlinefoodphp`
--
-- --------------------------------------------------------
--
-- Table structure for table `admin`
--
CREATE TABLE `admin` (
  `adm_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `admin`
--
INSERT INTO
  `admin` (
    `adm_id`,
    `username`,
    `password`,
    `email`,
    `code`,
    `date`
  )
VALUES
  (
    1,
    'onlineR,',
    '#or789',
    'admin@gmail.com',
    '',
    '2023-02-22 07:18:13'
  );

-- --------------------------------------------------------
--
-- Table structure for table `dishes`
--
CREATE TABLE `dishes` (
  `d_id` int NOT NULL,
  `rs_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `dishes`
--
INSERT INTO
  `dishes` (
    `d_id`,
    `rs_id`,
    `title`,
    `slogan`,
    `price`,
    `img`
  )
VALUES
  (
    1,
    1,
    'Cheese Macaroni Pizza',
    'Cheese Macaroni Pizza combines gooey cheese, creamy macaroni, and a crispy crust—creating a comforting fusion that’s perfect for pasta and pizza lovers!',
    '249.00',
    'food1.jpeg'
  ),
  (
    2,
    1,
    'Chicken 65',
    'Chicken 65 is a spicy, deep-fried South Indian appetizer made with marinated chicken, curry leaves, and chilies, bursting with bold flavors.',
    '350.00',
    'food2.jpeg'
  ),
  (
    3,
    4,
    'Chicken Biryani',
    'Chicken Biryani is a fragrant rice dish layered with marinated chicken, aromatic spices, and herbs, offering rich, flavorful bites in every spoonful.',
    '325.00',
    'food3.jpeg'
  ),
  (
    4,
    1,
    'Bacon Cheese Fillet Burger',
    'The Bacon Cheese Fillet Burger combines a crispy chicken fillet, smoky bacon, melted cheese, and fresh toppings for a savory, satisfying bite.',
    '309.00',
    'food4.jpeg'
  ),
  (
    5,
    2,
    'Vegetable Fried Rice',
    'Veg fried rice is a savory dish of stir-fried rice with fresh vegetables, soy sauce, and spices, offering a delightful flavor blend.',
    '190.00',
    'foods5.jpeg'
  ),
  (
    6,
    2,
    'Chana Kathi Rolls',
    'Chana Kathi Rolls are flavorful wraps filled with spiced chickpeas, onions, and chutneys, rolled in soft parathas for a satisfying bite.',
    '99.00',
    'food6.jpeg'
  ),
  (
    7,
    2,
    'North Indian Thali',
    'A North Indian thali is a platter featuring flavorful curries, dal, roti, rice, pickles, yogurt, and sweets, offering a balanced meal.',
    '449.00',
    'food7.jpeg'
  ),
  (
    8,
    2,
    'Veg Hakka Noodles',
    'Veg Hakka Noodles is a flavorful Indo-Chinese dish featuring stir-fried noodles tossed with fresh vegetables, soy sauce, and aromatic spices.',
    '160.00',
    'food8.jpeg'
  ),
  (
    9,
    3,
    'Paneer Butter Masala',
    'Paneer Butter Masala is a rich, creamy North Indian curry featuring soft paneer cubes simmered in a buttery, spiced tomato gravy.',
    '280.00',
    'food9.jpeg'
  ),
  (
    10,
    3,
    'Prawn Malai Curry',
    'Prawn Malai Curry is a Bengali delicacy of prawns simmered in coconut milk, mustard oil, and aromatic spices, creating creamy perfection.',
    '575.00',
    'food10.jpeg'
  ),
  (
    11,
    3,
    'Chargrilled fish',
    'Chargrilled fish is a smoky, flavorful dish where marinated fish is grilled over an open flame, sealing in rich, savory spices.',
    '300.00',
    'food11.jpeg'
  ),
  (
    12,
    3,
    'South Indian Thali',
    'A South Indian thali features dosa, idly, vada, chutneys, sambar, and more, offering a flavorful and wholesome meal experience.',
    '330.00',
    'food12.jpeg'
  ),
  (
    13,
    4,
    'Mutton Rogan Josh',
    'Mutton Rogan Josh is a rich, aromatic curry with tender mutton, cooked in a blend of spices and yogurt.',
    '470.00',
    'food13.jpeg'
  ),
  (
    14,
    4,
    'Chicken Breast Salad',
    'A fresh, healthy salad with grilled chicken breast, mixed greens, veggies, and a light dressing, offering a nutritious, flavorful meal.',
    '285.00',
    'food14.jpeg'
  ),
  (
    15,
    4,
    'Mixed Vegetables',
    'Mixed vegetables are a colorful blend of various vegetables, cooked together with spices, offering a healthy, flavorful dish.',
    '220.00',
    'food15.jpeg'
  ),
  (
    16,
    4,
    'Chicken Sausage',
    'Chicken sausage is a savory, seasoned sausage made from minced chicken, spices, and herbs, typically grilled, pan-fried, or steamed.',
    '270.00',
    'food16.jpeg'
  );

-- --------------------------------------------------------
--
-- Table structure for table `remark`
--
CREATE TABLE `remark` (
  `id` int NOT NULL,
  `frm_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
-- Table structure for table `restaurant`
--
CREATE TABLE `restaurant` (
  `rs_id` int NOT NULL,
  `c_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `restaurant`
--
INSERT INTO
  `restaurant` (
    `rs_id`,
    `c_id`,
    `title`,
    `email`,
    `phone`,
    `url`,
    `o_hr`,
    `c_hr`,
    `o_days`,
    `address`,
    `image`,
    `date`
  )
VALUES
  (
    1,
    1,
    'Saffron Delight',
    'safdel@gmail.com',
    '9585478610',
    'www.saffrondelight.com',
    '10am',
    '10pm',
    'Mon-Sun',
    '11/C Aroma Lane, Kolkata, West Bengal',
    'res 1.jpeg',
    '2024-11-12 03:57:13'
  ),
  (
    2,
    2,
    'Tandoor Tales',
    'tantale@gmail.com',
    '9874563210',
    'www.tandoortales.com',
    '10am',
    '10pm',
    'Mon-Sun',
    '8/A Galva Street, Mumbai, Maharashtra',
    'res 5.jpeg',
    '2024-11-12 03:45:57'
  ),
  (
    3,
    3,
    'Masala Magic',
    'masmagy@gmail.com',
    '8547963210',
    'www.masalamagic.com',
    '10am',
    '10pm',
    'Mon-Sun',
    '15/D Heritage Road, Chennai, Tamilnad',
    'res 3.jpeg',
    '2024-11-12 03:57:33'
  ),
  (
    4,
    4,
    'Curry Kingdom',
    'cyking@gmail.com',
    '8647593201',
    'www.currykingdom.com',
    '10am',
    '10pm',
    'Mon-Sun',
    '22/B Wings Circle, Lotus Avenue, New Delhi',
    'res 4.jpeg',
    '2024-11-12 03:52:54'
  );

-- --------------------------------------------------------
--
-- Table structure for table `res_category`
--
CREATE TABLE `res_category` (
  `c_id` int NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data for table `res_category`
--
INSERT INTO
  `res_category` (`c_id`, `c_name`, `date`)
VALUES
  (1, 'Kolkata', '2024-11-12 04:06:38'),
  (2, 'Mumbai', '2024-11-12 04:07:00'),
  (3, 'Chennai', '2024-11-12 04:07:10'),
  (4, 'Delhi', '2024-11-12 04:07:45');

-- --------------------------------------------------------
--
-- Table structure for table `users`
--
CREATE TABLE `users` (
  `u_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
-- Table structure for table `users_orders`
--
CREATE TABLE `users_orders` (
  `o_id` int NOT NULL,
  `u_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Indexes for dumped tables
--
--
-- Indexes for table `admin`
--
ALTER TABLE
  `admin`
ADD
  PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE
  `dishes`
ADD
  PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE
  `remark`
ADD
  PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE
  `restaurant`
ADD
  PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE
  `res_category`
ADD
  PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE
  `users`
ADD
  PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE
  `users_orders`
ADD
  PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE
  `admin`
MODIFY
  `adm_id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE
  `dishes`
MODIFY
  `d_id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 17;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE
  `remark`
MODIFY
  `id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE
  `restaurant`
MODIFY
  `rs_id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE
  `res_category`
MODIFY
  `c_id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE
  `users`
MODIFY
  `u_id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 9;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE
  `users_orders`
MODIFY
  `o_id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 23;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;