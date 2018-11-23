-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2018 at 01:32 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `VoterID_Management_System`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `id` int(10) NOT NULL,
  `HouseNo` text,
  `Street` varchar(255) NOT NULL,
  `City_Vilage` varchar(50) NOT NULL,
  `State` varchar(60) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Pincode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`id`, `HouseNo`, `Street`, `City_Vilage`, `State`, `Country`, `Pincode`) VALUES
(1, '01', 'New Bairahana', 'Prayagraj', 'Uttar Pradesh', 'India', '211003'),
(2, '02', 'Dhoomanganj', 'Prayagraj', 'Uttar Pradesh', 'India', '211007'),
(3, '03', 'Vidyanagar Marg', 'Mumbai', 'Maharashtra', 'India', '400049'),
(4, '04', 'Vidyut Marg', 'Bhubaneswar', 'Odisha', 'India', '144416'),
(5, '05', 'Budh Vihar Phase I', 'New Delhi', 'Delhi', 'India', '110086'),
(6, '06', 'Tilak Nagar Allahpur', 'Prayagraj', 'Uttar Pradesh', 'India', '211006'),
(7, '07', 'Tilak Nagar', 'New Delhi', 'Delhi', 'India', '110018'),
(8, '08', 'Moti Nagar', 'New Delhi', 'Delhi', 'India', '110015'),
(9, '09', 'MuradNagar', 'Ghaziabad', 'Uttar Pradesh', 'India', '201206'),
(10, '10', 'Dholana', 'Ghaziabad', 'Uttar Pradesh', 'India', '276405'),
(11, '11', 'Muirabad Road Rishikesh', 'Dehradun', 'Uttarakhand', 'India', '249201'),
(12, '12', 'SC Bose Marg', 'Bolangir', 'Odisha', 'India', '767001'),
(13, '13', 'Lala Lajpat Rai Road', 'Jalgaon', 'Maharashtra', 'India', '425101'),
(14, '14', 'MG Marg', 'Bareilly', 'Uttar Pradesh', 'India', '243003'),
(15, '15', 'SP Marg', 'Meerut', 'Uttar Pradesh', 'India', '250103'),
(16, '16', 'Shankar Lal Bhargava Marg', 'Dhanbad', 'Jharkhand', 'India', '828116'),
(17, '17', 'Rambagh', 'Guwahati', 'Assam', 'India', '787028'),
(18, '18', 'Imphal Bazaar', 'Imphal', 'Manipur', 'India', '795001'),
(19, '19', 'Swaroop Nagar', 'Kanpur', 'Uttar Pradesh', 'India', '208024'),
(20, '20', 'B Block Panki', 'Kharagpur', 'West Bengal', 'India', '721306'),
(21, '21', 'Barsaitpur Kachchiyana Kalyanpur', 'Bhopal', 'Madhya Pradesh', 'India', '485775'),
(22, '22', 'Race Course Road', 'New Delhi', 'Delhi', 'India', '110022'),
(23, '23', 'Diglipur', 'Kolkata', 'West Bengal', 'India', '744202'),
(24, '24', 'MS Nagar', 'Kurnool', 'Andhra Pradesh', 'India', '518002'),
(25, '25', 'Palahgarh Darrang', 'Guwahati', 'Assam', 'India', '784521'),
(26, '26', 'Deo Nagar Uchirwa', 'Patna', 'Bihar', 'India', '824237'),
(27, '27', 'Samnapur Durg', 'Raipur', 'Chattisgarh', 'India', '491888'),
(28, '28', 'Maujpur Delhi East', 'New Delhi', 'Delhi', 'India', '110053'),
(29, '29', 'Malcha Marg South West', 'New Delhi', 'Delhi', 'India', '110021'),
(30, '30', 'DLF Mall Road East Delhi', 'New Delhi', 'Delhi', 'India', '110040'),
(31, '31', 'Pratapganj Vadodra West', 'Vadodra', 'Gujarat', 'India', '390002'),
(32, '32', 'Nageshri Amreli', 'Rajkot', 'Gujarat', 'India', '365545'),
(33, '33', 'Chamar Khera Hissar', 'Ambala', 'Haryana', 'India', '125113'),
(34, '34', 'Panjahal Solan', 'Shimla', 'Himachal Pradesh', 'India', '173001'),
(35, '35', 'Chani Himat Jammu', 'Srinagar', 'Jammu & Kashmir', 'India', '180015'),
(36, '36', 'Jugsalai Singhbhum', 'Ranchi', 'Jharkhand', 'India', '831006'),
(37, '37', 'MalakSamudra Gadag', 'North Karnataka', 'Karnataka', 'India', '583236'),
(38, '38', 'Cheekkonnummal Vadakara', 'Calicut', 'Kerala', 'India', '673507'),
(39, '39', 'Bajranggarh Guna', 'Indore', 'Madhya Pradesh', 'India', '473249'),
(40, '40', 'Baliwali Palghar', 'Navi Mumbai', 'Maharashtra', 'India', '421303'),
(41, '41', 'Parjang Denkanal', 'Sambalpur', 'Odisha', 'India', '759120'),
(42, '42', 'Vijaynagar', 'Bhubaneswar', 'Odisha', 'India', '752111'),
(43, '43', 'Kishankot Gurdaspur', 'Chandigarh', 'Punjab', 'India', '143515'),
(44, '44', 'Manpasar Kota', 'Ajmer', 'Rajasthan', 'India', '326037'),
(45, '45', 'Perundurai Sanitorium Erode', 'Coimbatore', 'Tamil Nadu', 'India', '638053'),
(46, '46', 'Kothapalli Hanamkonda', 'Hydrebad', 'Telangana', 'India', '506301'),
(47, '47', '211016', 'Prayagraj', 'Uttar Pradesh', 'India', '211016'),
(48, '48', 'KM Street Kanpur City', 'Kanpur', 'Uttar Pradesh', 'India', '208001'),
(49, '49', 'Gananath Vidyapeeth Almora', 'Dehradun', 'Uttarakhand', 'India', '263628'),
(50, '50', 'Arjun Lal Sethi Nagar Jaipur City', 'Jaipur', 'Rajasthan', 'India', '302004');

