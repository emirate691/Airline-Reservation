-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 03:35 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation_airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `Id` int(11) NOT NULL,
  `Airport_code` char(3) DEFAULT NULL,
  `Airport_Name` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL,
  `Country_Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`Id`, `Airport_code`, `Airport_Name`, `City`, `country_code`, `Country_Name`) VALUES
(1, 'ILR', 'Ilorin International Airport', 'Ilorin', '23', 'Nigeria'),
(2, 'ILR', 'Ilorin International Airport', 'Ilorin', '23', 'Nigeria'),
(3, 'LOS', 'Muhammed Muritala International Airport', 'Lagos', 'NG', 'Nigeria'),
(4, 'ABV', 'Nnamdi Azkwe International Airport', 'Abuja', 'NG', 'Nigeria'),
(5, 'KAN', 'AMINU KANO International Airport', 'Kano', 'NG', 'Nigeria'),
(6, 'PHC', 'Port Harcout International Airport', 'Port Harcout', 'NG', 'Nigeria'),
(7, 'ILR', 'Ilorin International Airport', 'Ilorin', '23', 'Nigeria'),
(8, 'LOS', 'Muhammed Muritala International Airport', 'Lagos', 'NG', 'Nigeria'),
(9, 'ABV', 'Nnamdi Azkwe International Airport', 'Abuja', 'NG', 'Nigeria'),
(10, 'KAN', 'AMINU KANO International Airport', 'Kano', 'NG', 'Nigeria'),
(11, 'PHC', 'Port Harcout International Airport', 'Port Harcout', 'NG', 'Nigeria');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `Origin_Airport_code` char(3) DEFAULT NULL,
  `Destination_Airport_code` char(3) DEFAULT NULL,
  `Flight_class` varchar(45) DEFAULT NULL,
  `Departure_Date` date DEFAULT NULL,
  `Flight_Price` decimal(10,0) DEFAULT NULL,
  `Seat_No` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Id`, `client_id`, `Origin_Airport_code`, `Destination_Airport_code`, `Flight_class`, `Departure_Date`, `Flight_Price`, `Seat_No`) VALUES
(1, 2, 'ILR', 'LOS', 'Firstclass', '2020-02-29', '25000', '10'),
(2, 3, 'ABV', 'LOS', 'Firstclass', '2020-02-20', '45000', '70'),
(3, 1, 'LOS', 'PHC', 'Economy', '2020-04-19', '5000', '15'),
(4, 5, 'KAN', 'LOS', 'Firstclass', '2020-02-19', '50000', '45'),
(5, 4, 'LOS', 'ILR', 'Economy', '2020-03-01', '35000', '9');

-- --------------------------------------------------------

--
-- Table structure for table `clientdetail`
--

