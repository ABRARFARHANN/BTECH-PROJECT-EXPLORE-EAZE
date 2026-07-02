-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 07:02 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trouvaille2`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `rate` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `msg_id`, `user`, `comment`, `rate`, `date`) VALUES
(2, 16, 'abin1@gmail.com', 'nice place', '2', '2023-05-09 17:33:01'),
(3, 5, 'abin1@gmail.com', 'wonderful place', '5', '2023-05-09 17:30:42'),
(4, 19, 'abin1@gmail.com', 'worth going', '4', '2023-05-09 17:38:53'),
(5, 19, 'annmerin@gmail.com', 'Dont miss Idukki Dam and area. ', '4', '2023-05-09 17:38:53'),
(6, 16, 'annmerin@gmail.com', 'good', '2', '2023-05-09 17:40:48'),
(8, 4, 'abin1@gmail.com', 'excellent', '4', '2023-05-09 17:49:10'),
(9, 8, 'aleenalorance@gmail.com', 'happening city', '4', '2023-05-09 17:53:16'),
(10, 8, 'annmerin@gmail.com', 'good', '4', '2023-05-09 17:53:16'),
(11, 9, 'annmerin@gmail.com', 'great', '5', '2023-05-09 17:54:54'),
(12, 9, 'dilshashirin81@gmail.com', 'beautiful place', '5', '2023-05-09 17:54:54'),
(13, 10, 'annmerin@gmail.com', 'good', '3', '2023-05-09 17:56:14'),
(14, 10, 'abin1@gmail.com', 'good', '3', '2023-05-09 17:56:14'),
(15, 13, 'aleenalorance@gmail.com', 'good', '4', '2023-05-09 18:07:22'),
(16, 13, 'abin1@gmail.com', 'nice', '4', '2023-05-09 18:07:22'),
(17, 13, 'dilshashirin81@gmail.com', 'beach is a place to surely visit', '4', '2023-05-09 18:10:26'),
(18, 12, 'aleenalorance@gmail.com', 'great place, beach is beautiful and must be visited atleast once.', '5', '2023-05-10 13:27:15'),
(20, 5, 'aleenalorance@gmail.com', 'nice', '5', '2023-05-10 13:42:17'),
(27, 19, 'dilshashirin81@gmail.com', 'beautiful spot', '4', '2023-05-09 06:28:48'),
(28, 19, 'aleenalorance@gmail.com', 'nice place', '4', '2023-05-09 06:30:08'),
(29, 1, 'dilshashirin81@gmail.com', 'good ', '5', '2023-05-09 06:31:02'),
(30, 1, 'aleenalorance@gmail.com', 'good', '5', '2023-05-09 06:35:02'),
(32, 5, 'dilshashirin81@gmail.com', 'go to destination for nature lovers', '5', '2023-05-09 17:29:59'),
(33, 16, 'dilshashirin81@gmail.com', 'good', '2', '2023-05-09 17:31:39'),
(35, 8, 'dilshashirin81@gmail.com', 'Friendly place', '4', '2023-05-10 13:41:26'),
(36, 18, 'dilshashirin81@gmail.com', '', '3', '2023-05-11 06:25:13'),
(37, 1, 'gokulvishnu2021@gmail.com', 'good nice place', '1', '2024-04-03 07:19:24'),
(38, 4, 'gokulvishnu2021@gmail.com', 'good', '5', '2024-04-03 07:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE IF NOT EXISTS `guide` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `guide_name` varchar(100) NOT NULL,
  `guide_address` text NOT NULL,
  `state_id` varchar(100) NOT NULL,
  `phone_number` int(15) NOT NULL,
  `about_me` text NOT NULL,
  `language` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`id`, `guide_name`, `guide_address`, `state_id`, `phone_number`, `about_me`, `language`, `status`) VALUES
(2, 'Sachin Joseph', 'Ajay Nagar street,Ernakulam,Kerala', 'Kerala', 2147483647, 'Travelling is my passion. Have conducted tour guides to various places.', 'Malayalam,Tamil,Kannada,English', 'Available'),
(5, 'Lulu', 'Kozhikode,Kerala', 'Kerala', 2147483647, 'Love to travel', 'malayalam,tamil,hindi', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `pakages`
--

CREATE TABLE IF NOT EXISTS `pakages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `sublocation` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `rate` varchar(100) NOT NULL,
  `pereferances` varchar(225) NOT NULL,
  `attraction` varchar(225) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `sub_category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=295 ;

--
-- Dumping data for table `pakages`
--

INSERT INTO `pakages` (`id`, `location`, `sublocation`, `description`, `rate`, `pereferances`, `attraction`, `lat`, `lng`, `sub_category`) VALUES
(1, 'Alappuzha', 'Indian Coffee House', 'CUISINES\r\nIndian, Cafe\r\nSPECIAL DIETS\r\nVegetarian Friendly, Vegan Options\r\nMEALS\r\nBreakfast, Lunch, Brunch\r\nFEATURES\r\nTakeout, Seating, Table Service', '200', 'Vegetarian ', 'Restaurant', '9.6138373', '76.3307111', 'Restaurant'),
(2, 'Alappuzha', 'Alappuzha Beach', 'Popular waterfront destination with a lighthouse, a historic pier & cruises in quaint houseboats.', 'free', 'Boating,lighthouse,beach', 'Houseboat', '9.4933925', '76.318072', 'Beach'),
(3, 'Alappuzha', 'Krishnapuram Palace', 'The Krishnapuram Palace is a palace and museum located in Kayamkulam near Alappuzha in Alappuzha district, Kerala in southwestern India. It was built in the 18th century by Anizham Thirunal Marthanda Varma, the Travancore kingdom. ', '10', '', 'museum', '9.1503', '76.5086', 'Museum'),
(4, 'Alappuzha', 'Thaff Delicacy', 'Restaurant', '', 'Vegetarian,Non-Vegetarian', '', '9.5009201', '76.338567', 'Restaurant'),
(5, 'Alappuzha', 'Pathiramanal Island', 'Pathiramanal is a small island in Muhamma panchayat of Alappuzha district located in Vembanad Lake. The name Pathiramanal means ''midnight sand''. The scenic beauty of both sides of the lake as well as that of the island is mind blowing.\r\nTake a boat ride to the island and enjoy the serene surroundings', 'free', 'island', 'boating', '9.61500', '76.38361', 'Tourist spot'),
(6, 'Alappuzha', 'Ambalapuzha Sree Krishna Temple', 'Witness the temple''s architecture and attend the evening puja', 'free', 'Temple', 'Temple', '9.38320555', '76.36921427930879', 'Temple'),
(7, 'Alappuzha', 'Cassia Restaurant', 'Try their seafood platter and enjoy the live music', '', 'Vegetarian ,Non-Vegetarian', '', '9.51882215', '76.32730090519068', 'Restaurant'),
(8, 'Alappuzha', 'Alleppey Backwaters', 'Take a houseboat ride and enjoy the scenic beauty of the backwaters', '', 'Houseboat', 'Houseboat', '9.5239', '76.3568', 'Tourist Spot'),
(9, 'Alappuzha', 'Aramana Restaurant', 'Try their traditional Kerala thali.', '', 'Vegetarian , Non-Vegetarian', '', '9.4712407', '76.33837131875137', 'Restaurant'),
(10, 'Alappuzha', 'St. Mary''s Forane Church', 'Explore the church''s architecture and attend the evening mass', 'free', 'Church', '', '9.6888', '76.3366', 'Church'),
(11, 'Alappuzha', 'Halais Restaurant', 'Try their Arabian cuisine and enjoy the live music', '', 'Non-Vegetarian', '', '9.4946904', '76.3316967', 'Restaurant'),
(12, 'Alappuzha', 'Marari Beach', 'Enjoy the scenic view and take a dip in the Arabian Sea', 'free', 'Beach', 'Beach', '9.603180349999999', '76.29799372732823', 'Beach'),
(13, 'Alappuzha ', 'Revi Karunakaran Museum', 'Explore the museum showcasing the history of Kerala''s coir industry', '100', 'Museum', 'Museum', '9.499180', '76.328827', 'Museum'),
(14, 'Alappuzha', 'Alappuzha Lighthouse', 'Climb to the top of the lighthouse and enjoy the panoramic view of the city', '30', 'Lighthouse', 'Lighthouse', '9.493927', '76.320935', 'Tourist spot'),
(15, 'Ernakulam', 'Mattancherry Palace Museum ', 'Explore the beautiful murals and artifacts', '2', 'museum', 'museum', '9.958133', '76.257657', 'Museum'),
(16, 'Ernakulam', 'Dal Roti', 'Try the butter chicken and garlic naan', '200', 'Vegetarian and Non Vegetarian Cuisines', 'Restaurant', '9.963991', '76.239866', 'Restaurant'),
(17, 'Ernakulam', 'Marine Drive', 'Enjoy the scenic view of the backwaters and watch the sunset.', 'free', 'Backwaters', 'Backwaters', '40.6800212', '-74.1185993', 'Tourist Spot'),
(18, 'Ernakulam', 'Fort House Restaurant', '', '500', 'Vegetarian, Non-Vegetarian', '', '9.969105500000001', '76.24969', 'Restaurant'),
(19, 'Ernakulam', 'Hotel Aryaas', 'Try the dosa and sambar', '200', 'Vegetarian,Vegan', '', '9.965867', '76.29565', 'Restaurant'),
(20, 'Ernakulam', 'Hill Palace Museum', 'Explore the royal artifacts and gardens', '20', 'Museum', 'Museum', '9.952439', '76.36329649999999', 'Museum'),
(21, 'Ernakulam', 'Paradesi Synagogue', 'Learn about the history and culture of the Jewish community', 'free', 'Museum,history', 'Museum', '9.957279', '76.2594825', 'Museum'),
(22, 'Ernakulam', 'Chinese Fishing Nets', 'Watch the fishermen in action', 'free', 'historic site', 'historic site', '9.967679', '76.24249449999999', 'Historic spot'),
(23, 'Ernakulam', 'Kashi Art Cafe', 'Try the pasta and chocolate cake', '500', 'Dessert,cafe', 'Cafe', '9.9667', '76.243183', 'Cafe'),
(24, 'Ernakulam', 'Bolgatty Palace', 'Enjoy the scenic beauty and architecture', 'free', 'hotel,palace', 'hotel,palace', '9.984558', '76.267189', 'Palace'),
(25, 'Ernakulam', 'Indo-Portuguese Museum', 'Learn about the cultural exchange between India and Portugal.', '20', 'Museum,historic,history', 'Museum', '9.962881', '76.240053', 'Museum'),
(26, 'Ernakulam', 'Fusion Bay', 'Try the seafood platter and biryani', '400', 'Vegetarian, Non-Vegetarian', '', '9.965486', '76.24369', 'Restaurant'),
(27, 'Ernakulam', 'Cafe Papaya', 'Try the pancakes and smoothie bowl', '400', 'Dessert,Breakfast', '', '10.0034095', '76.301903\r\n', 'Restaurant'),
(28, 'Ernakulam', 'Kerala Folklore Museum', 'Explore the traditional art and culture of Kerala', '100', '', 'Museum', '9.932999', '76.299043', 'Museum'),
(29, 'Ernakulam', 'Fort Kochi Beach', 'Enjoy the scenic beauty and sunset', 'free', '', 'Beach', '9.964926', '76.239032', 'Beach'),
(30, 'Ernakulam', 'Santa Cruz Basilica', 'Learn about the history of Christianity in Kerala', 'free', '', 'Church', '9.9650025', '76.24309249999999', 'Church'),
(31, 'Thiruvananthapuram', 'Padmanabhaswamy Temple', 'Dress modestly and remove footwear before entering', '0', '', '', '8.482757239339591', '76.94274286787623', 'Temple'),
(32, 'Thiruvananthapuram', 'Villa Maya', 'Try the kerala-style biriyani', '817', 'Vegetarian,Non-Vegeterian', '', '8.481639703496384', '76.93691647711739', 'Restaurant'),
(33, 'Thiruvanathapuram', 'Napier Museum', 'Learn about Kerala''s history and culture', '163', '', '', '8.508908141664435', '76.955189298562', 'Museum'),
(34, 'Thiruvananthapuram', 'Kovalam Beach', 'Enjoy the sunset and take a dip in the Arabian Sea', '0', '', 'Sunset', '8.388904321807914', '76.97682827657695', 'Beach'),
(35, 'Thiruvanathapuram', 'Zam Zam', 'Try the local seafood dishes', '654', 'Non-vegetarian,Vegetarian', '', '8.390152038605507', '77.00841011514012', 'Restaurant'),
(36, 'Thiruvananthapuram', 'Kathakali', 'Book tickets in advance from Natyasala Kathakali Vidyalayam\r\n', '817', '', 'culture', '8.49118', '76.99976', 'Arts'),
(37, 'Thiruvanathapuram', 'Indian Coffee House', 'Try Masala dosa and filter coffee', '245', 'Non-vegetarian,Vegetarian', '', '8.511018', '76.958195', 'Restaurant'),
(38, 'Thiruvanathapuram', 'Kanakakunnu Palace', 'Explore the beautiful gardens and architecture', '81', '', '', '8.511018', '76.958195', 'Palace'),
(39, 'Thiruvanathapuram', 'The curry chatty', 'Try the malabar parotta and chicken curry', '572', 'non-vegetarian,Vegetarian', '', '8.491943440469484', '76.95893986617659', 'Restaurant'),
(40, 'Thiruvananthapuram', 'Kuthiramalika Palace', 'Admire the intricate wood carvings and paintings', '163', '', '', '8.482517', '76.945515', 'Palace'),
(41, 'Thiruvananthapuram', 'Chalai Market', 'Shop for spices,textiles and souvenirs', '0', '', '', '8.482586531601257', '76.94858435080988', 'Shopping'),
(42, 'Thiruvananthapuram', 'Buhari Hotel', 'Try the famous Buhari biriyani', '654', 'Non vegetarian, vegetarian', '', '8.478890950959311', '76.9473306285214', 'Restaurant'),
(43, 'Thiruvananthapuram', 'Saravana Bhavan', 'Try the idli and sambar', '245', 'Vegetarian', '', '8.485096718274107', '76.94776761337295', 'Restaurant'),
(44, 'Thiruvananthapuram', 'Thiruvananthapuram zoo', 'see the animals and birds of kerala', '163', '', '', '8.511198550757356', '76.95499624915755', 'Zoo'),
(45, 'Thiruvananthapuram', 'Aryaas', 'Try the thali meals', '490', 'Vegetarian', '', '8.521373442427105', '76.92966004646519', 'Restaurant'),
(46, 'Thiruvananthapuram', 'Attukal Bhagavathy Temple', 'Learn about the annual attukal pongala festival', '0', '', '', '8.471434648632766', '76.95549717716972', 'Temple'),
(47, 'Thiruvananthapuram', 'Vizhinjam Fishing Harbour', 'Watch the fishermen bring in their catch', '0', '', 'Shopping', '8.378241604919154', '76.99133451856034', 'Fishing'),
(48, 'Thiruvananthapuram', 'Hotel Annapoorana', 'Try the kerala-style porotta and beef curry', '654', 'Non-vegetarian,vegetarian', 'Hotel', '8.48497405399867', '76.94796195664674', 'Restaurant'),
(49, 'Thiruvananthapuram', 'Hotel Prasanth', 'Try the appam and stew', '245', 'Non-vegetarian, vegetarian', 'Hotel', '8.510873623466708', '76.94913159522451', 'Restaurant'),
(50, 'Thiruvananthapuram', 'Shanghumukham Beach', 'See the ionic mermaid statue and enjoy the seaa breeze', '0', '', 'Beach', '8.478917878323273', '76.91230487319393', 'Beach'),
(51, 'Thiruvananthapuram', 'Hotel Zam Zam', 'Try the mutton biriyani', '572', 'Non-vegetarian, vegetarian', 'Hotel', '8.503350163917588', '76.94972280476429', 'Restaurant'),
(52, 'Thiruvananthapuram', 'Science and Technology museum', 'Learn about science and technology in kerala', '163', '', 'Museum', '8.508916207185408', '76.94903807072075', 'Education'),
(53, 'Thiruvananthapuram', 'Pazhavanagadi Ganapathy Temple', 'see the famous elephant procession during festivals', '0', '', 'Temple', '8.484550480068677', '76.947300712024', 'Temple'),
(54, 'Thiruvananthapuram', 'Hotel Apollo Dimora', 'Try the Malabar fish curry', '654', 'Non-vegetarian, vegetarian', 'Hotel', '8.488264214006747', '76.95219509594955', 'Restaurant'),
(55, 'Thiruvananthapuram', 'Saravana Bhavan', 'Try the vada and Chutney', '245', 'vegetarian', 'Restaurant', '8.485063451726162', '76.94779771603686', 'Restaurant'),
(56, 'Thiruvananthapuram', 'Kowdiar Palace', 'See the former residence of the Travancore royal family', '81', '', 'Palace', '8.52416850672941', '76.96329125667097', 'Palace'),
(57, 'Thiruvananthapuram', 'Hotel Aryaas', 'Try chapathi and paneer', '490', '', 'Restaurant', '8.523533556985413', '76.95296158261084', 'Restaurant'),
(58, 'Thiruvananthapuram', 'Veli Tourist village', 'Enjoy boating and water sports', '408', '', 'village', '8.510322462447832', '76.89000908116958', 'Boating'),
(59, 'Thiruvananthapuram', 'Sree chitra art gallery', 'See the works of Raja Ravi Varma and other Indian artists', '163', '', 'Museum', '8.511045232026873', '76.955110982615', 'Art Gallery'),
(60, 'Thiruvananthapuram', 'Amma Restaurant', 'Try moolai fry', '490', 'Non-Vegetarian,vegetarian', 'Restaurant', '8.508399484677696', '76.96222215407539', 'Restaurant'),
(61, 'Palakkad', 'Hotel Nalanda', 'Try the traditional kerala cuisine.', '817', 'Non-vegetarian, Vegetarian', 'Hotel', '10.77643994282451', '76.65768774342126', 'Restaurant'),
(62, 'Palakkad', 'Malampuzha Dam', 'Enjoy the scenic beauty and boating', '408', '', 'Dam', '10.8308103898609', '76.68036427761228', 'Dam'),
(63, 'Palakkad ', 'Palakkad Fort', 'Learn about the history of the fort', '163', '', 'Fort', '10.763567681661243', '76.65688575995262', 'Fort'),
(64, 'Palakkad', 'Kairali Restaurant', 'Try the seafood delicacies', '817', 'Non-vegetarian,vegetarian', 'Restaurant', '10.767866384490077', '76.65078389688733', 'Restaurant'),
(65, 'Palakkad', 'Fantasy Park', 'Enjoy the amusement rides and games', '1226', '', 'Amuzment park', '10.824172973007023', '76.67006549901191', 'Amusment Park'),
(66, 'Palakkad', 'Hotel Ashok Bhavan', 'Try the south Indian Breakfast', '408', 'vegetarian', 'Hotel', '10.77335787376542', '76.65781244949454', 'Restaurant'),
(67, 'Palakkad', 'Silent Valley National Park', 'Enjoy the wildlife and nature', '1600', '', 'Forest', '11.067113 ', '76.421599', 'Forest'),
(68, 'Palakkad', 'Hotel Indraprastha', 'Try the North Indian Cuisine', '817', 'Vegetarian', 'Hotel', '10.765696734352062', '76.65446086261039', 'Restaurant'),
(69, 'Palakkad', 'Dhoni Waterfalls', 'Enjoy the scenic beauty and trekking', '408', '', 'Waterfalls', '10.860010034779933', '76.6223777011025', 'Waterfalls'),
(70, 'Palakkad', 'Hotel Gazala', 'Try the Mughlai cuisine', '817', 'No-vegetarian, Vegetarian', 'Hotel', '10.775174452903713', '76.65831687800897', 'Restaurant'),
(71, 'Palakkad', 'Hotel Tripenta', 'Try the continental breakfast.', '408', 'Non-Vegetarian,Vegetarian', 'Hotel', '10.823788151994165', '76.6864988442502', 'Restaurant'),
(72, 'Palakkad', 'Jainmedu Temple', 'Learn about the jain culture and architecture', '163', '', 'Temple', '10.808352', '76.637077', 'Temple'),
(73, 'Palakkad', 'Hotel Srichakra International', 'Try the chinese cuisine', '817', 'Non-Vegetarian,Vegetarian', 'Hotel', '10.773069850203044', '76.68322971588674', 'Restaurant'),
(74, 'Palakkad', 'Palakkad Gap view point', 'Enjoy the scenic beauty and photography', '163', '', 'viewpoint', '10.705212392978495', '76.78105177426062', 'viewpoint'),
(75, 'Palakkad', 'Kalpathy Heritage Village', 'Learn about the culture and traditions', '163', '', 'village', '10.789493091296734', '76.65531184071597', 'Traditional culture'),
(76, 'palakkad', 'Hotel Fort Palace', 'Try the kerala cuisine', '817', 'Non-Vegetarian,Vegetarian', 'palace', '10.76227924346351', '76.65381180341217', 'Restaurant'),
(77, 'Palakkad', 'Hotel KPM Regency', 'Try the north Indian breakfast', '408', 'Non-Vegetarian,vegetarian', 'Hotel', '10.769106009861815', '76.6564869975806', 'Restaurant'),
(78, 'Palakkad', 'Kollengode Palace', '', '', '', 'Palace', '10.6142', '76.6864', 'Palace'),
(79, 'Palakkad', 'Hotel Gazala', 'Try the Chettinad cuisine', '817', 'Non-vegetarian,vegetarian', 'Hotel', '10.775256833610285', '76.65826744143891', 'Restaurant'),
(80, 'Palakkad', 'Dhoni Hills', 'Enjoy the scenic beauty and trekking.', '408', '', 'Hill', '10.48578952', '76.3864572', 'Trekking'),
(81, 'Palakkad', 'Meenvallam waterfalls', 'Enjoy the Waterfalls and bamboo bridges.', '163', '', 'waterfalls', '10.8311570881', '76.584866518', 'Waterfall'),
(82, 'Palakkad', 'Hotel London Bakes', 'Enjoy the multi-continental cuisines and special arabic cuisine.', '816', 'Non-vegetarian,vegetarian', 'cafe', '10.783774241210253', '76.6576189289604', 'Restaurant'),
(83, 'Palakkad', 'Hotel Tripenta', 'Try the continental cuisine', '408', 'Non-vegetarian,vegetarian', 'Restaurant', '10.8238217644', '76.6863635933', 'Restaurant'),
(84, 'Palakkad', 'Nelliyampathy Hills', 'Enjoy the Sceninc beauty, suicide point,and trekking.', '817', '', 'viewpoint', '10.5354', '76.6936', 'Hill station'),
(85, 'Palakkad', 'kava', 'Enjoy the Nature and Photography.', '163', '', 'viewpoint', '10.8304', '76.7249', 'Forest'),
(86, 'Palakkad', 'Hotel Nalanda', 'Try the kerala cuisine', '816', '', 'Hotel', '10.7672097281', '76.662660674', 'Restaurant'),
(87, 'Kollam', 'Hotel Allseason', 'Try the local cuisine', '817', 'Non-vegetarian, vegetarian', 'Hotel', '8.906624', '76.580994 ', 'Restaurant'),
(88, 'Kollam', 'Thangassery Light House', 'Enjoy the panoramic view of the Arabian Sea', '163', '', 'viewpoint', '8.880674', '76.566025', 'Light House'),
(89, 'Kollam', 'Thangassery Fort', 'Enjoy the panoramic view of the Arabian Sea.', '81', '', 'Fort', '8.8817', '76.5685', 'Fort'),
(90, 'Kollam', 'Thevally Palace', 'Try the seafood dishes', '1226', 'Non-vegetarian, vegetarian', 'Palace', '8.902193564158495', '76.57972186624903', 'Restaurant'),
(91, 'Kollam', 'Mahatma Gandhi Beach', 'Enjoy the serene atmosphere', '0', '', 'Beach', '8.8744', '76.5933', 'Beach'),
(92, 'Kollam', 'Hotel Sea Pearl', 'Try the south Indian Breakfast', '408', 'Non-vegetarian,vegetarian', 'Hotel', '8.89034242724', '76.6057340825', 'Restaurant'),
(93, 'Kollam', 'Ashtamudi Lake', 'Take a boat ride and enjoy the scenic beauty.', '817', '', 'Lake', '8.585999', '76.355999', 'Lake'),
(94, 'Kollam', 'Hotel Sudarsan', 'Try the local delicacies', '654', 'Non-Vegetarian, Vegetarian', 'Hotel', '8.88649432171917', '76.58427816076693', 'Restaurant'),
(95, 'Kollam', 'Palaruvi Waterfalls', 'Take a dip in the refreshing water', '408', '', 'Waterfalls', '8.94174', '77.16535', 'Waterfalls'),
(96, 'Kollam', 'Kollam Beach', 'Enjoy the sunset view', '0', '', 'Beach', '8.876167', '76.589334', 'Beach'),
(97, 'Kollam', 'Hotel Sea Queen', 'Try the North Indian Cuisine', '981', 'Non-Vegetarian,Vegetarian', 'Hotel', '11.25106', '75.77206', 'Restaurant'),
(98, 'Kollam', 'Hotel Quilon Beach Hotel', 'Try the continental breakfast', '408', 'Non-vegetarian, Vegetarian', 'Hotel', '8.87522755362825', '76.59239748928752', 'Restaurant'),
(99, 'Kollam', 'Sasthamkotta Lake', 'Take a boat ride and enjoy the serene atmosphere', '817', '', 'Lake', '9.0356', '76.6369', 'Lake'),
(100, 'Kollam', 'Kalari Rasayana', 'Try the biriyani', '654', 'Non-Vegetarian,vegetarian', 'Restaurant', '8.831539246297282', '76.67042923238301', 'Restaurant'),
(101, 'Kollam', 'Jatayu Earth''s Center', 'Explore the world''s largest bird sculpture', '1226', '', 'viewpoint', '8.860614', '76.86639', 'Viewpoint'),
(102, 'Kollam', 'Kollam Adventure Park', 'Enjoy the thrilling rides', '817', '', 'Amuzment park', '?8.897217', '76.584920', 'Amusement park'),
(103, 'Kollam', 'Hotel Sea Pearl', 'Try the chinese cuisine', '981', 'Non-Vegetarian,Vegetarian', 'Hotel', '8.89034242724', '76.605734', 'Restaurant'),
(104, 'Kollam', 'Hotel Sudarsan', 'Try the south Indian breakfast', '408', 'Non-vegetarian,vegetarian', 'Hotel', '8.881187', '76.636901 ', 'Restaurant'),
(105, 'Kollam', 'Thirumullavaram Beach', 'Enjoy the serene atmosphere', '0', '', 'Beach', '8.894748', '76.553513', 'Beach'),
(106, 'Kollam', 'Hotel Turkish Cormet', 'Try Turkish cuisine', '817', 'Non-vegetarian,vegetarian', '', '8.90048897631749', '76.56451693300073', 'Restaurant'),
(107, 'Kollam', 'Amirtapuri Ashram', 'Learn about the teachings of Mata Amirtanandamayi', '408', '', 'Monastery', '9.0897 ', '76.4859', 'Monastery'),
(108, 'Kollam', 'Kollam Clock Tower', 'Enjoy the view of the city', '0', '', 'viewpoint', '8.8851', '76.5912', 'Viewpoint'),
(109, 'Kollam', 'Hotel Masala Square', 'Try the North Indian cuisine', '408', 'Non-vegetarian,vegetarian', 'Hotel', '8.893282479711289', '76.57382656960175', ''),
(110, 'Kollam', 'Sreelekshmibhavan Hotel', 'Try Idli and sambar', '408', 'vegetarian', 'Hotel', '8.8935', '76.5741', 'Restaurant'),
(111, 'Kollam', 'Thenmala Eco-Tourism', 'Explore the nature trails and adventure activities', '1635', '', 'viewpoint', '8.95969', '77.06205', 'Ecotourism'),
(112, 'Kollam', 'Hotel Anandabhavan', 'Try MasalaDosa', '408', 'Vegetarian', 'Hotel', '8.924363081951583', '76.63701084856689', 'Restaurant'),
(113, 'Kollam', 'Shenduruny Wildlife Sanctuary', 'Enjoy the wildlife and nature', '817', '', 'Forest', '8.8578', '77.2175', ''),
(114, 'Kollam', 'Kollam Fish Market', 'Experience the local culture', '0', '', 'Shopping', '8.8869,', '76.59228', 'Market'),
(115, 'Kollam', 'Hotel Arabian Masala', 'Try Arabic cuisine', '817', 'Non-vegetarian,vegetarian', 'Hotel', '8.938820105200435', '76.65501689237595', 'Restaurant'),
(116, 'Pathanamthitta', 'Hotel Aryaas', 'Try the local Kerala cuisine', '405', 'Vegetarian', 'Hotel', '9.388397', '76.575345', 'Restaurant'),
(117, 'Pathanamthitta', 'Sabarimala Sree Ayyappa Temple', 'Dress modestly and remove footwear before entering', '0', '', 'Temple', '9.436088', '77.08019', 'Temple'),
(118, 'Pathanamthitta', 'Pandalam Palace', 'Learn about the history of the royal family', '408', '', 'Palace', '9.2324', '76.6755', 'Palace'),
(119, 'Pathanamthitta', 'Hotel Foodlin', 'Try the Seafood Dishes', '817', 'Non-Vgetarian,vegetarian', 'Hotel', '9.20814779400321', '76.6887644393434', 'Restaurant'),
(120, 'Pathanamthitta', 'Kathakali Performance', 'Book  Tickets in advance', '1226', '', 'Culture', '9.3265', '76.6840', 'Art Form'),
(121, 'Pathanamthitta', 'Hotel Usthad', 'Try Kerala Cuisine', '408', 'Non-Vegetarian,vegetarian', 'Restaurant', '9.291124124571212', '76.649511473382', 'Restaurant'),
(122, 'Pathanamthitta', 'Perunthenaruvi waterfall', 'wear comfortable shoes for the hike', '408', '', 'waterfall', '9.4129', '76.87587', 'Hiking'),
(123, 'Pathanamthitta', 'Hotel Aryas', 'Try the biriyani', '408', 'Vegetarian', 'Restaurant', '9.388397', '76.575345', 'Restaurant'),
(124, 'Pathanamthitta', 'Konni Elephant Training centre', 'Watch Elephants being Trained', '408', '', 'Elephant', '9.228182', '76.851883', 'Elephant Training'),
(125, 'Pathanamthitta', 'St.Mary''s Orthodox Syrian Church', 'Dress modestly and remove footwear before entering', '0', '', 'Church', '9.2419868', '76.8037724 ', 'Church'),
(126, 'Pathanamthitta', 'Hotel Poomakavil', 'Try kerala cuisine', '408', 'Non-vegetarain,vegetarian', 'Hotel', '9.241215624971602', '76.80254229358059', 'Restaurant'),
(127, 'Pathanamthitta', 'Aranmula Parthasarathy Temple', 'Dress modestly and remove footwear before entering', '0', '', 'Temple', '9.32806', '76.68775', 'Temple'),
(128, 'Pathanamthitta', 'Aranmula Kitchen', 'Try the kerala cuisine', '817', 'Non-vegetarian,vegetarian', 'Restaurant', '9.32741771025978', '76.6850221354859', 'Restaurant'),
(129, 'Pathanamthitta', 'Gavi Eco-Tourism', 'Book a jeep safari in advance', '1635', '', 'Trekking', '9.2893532 ', '77.1715188 ', 'Forest'),
(130, 'Pathanamthitta', 'Kaviyoor Mahadeva Temple', 'Dress modestly and remove footwear before entering', '0', '', 'Temple', '9.3965', '76.6104', 'Temple'),
(131, 'Pathanamthitta', 'Hotel KGA Elite continental', 'Try continental dishes', '817', 'Non-vegetarian,vegetarian', 'Hotel', '9.3872633665504', '76.57469174992895', 'Restaurant'),
(132, 'Pathanamthitta', 'Hotel Hills park', 'Try North-Indian cuisine', '817', 'Non-vegetarian,vegetarian', 'Hotel', '9.266834', '76.803580 ', 'Restaurant'),
(133, 'Pathanamthitta', 'Mannadi Devi Temple', 'Dress modestly and remove footwear before entering', '0', '', 'Temple', '9.087787', '76.734792 ', 'Temple'),
(134, 'Pathanamthitta', 'Adavi Eco-Tourism', 'Book a trekking tour in advance', '1635', '', 'Trekking', '9.2644', '76.734792 ', 'Trekking'),
(135, 'Pathanamthitta', 'Kadammanitta Devi Temple', 'Dress modestly and remove footwear before entering', '0', '', 'Temple', '9.305036', '76.77142', 'Temple'),
(136, 'Pathanamthitta', 'Delmon Continental', 'Try Continental dishes', '817', 'Non-vegetarian,vegetarian', 'Hotel', '9.275057793089175', '76.78238389085817', 'Restaurant'),
(137, 'Pathanamthitta', 'Sabrimala sree Dharama Sastha Temple', 'Dress modestly and remove footwear before entering', '0', '', 'Temple', '8.43814', '76.99657', 'Temple'),
(138, 'Pathanamthitta', 'Teena Restaurant', 'Try Kerala cuisine', '817', 'Non-vegetarian,vegetarian', 'Restaurant', '9.376283682462727', '76.57684590290523', 'Restaurant'),
(139, 'Pathanamthitta', 'Charalkunnu Hill Station', 'Enjoy the scenic viewss', '408', '', 'Hill', '9.375221', '76.697957 ', 'Restaurant'),
(140, 'Pathanamthitta', 'Hotel Ambadi', 'Try the Prawn fry', '817', 'Non-vegetarian,vegetarian', 'Hotel', '9.13926', '76.8553', 'Restaurant'),
(141, 'Kottayam', 'Anjali Park Hotel', 'Try the Traditonal Kerala Thali', '408', 'Non-vegetarian, vegetarian', 'Hotel', '9.589690', '76.523300 ', 'Restaurant'),
(142, 'Kottayam', 'Kumarakom Bird Sanctuary', 'Spot various species of birds', '245', '', 'Bird Sanctuary', '9.6274', '76.4286', 'Bird Sanctuary'),
(143, 'Kottayam', 'Vembanad Lake', 'Enjoy the scenic beauty of the lake', '817', '', 'Lake', '9.5968', '76.3985', 'Lake'),
(144, 'Kottayam', 'Thai Restaurant', 'Try the seafood platter', '572', 'Non-vegetarian,vegetarian', 'Restaurant', '9.591441', '9.591441', 'Restaurant'),
(145, 'Kottayam', 'Hotel Aida', 'Try the appam and stew', '245', 'Non-vegetarian,vegetarian', 'Hotel', '9.591567', '76.522153', 'Restaurant'),
(146, 'Kottayam', 'Ettumanoor Mahadeva Temple', 'Explore the ancient temple', '40', '', 'Temple', '9.673678', '76.56077', 'Temple'),
(147, 'Kottayam', 'Hotel Aaryaas Grand', 'Try the biriyani and kebabs', '408', 'Non-vegetarian, vegetarian', 'Restaurant', '9.5929', '76.5218', 'Restaurant'),
(148, 'Kottayam', 'Bay Island Driftwood Museum', 'Admire the unique collection of driftwood sculptures', '163', '', 'Museum', '9.6171', '76.4322', 'Museum'),
(149, 'Kottayam', 'Thirunakkara Mahadeva Temple', 'Witness the evening pooja', '40', '', 'Temple', '9.5904', '76.5186', 'Temple'),
(150, 'Kottayam', 'Hotel Indraprastha', 'Try the Kerala-Style chicken curry', '490', 'Non-vegetarian, vegetarian', 'Hotel', '9.75436479', '76.56143842', 'Restaurant'),
(151, 'Kottayam', 'Hotel Aaryas', 'Try the dosa and chutney', '163', 'vegetarian', 'Restaurant', '9.590685477898973', '76.52117929382803', 'Restaurant'),
(152, 'Kottayam', 'St. Alphonsa Shrine Church and Pilgrim Center', 'Explore the ancient church', '0', '', 'Church', '9.7029', '76.7261', 'Church'),
(153, 'Kottayam', 'Hotel Annapoorna', 'Try the vegetarian thali', '327', 'Vegetarian', 'Restauraant', '9.6440', '76.5454', 'Restaurant'),
(154, 'Kottayam', 'Thazhathangady Juma Masjid', 'Explore the ancient mosque', '40', '', 'Mosque', '9.58865', '76.49133', 'Mosque'),
(155, 'Kottayam', 'Thiruvarppu Sreekrishna Swami Temple', 'Witness the evening pooja', '40', '', 'Temple', '9.57930790393', '76.4736110571 ', 'Temple'),
(156, 'Kottayam', 'Hotel Vembanad', 'Try the fish curry and rice', '654', 'Non-Vegetarian, vegetarian', 'Hotel', '9.5894611', '76.5285165 ', 'Restaurant'),
(157, 'Kottayam', 'Hotel Windsor Castle', 'Try the Idli and sambar', '163', 'Non-vegetarian, vegetarian', 'Hotel', '9.57162615', '76.5190844961419 ', 'Restaurant'),
(158, 'Kottayam', 'Vaikom Mahadeva Temple', 'Explore the ancient temple', '40', '', 'Temple', '9.7500', '76.3959', 'Temple'),
(159, 'Kottayam', 'Sree Anandha bhavans', 'Try the masala dosa and filter coffee', '327', 'vegetarian', 'Restaurant', '9.6048', '76.5319', 'Restaurant'),
(160, 'Kottayam', 'Kottayam Market', 'Shop for souvenirs and spices', '163', '', 'Shopping', '9.5802', '76.5201', 'Market'),
(161, 'Kottayam', 'Hotel Aiswarya', 'Try the puttu and kadala curry', '245', 'Vegetarian', 'Restaurant', '9.58981216667', '76.5190795666 ', 'Restaurant'),
(162, 'Kottayam', 'Vagamon Hill Station', 'Enjoy the scenic beauty of the hills', '817', '', 'Hill', '9.7301', '76.8758', 'Hill Station'),
(163, 'Kottayam', 'Hotel Green Hill Estate', 'Try the Kerala-Style fish curry', '408', 'Non-vegetarian, vegetarian', 'Hotel', '9.7422', '76.9015', 'Restaurant'),
(164, 'Kottayam', 'Elaveezhapoonchira Hill Station', 'Enjoy the scenic beauty of the hills', '817', '', 'Hill', '9.806504', '76.787167', 'Hill Station'),
(165, 'Kottayam', 'Kottayam Boat Jetty', 'Enjoy the view of the backwaters', '163', '', 'Boat Jetty', '9.5777', '76.5190', 'Boat Jetty'),
(166, 'Kottayam', 'Hotel Tharavadu', 'Try the Kerala-Style beef curry', '654', 'Non-vegetarian, vegetarian', 'Hotel', '9.5625', '76.8134', 'Restaurant'),
(167, 'Thrissur', 'Vadakkunnathan Temple', 'Dress modestly and remove shoes before\r\nentering', 'Free', 'Temple', 'Temple', '40.740121', '-73.990593', 'Temple'),
(168, 'Thrissur', 'Hotel Bharat', 'Hotel Bharath is a Pure Veg restaurant situated in the heart of the Cultural Capital Of Kerala.', '408', 'vegetarian', 'hotel', '40.740121', '-73.990593', 'Hotel'),
(169, 'Thrissur', 'Thrissur Zoo and Museum', ' While the beautiful flora and fauna in the zoo are perfect to calm the wildlife enthusiast within you, the artefacts in the museum are best to treat the history lover in you. ', '163', 'zoo', 'zoo', '40.740121', '-73.990593', 'zoo'),
(170, 'Thrissur', 'Athirapilly Waterfalls', 'Wear comfortable shoes for the hike', '500', 'waterfalls', 'waterfalls', '10.2851072', '76.5697643 ', 'waterfalls'),
(171, 'Thrissur', 'Dosa Plaza', 'Try the masala dosa', '130', 'vegetarian', 'dosa', '10.5524357', '76.2272636', 'hotel'),
(172, 'Thrissur', 'Hotel Aryaas', 'Try the idli and sambar', '100', 'vegetarian', 'hotel', '..', '..', 'hotel'),
(173, 'Thrissur', 'Shakthan Thampuran Palace', 'Learn about the history of the palace', '30', 'Palace', 'Palace', ' 10.5307227942', '76.2159', 'Palace'),
(174, 'Thrissur', 'Hotel Luciya Palace', 'Try the fish curry', '490', 'non-vegetarian,vegetarian', 'hotel', ' 10.52213', '76.2114', 'Hotel'),
(175, 'Thrissur', 'Archaeological Museum', 'Learn about the ancient history of\r\nKerala', '245', 'Museum', 'Museum', '10.5305', '76.2245', 'Museum'),
(176, 'Thrissur', 'Our Lady of Dolours Basilica', 'Dress modestly and remove shoes\r\nbefore entering', 'free', 'church', 'church', '10.5210', '76.2183', 'church'),
(177, 'Thrissur', 'Thalassery Restaurant', 'Try the biriyani', '408', 'non-vegaterian,vegetarian', 'hotel', '10.6026', '76.1453', 'Hotel'),
(178, 'Thrissur', 'Hotel Pooram International', 'Try the appam and stew', '245', 'non-vegetarian,vegetarian', 'hotel', ' 10.52239', '76.21288', 'hotel'),
(179, 'Thrissur', ' Kerala Kalamandalam', 'Learn about the traditional art\r\nforms of Kerala', '163', 'art', 'Historical Place', '10.7366', '76.2790', 'University of Art'),
(180, 'Thrissur', 'Hotel Siddhartha Regency ', 'Try the chicken fry', '572', 'non-vegetarian,vegetarian', 'hotel', '10.51403', '76.21057', 'hotel'),
(181, 'Thrissur', ' Vilangan Hills', 'Wear comfortable shoes for the\r\nhike&nbsp;', '100', 'hill', 'hill', '10.557127', '76.16858', 'hill'),
(182, 'Thrissur', 'Punnathur Kotta Elephant Sanctuary', 'Interact with the elephants', '250', ' Elephant Sanctuary', ' Elephant Sanctuary', ' 10.153591', '76.313981', ' Elephant Sanctuary'),
(183, 'Thrissur', 'Hotel Niya Regency', 'Try the seafood platter', '654', 'non-vegetarian,vegetarian', 'hotel', '10.5138', '76.1753', 'Hotel'),
(184, 'Thrissur', 'Hotel Elite International', 'Try the dosa and chutney', '163', 'non-vegetarian,vegetarian', 'hotel', '10.5220', '76.2138', 'hotel'),
(185, 'Thrissur', 'Chavakkad Beach', 'Enjoy the scenic beauty', 'Free', 'beach', 'beach', '10.5720', '76.0075', 'beach'),
(186, 'Thrissur', 'Hotel Sree Gokulam Residency', 'Try the fish fry', '444', 'non-vegetarian', 'hotel', '10.4358', '76.2652', 'Hotel'),
(187, 'Thrissur', 'Peechi Dam', 'Enjoy the view of the dam and the\r\nlake', '200', 'dam', 'dam', '10.5301', ' 76.3699', 'dam'),
(188, 'Thrissur', 'Vadakkekara Palace', 'Learn about the history of the\r\npalace', '80', 'Palace', 'palace', '10.1629263', '76.2116987', 'Palace'),
(189, 'Thrissur', 'Hotel Joys Palace ', 'Try the chicken biryani', '343', 'non-vegetarian', 'hotel', '10.5142', '76.2130', 'Hotel'),
(190, 'Thrissur', 'Guruvayur Temple', 'Dress modestly and remove shoes\r\nbefore entering', 'Free', 'Temple', 'Temple', '10.5946', '76.0394', 'Temple'),
(191, 'Thrissur', 'Vazhani Dam', 'Enjoy the view of the dam and the\r\nlake', '100', 'dam', 'dam', '10.6412', '76.3084', 'dam'),
(192, 'Thrissur', 'Thiruvambady Krishna Temple', 'Dress modestly and remove shoes\r\nbefore entering', 'Free', 'Temple', 'Temple', '10.5334', '76.2115', 'Temple'),
(193, 'Thrissur', 'Marine World', '<div class="biGQs _P fiohW uPlAb fOtGX" style="margin-top: 0px; margin-right: 0px; margin-bottom: var(--spacing-01); margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: medium; font-family: &quot;Trip Sans VF&quot;, &quot;Trip Sans&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255);">Features animals</div><a class="UikNM _G B- _S _T c G_ P0 wSSLS mowmC wnNQG raEkE" href="https://www.tripadvisor.in/Trust-lIFsY9GSDYn4-Animal_welfare_policy.html" target="_blank" style="margin-top: 0px; margin-right: 0px; margin-bottom: var(--spacing-03); margin-left: 0px; padding: 0px; appearance: none; cursor: pointer; position: relative; border: none; background: none rgb(255, 255, 255); display: inline-block; color: var(--primaryLink); font-family: &quot;Trip Sans VF&quot;, &quot;Trip Sans&quot;, Arial, sans-serif; font-size: medium;"><span class="biGQs _P XWJSj Wb" style="margin: 0px; padding: 0px; font: var(--_NwdMsasn);"><span style="margin: 0px; padding: 0px; font-family: inherit; font-size: inherit; line-height: inherit; font-weight: inherit;">Learn more</span>&nbsp;about animal welfare in tourism</span></a>', '350', 'aquarium', 'aquarium', ' 10.5833096 ', '76.0188816', 'aquarium'),
(194, 'Kasaragod', 'Bekal Fort', 'Hire a guide for a better\r\nunderstanding of the history', '150', 'fort', 'fort', '12.420353', ' 75.023148', 'fort'),
(195, 'Kasaragod', 'Hotel Bekal Palace', 'Try the local seafood dishes', '550', 'non-vegetarian', 'hotel', '12.41638', ' 75.02222 ', 'Hotel'),
(196, 'Kasaragod', 'Kappil Beach', 'Explore kappil beach', 'Free', 'beach', 'beach', '8.7726', '76.6799', 'beach'),
(197, 'Kasaragod', ' Nalanda Restaurant', 'Try the traditional Kerala cuisine', '230', 'vegetarian', 'hotel', '12.507643', '74.988213', 'hotel'),
(198, 'Kasaragod', 'Bekal Beach', '&nbsp;walk at Bekal\r\nBeach', 'Free', 'beach', 'beach', '12.3904', '75.0383', 'beach'),
(199, 'Kasaragod', 'Ananthapura Lake Temple', 'Dress modestly and remove\r\nfootwear before entering the temple', 'Free', 'Temple', 'Temple', '12.5842', '74.9820', 'Temple'),
(200, 'Kasaragod', 'Ranipuram Hill Station', 'Carry warm clothes as it can get\r\nchilly', 'Free', 'hill station', 'hill', '12.4157', '75.3536', 'hill'),
(201, 'Kasaragod', 'Hotel Highway Palace', 'Try the local breakfast dishes', '230', 'non-vegetarian,vegetarian', 'hotel', '12.5140723031', '75.0006409864', 'hotel'),
(202, 'Kasaragod', 'Ananthapura Lake Temple', '<br>', 'Free', 'Temple', 'Temple', '12.5842', '74.9820', 'Temple'),
(203, 'Kasaragod', 'Chandragiri  fort', 'Hire a guide for a better', '100', 'fort', 'fort', '12.4699', '75.0032', 'fort'),
(204, 'Kasaragod', 'Valiyaparamba Backwaters', 'Hire a boat for a better\r\nexperience', 'free', ' backwater ', ' backwater ', ' 12.144443', '75.144323', 'backwater'),
(205, 'Kasaragod', 'Madhur Temple', 'Dress modestly and remove\r\nfootwear before entering the temple&nbsp;', 'Free', 'Temple', 'Temple', '12.5482', '75.0040', 'Temple'),
(206, 'Kasaragod', 'Bekal Hole Aqua Park', '<span style="font-weight: bold; color: rgb(188, 192, 195); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(32, 33, 36);">Bekal Hole Aqua Park</span><span style="color: rgb(189, 193, 198); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(32, 33, 36);">&nbsp;is an adventure park</span>', '200', 'park', 'park', ' 12.420353', ' 75.023148', 'park'),
(207, 'Kasaragod', 'Malik Deenar Mosque', 'Dress modestly and remove\r\nfootwear before entering the mosque', 'Free', 'mosque', 'mosque', '12.48475555306403', ' 74.9889123243663', 'mosque'),
(208, 'Kasaragod', 'Hosdurg Fort', 'Hire a guide for a better\r\nunderstanding of the history', '100', 'fort', 'fort', '12.3091', '75.0947', 'fort'),
(209, 'Kasaragod', 'Pallikere Beach', ': Carry a camera for beautiful\r\npictures', 'Free', 'beach', 'beach', '12.3893', '75.0413', 'beach'),
(210, 'Kasaragod', 'Bekal Cooperative Spinning Mill', 'Learn about the local industry', '150', 'Spinning Mill', 'Spinning Mill', '12.420353', '75.023148', 'Spinning Mill'),
(211, 'Kasaragod', 'Kottancheri Hills', 'Carry comfortable shoes for\r\ntrekking', 'Free', 'hill', 'hill', '12.34694', '75.12208', 'hill'),
(212, 'Kannur', 'Hotel Blue Nile', 'Try the Malabar Biriyani', '300', 'non-vegetarian,vegetarian', 'hotel', '11.8699340874', '75.359847095', 'hotel'),
(213, 'Kannur', 'St. Angelo Fort', 'Explore the historic fort and enjoy the view\r\nof the Arabian Sea', '100', 'fort', 'fort', '11.8541', '75.3714', 'fort'),
(214, 'Kannur', 'Payyambalam Beach', 'Enjoy the sunset and take a dip in the sea', 'Free', 'beach', 'beach', '11.8715', '75.3509', 'beach'),
(215, 'Kannur', 'Hotel Odhens', 'Try the seafood platter', '408', 'non-vegetarian,vegetarian', 'hotel', '11.868103', '75.362274', 'Hotel'),
(216, 'Kannur', 'Muzhappilangad Drive-in Beach', 'Take a drive on the beach under the stars', 'Free', 'beach', 'beach', '11.8000', '75.4500', 'beach'),
(217, 'Kannur', ' Paris Restaurant', 'Try the Kerala-style Appam and Stew', '150', 'non-vegetarian,vegetarian', 'hotel', '11.8610739', '75.3789442', 'hotel'),
(218, 'Kannur', 'Arakkal Museum', 'Learn about the history of the Arakkal family', '150', 'Museum', 'Museum', '11.8595', '75.3782', 'Museum'),
(219, 'Kannur', 'Hotel Sagar ', 'Try the Fish Curry and Rice', '300', 'non-vegetarian,vegetarian', 'hotel', '11.8713', '75.3958', 'Hotel'),
(220, 'Kannur', 'Kannur Lighthouse', 'Climb to the top for a panoramic view of the\r\ncity', '80', 'lighthouse', 'lighthouse', '11.8605', '75.3559', 'lighthouse'),
(221, 'Kannur', 'Mappila Bay Fishing Harbor', 'Watch the fishermen bring in their catch of\r\nthe day', 'Free', 'beach', 'beach', '11.855329', '75.372329', 'beach'),
(222, 'Kannur', ' Kannur Beach House', 'Try the Masala Dosa and Chutney', '245', 'vegetarian', 'hotel', '11.8383', '75.4056', 'hotel'),
(223, 'Kannur', 'Parassinikadavu Snake Park', 'Learn about different species of snakes and\r\nwatch a live snake show', '245', 'park', 'snake', '11.9894', '75.3886', 'park'),
(224, 'Kannur', 'Hotel Malabar', 'Try the Chicken Fry and Porotta&nbsp;', '150', 'non-vegetarian,vegetarian', 'hotel', '11.8666', '75.3715', 'Hotel'),
(225, 'Kannur', 'Ezhimala Hill', 'Visit the ancient temple and enjoy the view\r\nof the Arabian Sea', '70', 'hill', 'hill', '12.0213', '75.2071', 'hill'),
(226, 'Kannur', 'Kavvayi Backwaters', 'Take a boat ride and enjoy the scenic beauty', '80', 'backwater', 'backwater', '12.09216', '75.18211', 'backwater'),
(227, 'Kannur', 'Hotel Sky Park', 'Try the Poori Masala and Chutney', '408', 'non-vegetarian,vegetarian', 'hotel', '11.86995', '75.575176', 'hotel'),
(228, 'Kannur', 'Kannur Handloom Weavers Cooperative Society', 'Learn about the traditional\r\nhandloom weaving process', 'Free', 'Spinning Mill', 'Spinning Mill', '11.927821', '75.463486', 'Spinning Mill'),
(229, 'Kannur', 'Mridanga Saileswari Temple', 'Visit the ancient temple and\r\nwitness the traditional rituals', '80', 'Temple', 'Temple', '11.9217', '75.6912', 'Temple'),
(230, 'Kannur', 'Dharmadam Island', 'Enjoy the serene beauty of the\r\nisland and watch the sunset', 'Free', 'beach', 'beach', '11.7701', '75.4509', 'beach'),
(231, 'Kannur', ' Hotel Paragon', 'Try the Chicken Biriyani', '408', 'non-vegetarian,vegetarian', 'hotel', '11.256714', '75.778725', 'Hotel'),
(232, 'Kannur', 'Kannur Beach', 'Relax on the beach and enjoy the view of\r\nthe Arabian Sea', 'Free', 'beach', 'beach', '11.8719', '75.3629', 'beach'),
(233, 'Kannur', 'Thalassery Fort', 'Learn about the history of the fort and\r\nenjoy the view of the sea', '100', 'fort', 'fort', '11.7481', '75.4866', 'fort'),
(234, 'Malappuram', 'Hotel Malabar Palace ', 'Try the Malabar Biriyani', '300', 'non-vegetarian,vegetarian', 'hotel', '11.1304', '76.1132', 'Hotel'),
(235, 'Malappuram', 'Kottakkunnu Park', ': Enjoy the scenic view of\r\nMalappuram', '80', 'park', 'park', '11.0481', '76.0831', 'park'),
(236, 'Malappuram', 'Thirunavaya Navamukunda Temple', 'Dress modestly and remove\r\nfootwear before entering the\r\ntemple', 'Free', 'Temple', 'Temple', '10.86372', '75.98172', 'Temple'),
(237, 'Malappuram', ' Tanur Beach', 'Sunset at Tanur Beach', 'Free', 'beach', 'beach', '10.9146361', '75.9220839', 'beach'),
(238, 'Malappuram', 'Kadalundi Bird Sanctuary', 'Carry binoculars and wear\r\ncomfortable shoes', '100', 'lake', 'lake', '11.126458', '75.828701', 'lake'),
(239, 'Malappuram', 'Thirumandhamkunnu Bhagavathy Temple', 'Dress modestly and remove\r\nfootwear before entering the\r\ntemple', 'Free', 'Temple', 'Temple', '10.98039', '76.201377', 'Temple'),
(240, 'Malappuram', 'Nilambur Teak Museum', 'Learn about the history of\r\nteak in Kerala', '100', 'Museum', 'Museum', '11.30009', '76.07', 'Museum'),
(241, 'Malappuram', 'Adyanpara Waterfalls', 'Sunset at Adyanpara\r\nWaterfalls', 'Free', 'waterfalls', 'waterfalls', '11.1179807', '76.3181499', 'waterfalls'),
(242, 'Malappuram', 'Thirunelly Temple', 'Dress modestly and remove\r\nfootwear before entering the\r\ntemple', 'Free', 'Temple', 'Temple', '11.9070', '75.9908', 'Temple'),
(243, 'Malappuram', 'Kottakkal Juma Masjid', 'Dress modestly and remove\r\nfootwear before entering the\r\nmosque', 'Free', 'mosque', 'mosque', '11.00172', '76.00478', 'mosque'),
(244, 'Malappuram', 'Kadalundi River', 'Enjoy the scenic view of the\r\nriver', 'Free', 'river', 'river', '11.1665434', '75.8421063', 'river'),
(245, 'Malappuram', 'Kottakkunnu Fort', 'Learn about the history of\r\nthe fort', '100', 'fort', 'fort', '11.0481959484', '76.0820388794', 'fort'),
(246, 'Malappuram', 'Farhan Restaurant', 'enjoy biriyani', '245', 'non-vegetarian,vegetarian', 'hotel', '11.0510', '76.0711', 'hotel'),
(247, 'Malappuram', 'Mazali restaurant', '<span style="color: rgb(0, 0, 0); font-family: &quot;Trip Sans VF&quot;, &quot;Trip Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Chinese, Indian, Middle Eastern, Seafood, Barbecue, Asian</span>', '408', 'non-vegetarian,vegetarian', 'hotel', '11.00172', '76.0711', 'hotel'),
(248, 'Malappuram', 'Hotel Surya Bhawan', '<span style="color: rgb(0, 0, 0); font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;try a pure vegetarian restaurant offering South Indian dishes, Chinese vegetable food, a variety of meals, tea, coffee and much more</span>', '245', 'vegetarian', 'hotel', '11.00172', '76.2272636', 'Hotel'),
(249, 'Malappuram', 'Arabian Restaurant', '<span style="color: rgb(0, 0, 0); font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;Try Arabian Restaurant which is crafted with traditional bamboo with a set of bamboo tables and a separate space for large groups.</span>', '408', 'non-vegetarian,vegetarian', 'hotel', '11.00172', '76.0711', 'hotel'),
(250, 'Malappuram', ' Golden Bakes Restaurant Cafe', '<span style="color: rgb(0, 0, 0); font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">The restaurant provides a variety of dishes to its customers like South Indian food, veg and non-veg and much more at a reasonable rate</span>', '245', 'non-vegetarian,vegetarian', 'hotel', '11.00172', '76.2272636', 'Hotel'),
(251, 'Malappuram', 'Hotel Royal Plaza', '<span style="color: rgb(0, 0, 0); font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">The restaurant offers a variety of veg and non-veg food with a touch of unique flavors</span>', '345', 'non-vegetarian,vegetarian', 'hotel', '11.00172', '76.5697643 ', 'hotel'),
(252, 'Malappuram', 'Planet Cafe', '<span style="color: rgb(0, 0, 0); font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">Planet Cafe offers a delicious variety of cakes, pastries and much more</span>', '245', 'vegetarian', 'hotel', '11.00172', '76.5697643 ', 'Hotel'),
(253, 'Kozhikode', 'Kozhikode Beach', 'Enjoy the sunset and take a stroll', 'Free', 'beach', 'beach', '11.2626', '75.7673', 'beach'),
(254, 'Kozhikode', 'Paragon Restaurant', 'Try their famous biryani', '500', 'non-vegetarian,vegetarian', 'hotel', '11.2567180376', '75.7786391292', 'Hotel'),
(255, 'Kozhikode', 'Mananchira Square', 'A beautiful park with a pond and musical\r\nfountain', 'free', 'park', 'park', '11.2537', '75.7764', 'park'),
(256, 'Kozhikode', 'Zain''s Hotel', 'Try their delicious seafood dishes', '600', 'non-vegetarian,vegetarian', 'hotel', '11.2545', '75.7738', 'hotel'),
(257, 'Kozhikode', 'SM Street', 'A bustling street with shops and street food', 'Free', 'shopping', 'shops', '11.250858', '75.781116', 'shops'),
(258, 'Kozhikode', ' Bombay Hotel', 'Try their famous masala dosa', '150', 'vegetarian', 'hotel', '11.2515512294', '75.7732937039', 'Hotel'),
(259, 'Kozhikode', 'Kappad Beach', 'The historic beach where Vasco da Gama\r\nlanded', 'Free', 'beach', 'beach', '11.3807', '75.7261', 'beach'),
(260, 'Kozhikode', 'Kozhippara Falls', 'A beautiful waterfall surrounded by lush\r\ngreenery', 'Free', 'waterfalls', 'waterfalls', '11.36891', '76.111374', 'waterfalls'),
(261, 'Kozhikode', 'Beypore Beach', 'A serene beach with fishing boats and a\r\nlighthouse', 'Free', 'beach', 'beach', '11.1736', '11.1736', 'beach'),
(262, 'Kozhikode', ' Salkara Restaurant', 'Try their traditional Kerala thali&nbsp;', '408', 'vegetarian', 'hotel', '11.274202', '75.773556', 'hotel'),
(263, 'Kozhikode', 'Hotel Rahmath', 'Try their appam and stew,biriyani', '245', 'non-vegetarian,vegetarian', 'hotel', '11.2516', '75.7791', 'hotel'),
(264, 'Kozhikode', 'Thusharagiri Waterfalls', 'A scenic waterfall with trekking trails&nbsp;', 'Free', 'waterfalls', 'waterfalls', '11.472632', '76.05323', 'waterfalls'),
(265, 'Kozhikode', 'Kadalundi Bird Sanctuary', 'A haven for birdwatchers and nature\r\nlovers&nbsp;', '150', 'park', 'park', '11.1309', '75.8291', 'park'),
(266, 'Kozhikode', 'Planetarium', 'A fascinating place to learn about\r\nastronomy', '100', 'park', 'park', '11.26324', '75.78559', 'park'),
(267, 'Kozhikode', 'Hotel Sagar', 'Try their puttu and kadala curry', '245', 'vegetarian, non -vegetarian', 'hotel', '11.25941', '75.78709', 'hotel'),
(268, 'Kozhikode', 'Tali Temple', 'A historic temple with intricate\r\narchitecture', 'Free', 'Temple', 'Temple', '11.247740', '75.787338', 'Temple'),
(269, 'Kozhikode', 'Kozhikode Backwaters', 'A serene boat ride through the\r\nbackwaters', 'Free', 'backwater', 'backwater', '11.258753', '75.780411', 'backwater'),
(270, 'Kozhikode', 'Handicrafts Village', 'A place to buy traditional handicrafts', 'Free', 'shopping', 'shops', '11.258753', '75.780411', 'shops'),
(271, 'Kozhikode', 'Pazhassiraja Museum and Art Gallery', 'A museum showcasing the history of\r\nKozhikode', '150', 'Museum', 'Museum', '11.2926', '75.7779', 'Museum'),
(272, 'Kozhikode', 'Pazhassiraja Museum and Art Gallery', 'A museum showcasing the history of\r\nKozhikode', '100', 'Museum', 'Museum', '11.2926', '75.7779', 'Museum'),
(273, 'Kozhikode', 'Kozhikode Lighthouse', 'A historic lighthouse with a\r\npanoramic view', '80', 'lighthouse', 'lighthouse', '11.258753', '75.780411', 'lighthouse'),
(274, 'Wayanad', 'Edakkal Caves', 'Wear comfortable shoes as there is a\r\nbit of hiking involved', '100', 'Trekking', 'caves', '11.6268', '76.2343', 'caves'),
(275, 'Wayanad', 'Jubilee Restaurant', 'Try the local delicacy, Malabar Parotta\r\nwith Chicken Curry', '245', 'non-vegetarian,vegetarian', 'hotel', '11.748981', '75.488259', 'hotel'),
(276, 'Wayanad', 'Pookode Lake', 'Enjoy boating and take a walk around\r\nthe lake', '80', 'lake', 'lake', '11.5425', '76.0272', 'lake'),
(277, 'Wayanad', 'Banasura Sagar Dam', 'Enjoy the scenic beauty and take a\r\nboat ride', '150', 'dam', 'dam', '11.6700', '75.9578', 'dam'),
(278, 'Wayanad', ' ClayHut Village Restaurant', 'Try the traditional Kerala cuisine', '408', 'non-vegetarian,vegetarian', 'hotel', '11.709446', '76.095537', 'Hotel'),
(279, 'Wayanad', 'Chembra Peak', 'Trek to the highest peak in Wayanad', '80', 'hill', 'hill', '11.5118', '76.0887', 'hill'),
(280, 'Wayanad', 'Wilton Restaurant', 'Try the Kerala-style Biriyani', '408', 'non-vegetarian,vegetarian', 'hotel', '11.6587679225', '76.2469426295', 'Hotel'),
(281, 'Wayanad', 'Soochipara Waterfalls', 'Take a dip in the waterfall and enjoy\r\nthe scenic beauty', '80', 'waterfalls', 'waterfalls', '11.5115', '76.1638', 'waterfalls'),
(282, 'Wayanad', 'Tea Plantations', 'Take a walk through the tea\r\nplantations and learn about tea', 'Free', 'plantation', 'tea', '11.49839', '76.16349', 'tea'),
(283, 'Wayanad', 'Jubilee Restaurant', 'Try the seafood platter', '408', 'non-vegetarian,vegetarian', 'hotel', '11.748981', '75.488259', 'hotel'),
(284, 'Wayanad', 'Thirunelli Temple', 'Visit the ancient temple and take a dip\r\nin the holy river', 'Free', 'Temple', 'Temple', '11.9117', '75.9958', 'Temple'),
(285, 'Wayanad', 'Kuruva Island', 'Enjoy a boat ride and take a walk\r\nthrough the island&nbsp;', '150', 'island', 'island', '11.8217', '76.0922', 'island'),
(286, 'Wayanad', ' Hotel Hill View', 'Try the Kerala-style Fish Curry', '408', 'non-vegetarian,vegetarian', 'hotel', '11.628705', '76.081251', 'Hotel'),
(287, 'Wayanad', 'Muthanga Wildlife Sanctuary', 'Take a jeep safari and spot wildlife', '150', 'forest', 'forest', '11.6716', '76.3687', 'forest'),
(288, 'Wayanad', 'ClayHut Village Restaurant', 'Try the traditional Kerala cuisine', '245', 'vegeterian', 'hotel', '11.709446', '76.095537', 'Hotel'),
(289, 'Wayanad', 'Jain Temple', 'Visit the ancient temple and learn\r\nabout Jainism&nbsp;', '100', 'Temple', 'Temple', '11.660595', '76.250609', 'Temple'),
(290, 'Wayanad', 'Lakkidi View Point', 'Enjoy the scenic beauty and take a\r\nwalk around', 'Free', 'hill', 'hill', '11.521877', '76.024685', 'hill'),
(291, 'Wayanad', 'Hotel Green Gates', 'Try the Kerala-style Beef Fry', '245', 'non-vegetarian,vegetarian', 'hotel', '11.629310', '76.087387', 'hotel'),
(292, 'Wayanad', 'Karapuzha Dam ', 'Enjoy the scenic beauty and take a\r\nboat ride', '100', 'dam', 'dam', '11.6182', '76.1722', 'dam'),
(293, 'Wayanad', 'Kanthanpara Waterfalls', '<span style="color: rgb(189, 193, 198); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(32, 33, 36);">a quaint little waterfall in Wayanad</span>', 'Free', 'waterfalls', 'waterfalls', '11.525447', '76.153625', 'waterfalls'),
(294, 'Wayanad', 'Pakshipathalam', '<span style="color: rgb(189, 193, 198); font-family: arial, sans-serif; font-size: 14px; background-color: rgb(32, 33, 36);">It is famous for its abundance of bird</span>', 'Free', 'hill', 'hill', '11.9380', '75.9616', 'hill');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(100) NOT NULL,
  `state_id` varchar(100) NOT NULL,
  `image` tinytext NOT NULL,
  `description` text NOT NULL,
  `sub_category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `place_name`, `state_id`, `image`, `description`, `sub_category`) VALUES