-- --------------------------------------------------------

--
-- Table structure for table `Constituency`
--

CREATE TABLE `Constituency` (
  `ID` int(10) NOT NULL,
  `state` varchar(60) DEFAULT NULL,
  `district` varchar(60) DEFAULT NULL,
  `parliamentaryConstituency` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Constituency`
--

INSERT INTO `Constituency` (`ID`, `state`, `district`, `parliamentaryConstituency`) VALUES
(1, 'Uttar Pradesh', 'Prayagraj', 'Prayagraj South'),
(2, 'Uttar Pradesh', 'Prayagraj', 'Prayagraj North'),
(3, 'Maharashtra', 'Mumbai', 'Mumbai South Central'),
(4, 'Odisha', 'Bhubaneswar', 'Ekamra-Bhubaneswar'),
(5, 'Delhi', 'New Delhi', 'New Delhi'),
(6, 'Uttar Pradesh', 'Prayagraj', 'Prayagraj South'),
(7, 'Delhi', 'New Delhi', 'South Delhi'),
(8, 'Delhi', 'New Delhi', 'West Delhi'),
(9, 'Uttar Pradesh', 'Ghaziabad', 'Muradnagar'),
(10, 'Uttar Pradesh', 'Ghaziabad', 'Dholana'),
(11, 'Uttarakhand', 'Dehradun', 'Haridwar'),
(12, 'Odisha', 'Bolangir', 'Bolangir'),
(13, 'Maharashtra', 'Jalgaon', 'Jalgaon'),
(14, 'Uttar Pradesh', 'Bareilly', 'Bareilly'),
(15, 'Uttar Pradesh', 'Meerut', 'Kithore'),
(16, 'Jharkhand', 'Dhanbad', 'Dhanbad'),
(17, 'Assam', 'Guwahati', 'Barkhetry'),
(18, 'Manipur', 'Imphal', 'Inner Manipur'),
(19, 'Uttar Pradesh', 'Kanpur', 'Kanpur Nagar'),
(20, 'West Bengal', 'Kharagpur', 'Medinipur'),
(21, 'Madhya Pradesh', 'Bhopal', 'Bhopal'),
(22, 'Delhi', 'New Delhi', 'North East Delhi'),
(23, 'West Bengal', 'Kolkata', 'Kolkata Dakshin'),
(24, 'Andhra Pradesh', 'Kurnool', 'Kurnool'),
(25, 'Assam', 'Guwahati', 'Gauhati West'),
(26, 'Bihar', 'Patna', 'Patna Sahib'),
(27, 'Chattisgarh', 'Raipur', 'Raipur'),
(28, 'Delhi', 'New Delhi', 'North West Delhi'),
(29, 'Delhi', 'New Delhi', 'West Delhi'),
(30, 'Delhi', 'New Delhi', 'East Delhi'),
(31, 'Gujarat', 'Vadodara', 'Vadodara'),
(32, 'Gujarat', 'Rajkot', 'Rajkot'),
(33, 'Haryana', 'Ambala', 'Hisar'),
(34, 'Himachal Pradesh', 'Shimla', 'Shimla'),
(35, 'Jammu & Kashmir', 'Srinagar', 'Srinagar'),
(36, 'Jharkhand', 'Ranchi', 'Ranchi'),
(37, 'Karnataka', 'North Karnataka', 'Koppal'),
(38, 'Kerala', 'Calicut', 'Kozhikode'),
(39, 'Madhya Pradesh', 'Indore', 'Indore'),
(40, 'Maharashtra', 'Calicut', 'Kozhikode'),
(41, 'Odisha', 'Sambalpur', 'Sambalpur'),
(42, 'Odisha', 'Bhubaneswar', 'Ekamra-Bhubaneswar'),
(43, 'Punjab', 'Chandigarh', 'Chandigarh'),
(44, 'Rajasthan', 'Ajmer', 'Ajmer'),
(45, 'Tamil Nadu', 'Coimbatore', 'Coimbatore North'),
(46, 'Telangana', 'Hyderabad', 'Hyderabad'),
(47, 'Uttar Pradesh', 'Prayagraj', 'Phulpur'),
(48, 'Uttar Pradesh', 'Kanpur', 'Prayagaj East'),
(49, 'Uttarakhand', 'Dehradun', 'Chakrata'),
(50, 'Rajasthan', 'Jaipur', 'Jaipur Rural');

-- --------------------------------------------------------

--
-- Table structure for table `VoterDetail`
--

CREATE TABLE `VoterDetail` (
  `ID` int(10) NOT NULL,
  `firstName` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `fatherName` varchar(60) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VoterDetail`
--

INSERT INTO `VoterDetail` (`ID`, `firstName`, `lastname`, `fatherName`, `gender`, `age`) VALUES
(1, 'Avnish Kumar', 'Kashyap', 'Ram Sanehi Kashyap', 'Male', 20),
(2, 'Sudhanshu', 'Rawat', 'Sushil Chandra', 'Male', 20),
(3, 'Aman', 'Panda', 'Narayana Panda', 'Male', 23),
(4, 'Rekha ', 'Khamavant', 'Sarama Khamavant', 'Female', 27),
(5, 'Anand', 'Mukhtar', 'Ishwar Mukhtar', 'Male', 35),
(6, 'Govind', 'Singh', 'Ruldu Singh', 'Male', 47),
(7, 'Uma', 'Nayar', 'Sukanya Nayar', 'Female', 55),
(8, 'Rani', 'Srivastava', 'Shakti Srivastava', 'Female', 19),
(9, 'Jawahar', 'Chaudhari', 'Anil Chaudhari', 'Male', 29),
(10, 'Sharad', 'Mishra', 'Praveen Mishra', 'Male', 21),
(11, 'Jyoti ', 'Pandya', 'Raghu Pandya', 'Female', 24),
(12, 'Keshav', 'Tavade', 'Santosh Tavade', 'Male', 28),
(13, 'Durga', 'Gupta', 'Krishna Gupta', 'Female', 63),
(14, 'Harsh Vardhan', 'Singh', 'Shyam Singh', 'Male', 20),
(15, 'Antra', 'Tripathi', 'Sushil Tripathi', 'Female', 21),
(16, 'Shashank ', 'Shukla', 'Pramod Shukla', 'Male', 20),
(17, 'Shashwat Singh', 'Chauhan', 'Ajay Singh Chauhan', 'Male', 22),
(18, 'Anamika ', 'Dwivedi', 'Arun Dwivedi', 'Female', 47),
(19, 'Yash', 'Srivastava', 'Pranav Srivastava', 'Male', 78),
(20, 'Avinash Kumar', 'Yadav', 'Ashutosh Yadav', 'Male', 21),
(21, 'Vasundhara', 'Singh', 'Sharad Singh', 'Female', 20),
(22, 'Pranjal ', 'Srivastava', 'Amarjeet Srivastava', 'Female', 85),
(23, 'Robin', 'Singh', 'Akhilesh Singh', 'Male', 90),
(24, 'Aanchal ', 'Rai', 'Rajendra Rai', 'Female', 39),
(25, 'Elesha ', 'Malviya', 'Amrit Malviya', 'Female', 22),
(26, 'Ram Nath', 'Nishad', 'Motilal Nishad', 'Male', 83),
(27, 'Ritesh ', 'Daruwala', 'Dheeraj Daruwala', 'Male', 44),
(28, 'Anushthan', 'Banerjee', 'Raju Banerjee', 'Male', 21),
(29, 'Prateek', 'Srivastava', 'Prakash Srivastava', 'Male', 35),
(30, 'Meenakshi', 'Sarkar', 'Subhash Sarkar', 'Female', 26),
(31, 'Akash', 'Ghoshal', 'Amrish Ghoshal', 'Male', 49),
(32, 'Prabakhar', 'Gadhavi', 'Harish Gadhavi', 'Male', 73),
(33, 'Surbhi', 'Rana', 'Amanjeet Rana', 'Female', 18),
(34, 'Sanjeet ', 'Bachchan', 'Anoop', 'Bachch', 93),
(35, 'Padmini', 'Nibhanupudi', 'Ajeet Nibhanupudi', 'Female', 61),
(36, 'Alia', 'Gupta', 'Azaad Gupta', 'Female', 71),
(37, 'Dhaval', 'Patel', 'Madhukar Patel', 'Male', 39),
(38, 'Inderpal', 'Chaudhary', 'Pallav Chaudhary', 'Male', 53),
(39, 'Ranj ', 'Patil', 'Apoorva Patil', 'Male', 31),
(40, 'Nilam', 'Kumar', 'Gurmeet Kumar', 'Male', 81),
(41, 'Kalyan', 'Joshi', 'Raghu Joshi', 'Male', 37),
(42, 'Shyam', 'Tamboli', 'Lal Tamboli', 'Male', 59),
(43, 'Aahana', 'Pandey', 'Mahavir Pandey', 'Female', 42),
(44, 'Komal', 'D\'cruz', 'Shiva D\'cruz', 'Female', 58),
(45, 'Divya', 'Narang', 'Jayendra Narang', 'Female', 48),
(46, 'Sita', 'Jogalekar', 'Harshad Jogalekar', 'Female', 22),
(47, 'Palak', 'Gaur', 'Rajendra Gaur', 'Female', 32),
(48, 'Sadhana', 'Anand', 'Sanjit Anand', 'Female', 55),
(49, 'Chandan', 'Mhasalkar', 'Parminder Mhasalkar', 'Male', 37),
(50, 'Roshan', 'Choudhary', 'Anantha Choudhary', 'Male', 73);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Constituency`
--
ALTER TABLE `Constituency`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `VoterDetail`
--
ALTER TABLE `VoterDetail`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Address`
--
ALTER TABLE `Address`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `Constituency`
--
ALTER TABLE `Constituency`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `VoterDetail`
--
ALTER TABLE `VoterDetail`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Address`
--
ALTER TABLE `Address`
  ADD CONSTRAINT `Address_ibfk_1` FOREIGN KEY (`id`) REFERENCES `VoterDetail` (`ID`);

--
-- Constraints for table `Constituency`
--
ALTER TABLE `Constituency`
  ADD CONSTRAINT `Constituency_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `VoterDetail` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
