-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2016 at 11:33 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cysheeweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `catering_member`
--

CREATE TABLE `catering_member` (
  `ctm_id` int(11) NOT NULL,
  `ct_name` varchar(111) NOT NULL,
  `ctm_member` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catering_member`
--

INSERT INTO `catering_member` (`ctm_id`, `ct_name`, `ctm_member`) VALUES
(9, 'Team2', 'Caro');

-- --------------------------------------------------------

--
-- Table structure for table `catering_team`
--

CREATE TABLE `catering_team` (
  `ct_id` int(11) NOT NULL,
  `ct_name` varchar(100) NOT NULL,
  `ct_leader` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catering_team`
--

INSERT INTO `catering_team` (`ct_id`, `ct_name`, `ct_leader`) VALUES
(6, 'Team2', 'Caro');

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE `combo` (
  `id` int(11) NOT NULL,
  `comboname` varchar(100) NOT NULL,
  `combolist` varchar(100) NOT NULL,
  `mcat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`id`, `comboname`, `combolist`, `mcat`) VALUES
(1, '250', '1 soup/3 main course/1 salad/1 desert/rice/soft drinks', 'lunch_and_dinner'),
(2, '315', '1 soup/4 main course/1 salad/1 desert/rice/soft drinks', 'lunch_and_dinner'),
(3, '400', '1 soup/4 main course/2 salad/2 desert/rice/soft drinks', 'lunch_and_dinner'),
(4, '285', '2 pasta/2 meat/3 bread/2 dessert/softdrinks', 'merienda');

-- --------------------------------------------------------

--
-- Table structure for table `falied`
--

CREATE TABLE `falied` (
  `id` int(11) NOT NULL,
  `attempt` int(11) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `falied`
--

INSERT INTO `falied` (`id`, `attempt`, `time`) VALUES
(1, 0, '19:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `functionhall`
--

CREATE TABLE `functionhall` (
  `id` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `functionhall`
--

INSERT INTO `functionhall` (`id`, `picture`, `description`) VALUES
(1, '1.jpg', 'Neat Services'),
(2, '2.jpg', 'Catering Team'),
(3, '3.jpg', 'Chief Cheff'),
(4, '4.jpg', 'Selfservices');

-- --------------------------------------------------------

--
-- Table structure for table `maincategory`
--

CREATE TABLE `maincategory` (
  `mc_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maincategory`
--

INSERT INTO `maincategory` (`mc_id`, `name`) VALUES
(1, 'specialty'),
(2, 'merienda'),
(3, 'lunch_and_dinner');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `mcat` varchar(100) NOT NULL,
  `scat` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` varchar(10) NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `mcat`, `scat`, `name`, `description`, `price`, `image`) VALUES
(1, 'lunch_and_dinner', 'kenyan food', 'kenyan food', 'Enjoy serving-Kenyan-food', '', 'serving-Kenyan-food1.jpg'),
(2, 'lunch_and_dinner', 'supper dinner', 'supper supper', 'Amaizing lunch and Supper at jeecy', '', 'ef15a849-087d-4a7e-9c2e-7b036151a03d.jpg'),
(3, 'lunch_and_dinner', 'ccateringfood_catering_full', 'cateringfood_catering_full', 'cateringfood_catering_full', '', 'cateringfood_catering_full.jpg'),
(32, 'specialty', 'serving time', 'serving time', '10-waiters-and-waitresses-needed-to-start-work-immediately_1', '10000', '10-waiters-and-waitresses-needed-to-start-work-immediately_1.jpg'),
(34, 'specialty', 'heavy lunch', 'Heavy lunch', 'Chief cheff directing gest for lunch', '1000', 'IMG_1517.jpg'),
(41, 'specialty', 'catering team', 'catering team', 'Catering team preparing for services', '5000', 'TEA+all+2_JPG.jpg'),
(48, 'cakes', 'cakes', 'cakes', 'simply-delicious-caterers', '', 'simply-delicious-caterers.jpg'),
(53, 'cakes', 'cakes', 'city cake', 'new cake-city\r\n', '', 'cake-city-2.jpg'),
(64, 'cakes', 'cakes', ' brown cakes', 'Most sweet decisious brown cakes', '', 'brown.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu_res`
--

CREATE TABLE `menu_res` (
  `id` int(11) NOT NULL,
  `res_id` varchar(100) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_res`
--

INSERT INTO `menu_res` (`id`, `res_id`, `menu`, `price`) VALUES
(7, 'RS-MVN7EX7O', '32', '10000'),
(8, 'RS-MVN7EX7O', '34', '1000'),
(9, 'RS-MVN7EX7O', '41', '5000'),
(10, 'RS-0YIE265E', '32', '10000'),
(11, 'RS-0YIE265E', '34', '1000'),
(12, 'RS-0YIE265E', '41', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `res_id` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `motif` varchar(100) NOT NULL,
  `venueaddress` varchar(100) NOT NULL,
  `type_events` varchar(100) NOT NULL,
  `type_res` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `combo` varchar(200) NOT NULL DEFAULT '0',
  `amount` varchar(100) DEFAULT NULL,
  `type_catering` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `resdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `res_id`, `firstname`, `lastname`, `address`, `contact`, `motif`, `venueaddress`, `type_events`, `type_res`, `date`, `pax`, `combo`, `amount`, `type_catering`, `team`, `status`, `time`, `resdate`) VALUES
(1, 'RS-WICXHF6U', 'rodgers', 'oduor', 'KCA', '0704445453', 'RD', 'KCA', 'Weekdays', 'catering', '08/25/2016', '90', '0', '32000', 'specialty', '0', 'Approved', '9:30AM', '07/18/2016'),
(2, 'RS-WICXHF6U', 'rodgers', 'oduor', 'KCA', '0704445453', 'RD', 'KCA', 'Weekdays', 'catering', '08/25/2016', '90', '0', '32000', 'specialty', '0', 'Approved', '9:30AM', '07/18/2016'),
(3, 'RS-MVN7EX7O', 'cyshee', 'tsharoar', 'KCA', '0704445453', 'RD', 'Function Hall', 'Weekdays', 'functionroom', '08/11/2016', '80', '0', '19000', 'specialty', '0', 'Approved', '9:30AM', '07/18/2016'),
(4, 'RS-0YIE265E', 'rodgers', 'oduor', 'KCA', '0704445453', 'RD', 'KCA', 'Weekdays', 'catering', '08/05/2016', '90', '0', '16000', 'specialty', '0', 'Pending', '9:30AM', '07/18/2016');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `sc_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type_of_reservation`
--

CREATE TABLE `type_of_reservation` (
  `tr_id` int(11) NOT NULL,
  `tr_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_of_reservation`
--

INSERT INTO `type_of_reservation` (`tr_id`, `tr_description`) VALUES
(1, 'catering'),
(2, 'catering'),
(3, 'catering'),
(4, 'catering'),
(5, 'catering'),
(6, 'catering'),
(7, 'catering'),
(8, 'catering'),
(9, 'catering'),
(10, 'catering'),
(11, 'catering'),
(12, 'catering'),
(13, 'catering'),
(14, 'catering'),
(15, 'catering'),
(16, 'catering'),
(17, 'catering'),
(18, 'catering'),
(19, 'catering'),
(20, 'catering'),
(21, 'catering'),
(22, 'catering'),
(23, 'catering'),
(24, 'functionroom'),
(25, 'catering'),
(26, 'catering'),
(27, 'catering'),
(28, 'catering'),
(29, 'catering'),
(30, 'catering'),
(31, 'catering'),
(32, 'catering'),
(33, 'catering'),
(34, 'catering'),
(35, 'functionroom'),
(36, 'catering'),
(37, 'functionroom'),
(38, 'catering'),
(39, 'catering'),
(40, 'catering'),
(41, 'catering'),
(42, 'catering'),
(43, 'catering'),
(44, 'catering'),
(45, 'functionroom'),
(46, 'catering'),
(47, 'catering'),
(48, 'catering'),
(49, 'catering'),
(50, 'functionroom'),
(51, 'catering');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `power` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `power`) VALUES
(1, 'cyshee', '1212', 1),
(2, 'cyshee', '1212', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catering_member`
--
ALTER TABLE `catering_member`
  ADD PRIMARY KEY (`ctm_id`);

--
-- Indexes for table `catering_team`
--
ALTER TABLE `catering_team`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `falied`
--
ALTER TABLE `falied`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functionhall`
--
ALTER TABLE `functionhall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maincategory`
--
ALTER TABLE `maincategory`
  ADD PRIMARY KEY (`mc_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_res`
--
ALTER TABLE `menu_res`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_of_reservation`
--
ALTER TABLE `type_of_reservation`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catering_member`
--
ALTER TABLE `catering_member`
  MODIFY `ctm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `catering_team`
--
ALTER TABLE `catering_team`
  MODIFY `ct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `combo`
--
ALTER TABLE `combo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `falied`
--
ALTER TABLE `falied`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `functionhall`
--
ALTER TABLE `functionhall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `maincategory`
--
ALTER TABLE `maincategory`
  MODIFY `mc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `menu_res`
--
ALTER TABLE `menu_res`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `type_of_reservation`
--
ALTER TABLE `type_of_reservation`
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
