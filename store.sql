-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2017 at 05:54 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `name`, `price`) VALUES
(1, 'Canon EOS', 36000),
(2, 'Nikon DSLR', 40000),
(3, 'Sony DSLR', 45000),
(4, 'Olympus DSLR', 50000),
(5, 'Titan Model #301', 13000),
(6, 'Titan Model #201', 3000),
(7, 'HMT Milan', 8000),
(8, 'Faber Luba #111', 18000),
(9, 'H&W', 800),
(10, 'Luis Phil', 1000),
(11, 'John Zok', 1500),
(12, 'Jhalsani', 1300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Nibha', 'singhnibha@gmail.com', '824a67f29e97b8798a9df7f00189f3e1', '9891376040', 'New Delhi', 'Block-c,h.no-1000d,sangam vihar,new delhi-80'),
(2, 'Deepak kumar', 'sdeepak852@gmail.com', '824a67f29e97b8798a9df7f00189f3e1', '9716206396', 'DELHI', 'BLOCK-C,H.NO-1000D, SANGAM VIHAR, HAMDARD NAGAR'),
(3, 'ankit', 'aaarpjc@gmail.com', '25f9e794323b453885f5181f1b624d0b', '9871428180', 'delhi', 'sangam vihar');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