(4, 'Alappuzha', 'kerala', '2023-05-01-03-51-41alleppey-backwater-tour.jpg', 'Alappuzha, also known as Alleppey, is a popular tourist destination in India. Known for its serene backwaters, houseboat cruises, and beautiful beaches, Alappuzha offers a unique experience to visitors. The city is also famous for its coir industry and traditional boat races.', 'Boat or Ferry'),
(5, 'Wayanad', 'Kerala', '2023-05-01-03-57-13wayanad.jpg', 'Wayanad, the green paradise is nestled among the mountains of the Western Ghats, forming the border world of the greener part of Kerala. Clean and pristine, enchanting and hypnotizing, this land is filled with history and culture. Located at a distance of 76 km. from the sea shores of Kozhikode, this verdant hill station is full of plantations, forests and wildlife.', 'mountain'),
(8, 'Ernakulam', 'Kerala', '2023-05-01-04-36-05ernakulam.jpg', 'Ernakulam, located in the southern state of Kerala, India, is a vibrant city that offers a unique blend of traditional and modern culture. Known for its stunning backwaters, delicious cuisine, and rich history, Ernakulam is a must-visit destination for any traveler looking to experience the beauty of India.', 'City'),
(9, 'Kottayam', 'Kerala', '2023-05-09-11-37-41KOTTAYAM.png', 'Kottayam is a city in the Indian state of Kerala.It is located in central Kerala and is also the administrative capital of Kottayam district.Bordered by the lofty and mighty Western Ghats on the east and the Vembanad Lake and paddy fields of Kuttanad on the west, Kottayam is a land of unique characteristics.Panoramic backwater stretches, lush paddy fields, highlands, hills and hillocks, extensive rubber plantations, places assoc', 'district'),
(10, 'Thrissur', 'Kerala', '2023-05-09-11-39-08thrissur.jpg', 'Thrissur is a city in the south Indian state of Kerala. It''s known for sacred sites and colorful festivals. In the center is Vadakkumnathan Temple, dedicated to Lord Shiva and adorned with murals. The ornate, Indo-Gothic Our Lady of Dolours Basilica is nearby. To the north, Thiruvambady Temple is home to several elephants. Sakthan Thampuran Palace houses an archaeology museum with bronze statues and ancient coins', 'district'),
(11, 'Malappuram', 'Kerala', '2023-05-09-11-40-18malappuram.jpg', 'Malappuram is a city in the Indian state of Kerala, spread over an area of 158.20 kmÂ² including the surrounding suburban areas. The first municipality in the district formed in 1970, Malappuram serves as the administrative headquarters of Malappuram district.', 'district'),
(12, 'Kannur', 'Kerala', '2023-05-09-11-42-14kannur.jpg', 'Kannur is a coastal city in the south Indian state of Kerala. It was once an ancient trading port. Enduring monuments such as 16th-century St. Angelo Fort, once occupied by European colonial forces, show the cityâ€™s significant role in the spice trade. Housed in a former palace, the Arakkal Museum highlights Kerala''s one Muslim royal family. The palm-fringed sands of Payyambalam Beach run along Kannurâ€™s western shore. ', 'district'),
(13, 'Kozhikode', 'Kerala', '2023-05-09-11-43-39kozhikode.jpg', 'Kozhikode is a coastal city in the south Indian state of Kerala. It was a significant spice trade center and is close to Kappad Beach, where Portuguese explorer Vasco da Gama landed in 1498. The central Kozhikode Beach, overlooked by an old lighthouse, is a popular spot for watching the sunset. Inland, tree-lined Mananchira Square, with its musical fountain, surrounds the massive Mananchira Tank, an artificial pond.', 'district'),
(14, 'Kasaragod', 'Kerala', '2023-05-09-11-44-36kasaragod-kerala.jpg', 'Kasaragod is a municipal town and administrative headquarters of Kasaragod district in the state of Kerala, India. Established in 1966, Kasaragod was the first municipal town in the district. It is the northernmost district of Kerala and is also known as Saptha Bhasha Sangama Bhoomi.', 'district'),
(15, 'Palakkad', 'Kerala', '2023-05-09-11-45-25Palakkad_Tipu_Fort.jpg', 'Palakkad, or Palghat, is a city in Kerala, a state in southwestern India. The 18th-century Palakkad Fort has sturdy battlements, a moat and a Hanuman temple on its grounds. North, on the Kalpathy River, the 15th-century Viswanatha Swamy Temple is the main venue of the famous Ratholsavam chariot festival. Northeast, near Malampuzha Dam, the town of Malampuzha has a rock garden created from recycled materials.', 'district'),
(16, 'Pathanamthitta', 'Kerala', '2023-05-09-11-46-23perunthenaruvi-waterfall.jpg', 'Pathanamthitta, is a municipality situated in the Central Travancore region in the state of Kerala, India, spread over an area of 23.50 kmÂ². It is the administrative capital of Pathanamthitta district. The town has a population of 37,538.', 'district'),
(17, 'Kollam', 'Kerala', '2023-05-09-11-47-57kollam.png', 'Kollam is a city in the state of Kerala, on India''s Malabar Coast. Itâ€™s known as a trade hub and for its beaches, like lively Kollam and secluded Thirumullavaram. Sardar Vallabhbhai Patel Police Museum has artifacts tracing the history of the police force. Nearby, Ashtamudi Lake is a gateway to the Kerala backwaters, a network of waterways rich with vegetation. The striped 1902 Tangasseri Lighthouse has ocean views. ', 'district'),
(18, 'Thiruvananthapuram', 'Kerala', '2023-05-09-11-49-13Kovalam-Beach.jpg', 'Thiruvananthapuram (or Trivandrum) is the capital of the southern Indian state of Kerala. It''s distinguished by its British colonial architecture and many art galleries. Itâ€™s also home to Kuthira Malika (or Puthen Malika) Palace, adorned with carved horses and displaying collections related to the Travancore royal family, whose regional capital was here from the 18thâ€“20th centuries.', 'district'),
(19, 'Idukki', 'Kerala', '2023-05-09-11-50-29Idukki009.jpg', 'Idukki district is a densely forested, mountainous region in the south Indian state of Kerala. In the north, Anamudi mountain towers over Eravikulam National Park, where the rare, blue Neelakurinji flower blooms every 12 years. Nearby, Munnar is a hill station known for its sprawling tea plantations and Tea Museum. Farther south is the vast, curved Idukki Dam and Periyar National Park, a tiger and elephant reserve.', 'district');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL,
  `image` tinytext NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state_name`, `image`, `status`) VALUES
(1, 'Kerala', '2023-04-18-02-24-09bg_5.jpg', 'popular'),
(2, 'Goa', '2023-04-18-02-24-21bg_4.jpg', 'popular'),
(4, 'Mumbai', '2023-04-18-02-46-38services-3.jpg', 'no');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