CREATE TABLE `clientdetail` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `MiddleName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Age` int(2) DEFAULT NULL,
  `phone_Number` varchar(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `E_mail` varchar(45) DEFAULT NULL,
  `Passport` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientdetail`
--

INSERT INTO `clientdetail` (`id`, `FirstName`, `MiddleName`, `LastName`, `Age`, `phone_Number`, `Address`, `E_mail`, `Passport`) VALUES
(1, 'Nnamdi', 'Prince', 'Okeke', 45, '08160239145', 'No 55 Ajorin Street Aloka Lagos', 'namprice@gmail.com', 0),
(2, 'Yusuf', 'Ayinla', 'Oriade', 30, '08030633491', 'No 5 NAF Quarters Ilorin', 'oriadey@gmail.com', 0),
(3, 'Ado', 'Garba', 'Dutse', 55, '08070539245', 'BUPOLY Hadejia', 'adogarba@gmail.com', 0),
(4, 'Yahyah', 'Fatimoh', 'Funmi', 45, '07055052875', 'No 5 A_Z plaza Street Aminu Kano Way', 'fatimohyahyah@@gmail.com', 0),
(5, 'Ali', 'Issa', 'Opeyemi', 20, '09024578901', 'Oluwaloseyi Amala joint Utako Abuja', 'a.issa@yahoomail.com', 0),
(6, 'Nnamdi', 'Prince', 'Okeke', 45, '08160239145', 'No 55 Ajorin Street Aloka Lagos', 'namprice@gmail.com', 0),
(7, 'Yusuf', 'Ayinla', 'Oriade', 30, '08030633491', 'No 5 NAF Quarters Ilorin', 'oriadey@gmail.com', 0),
(8, 'Ado', 'Garba', 'Dutse', 55, '08070539245', 'BUPOLY Hadejia', 'adogarba@gmail.com', 0),
(9, 'Yahyah', 'Fatimoh', 'Funmi', 45, '07055052875', 'No 5 A_Z plaza Street Aminu Kano Way', 'fatimohyahyah@@gmail.com', 0),
(10, 'Ali', 'Issa', 'Opeyemi', 20, '09024578901', 'Oluwaloseyi Amala joint Utako Abuja', 'a.issa@yahoomail.com', 0),
(11, 'Nnamdi', 'Prince', 'Okeke', 45, '08160239145', 'No 55 Ajorin Street Aloka Lagos', 'namprice@gmail.com', 0),
(12, 'Yusuf', 'Ayinla', 'Oriade', 30, '08030633491', 'No 5 NAF Quarters Ilorin', 'oriadey@gmail.com', 0),
(13, 'Ado', 'Garba', 'Dutse', 55, '08070539245', 'BUPOLY Hadejia', 'adogarba@gmail.com', 0),
(14, 'Yahyah', 'Fatimoh', 'Funmi', 45, '07055052875', 'No 5 A_Z plaza Street Aminu Kano Way', 'fatimohyahyah@@gmail.com', 0),
(15, 'Ali', 'Issa', 'Opeyemi', 20, '09024578901', 'Oluwaloseyi Amala joint Utako Abuja', 'a.issa@yahoomail.com', 0),
(16, 'Nnamdi', 'Prince', 'Okeke', 45, '08160239145', 'No 55 Ajorin Street Aloka Lagos', 'namprice@gmail.com', 0),
(17, 'Yusuf', 'Ayinla', 'Oriade', 30, '08030633491', 'No 5 NAF Quarters Ilorin', 'oriadey@gmail.com', 0),
(18, 'Ado', 'Garba', 'Dutse', 55, '08070539245', 'BUPOLY Hadejia', 'adogarba@gmail.com', 0),
(19, 'Yahyah', 'Fatimoh', 'Funmi', 45, '07055052875', 'No 5 A_Z plaza Street Aminu Kano Way', 'fatimohyahyah@@gmail.com', 0),
(20, 'Ali', 'Issa', 'Opeyemi', 20, '09024578901', 'Oluwaloseyi Amala joint Utako Abuja', 'a.issa@yahoomail.com', 0),
(21, 'Nnamdi', 'Prince', 'Okeke', 45, '08160239145', 'No 55 Ajorin Street Aloka Lagos', 'namprice@gmail.com', 0),
(22, 'Yusuf', 'Ayinla', 'Oriade', 30, '08030633491', 'No 5 NAF Quarters Ilorin', 'oriadey@gmail.com', 0),
(23, 'Ado', 'Garba', 'Dutse', 55, '08070539245', 'BUPOLY Hadejia', 'adogarba@gmail.com', 0),
(24, 'Yahyah', 'Fatimoh', 'Funmi', 45, '07055052875', 'No 5 A_Z plaza Street Aminu Kano Way', 'fatimohyahyah@@gmail.com', 0),
(25, 'Ali', 'Issa', 'Opeyemi', 20, '09024578901', 'Oluwaloseyi Amala joint Utako Abuja', 'a.issa@yahoomail.com', 0),
(26, 'Nnamdi', 'Prince', 'Okeke', 45, '08160239145', 'No 55 Ajorin Street Aloka Lagos', 'namprice@gmail.com', 0),
(27, 'Yusuf', 'Ayinla', 'Oriade', 30, '08030633491', 'No 5 NAF Quarters Ilorin', 'oriadey@gmail.com', 0),
(28, 'Ado', 'Garba', 'Dutse', 55, '08070539245', 'BUPOLY Hadejia', 'adogarba@gmail.com', 0),
(29, 'Yahyah', 'Fatimoh', 'Funmi', 45, '07055052875', 'No 5 A_Z plaza Street Aminu Kano Way', 'fatimohyahyah@@gmail.com', 0),
(30, 'Ali', 'Issa', 'Opeyemi', 20, '09024578901', 'Oluwaloseyi Amala joint Utako Abuja', 'a.issa@yahoomail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `flight_ticket`
--

CREATE TABLE `flight_ticket` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `Ticket_Number` varchar(255) DEFAULT NULL,
  `Flight_class` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `Destination` varchar(255) DEFAULT NULL,
  `Seat_No` varchar(35) DEFAULT NULL,
  `Takeoff_Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_ticket`
--

INSERT INTO `flight_ticket` (`id`, `client_id`, `Ticket_Number`, `Flight_class`, `city`, `Destination`, `Seat_No`, `Takeoff_Time`) VALUES
(1, 1, '203471023', 'Firstclass', 'Lagos', 'Port Harcout', '023', '14:30:00'),
(2, 3, '304589100', 'Economy', 'Ilorin', 'Lagos', '100', '08:00:00'),
(3, 2, '100786003', 'Firstclass', 'Kano', 'Ilorin', '003', '21:50:00'),
(4, 1, '107345011', 'Economy', 'Lagos', 'Abuja', '011', '12:00:00'),
(5, 1, '408934020', 'Firstclass', 'Abuja', 'Lagos', '020', '07:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `travel_class`
--

CREATE TABLE `travel_class` (
  `travel_class_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_class`
--

INSERT INTO `travel_class` (`travel_class_id`, `name`) VALUES
(1, 'Firstclass'),
(2, 'Economy'),
(3, 'Firstclass'),
(4, 'Economy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `client_id` (`client_id`);

--
-- Indexes for table `clientdetail`
--
ALTER TABLE `clientdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_ticket`
--
ALTER TABLE `flight_ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `travel_class`
--
ALTER TABLE `travel_class`
  ADD PRIMARY KEY (`travel_class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clientdetail`
--
ALTER TABLE `clientdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `flight_ticket`
--
ALTER TABLE `flight_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `travel_class`
--
ALTER TABLE `travel_class`
  MODIFY `travel_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clientdetail` (`id`);

--
-- Constraints for table `flight_ticket`
--
ALTER TABLE `flight_ticket`
  ADD CONSTRAINT `flight_ticket_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clientdetail` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
