-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 03:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Acc_id` int(11) NOT NULL,
  `acc_password` varchar(45) DEFAULT NULL,
  `acc_email` varchar(25) DEFAULT NULL,
  `emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_user`
--

CREATE TABLE `acc_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `Acc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminstrator`
--

CREATE TABLE `adminstrator` (
  `admine_id` int(11) NOT NULL,
  `admine_name` varchar(32) NOT NULL,
  `Acc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ctray_results`
--

CREATE TABLE `ctray_results` (
  `CTRay_ID` int(11) NOT NULL,
  `CTName` varchar(25) NOT NULL,
  `CTDescription` varchar(25) NOT NULL,
  `CTResult` varchar(25) NOT NULL,
  `CTRTime` time NOT NULL,
  `CTRDate` date NOT NULL,
  `ray_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `Specialization` varchar(50) NOT NULL,
  `years_experiance` int(3) NOT NULL,
  `licence_number` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dr_reports`
--

CREATE TABLE `dr_reports` (
  `DReport_ID` int(11) NOT NULL,
  `DReTime` time NOT NULL,
  `Result` varchar(25) NOT NULL,
  `RDescription` varchar(25) NOT NULL,
  `RDate` date NOT NULL,
  `RName` varchar(20) NOT NULL,
  `doc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `EmployeeType` varchar(20) NOT NULL,
  `shift` varchar(25) NOT NULL,
  `BIRTHDAY` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examinition_test`
--

CREATE TABLE `examinition_test` (
  `EX_ID` int(11) NOT NULL,
  `ExTime` time NOT NULL,
  `Diagnosis` varchar(25) NOT NULL,
  `Dose` varchar(25) NOT NULL,
  `Test_Type` varchar(25) NOT NULL,
  `ExDate` date NOT NULL,
  `pat_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hos_ID` int(11) NOT NULL,
  `Availability` varchar(25) NOT NULL,
  `Hdate` date NOT NULL,
  `SubType` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icu`
--

CREATE TABLE `icu` (
  `ICU_ID` int(11) NOT NULL,
  `ICU_no` int(11) NOT NULL,
  `hos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE `laboratory` (
  `LAB_ID` int(11) NOT NULL,
  `lab_no` int(11) NOT NULL,
  `lab_Equipment` varchar(25) NOT NULL,
  `hos_id` int(11) NOT NULL,
  `TechnicalID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labs_results`
--

CREATE TABLE `labs_results` (
  `Labs_ID` int(11) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `LDescription` varchar(25) NOT NULL,
  `LResult` varchar(25) NOT NULL,
  `LTime` time NOT NULL,
  `LDate` date NOT NULL,
  `lap_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_equipment`
--

CREATE TABLE `medical_equipment` (
  `medequ_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `avialibly` varchar(10) NOT NULL,
  `technical_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_record`
--

CREATE TABLE `medical_record` (
  `MR_ID` int(11) NOT NULL,
  `Endemic` varchar(25) DEFAULT NULL,
  `Medicine` varchar(25) NOT NULL,
  `IDDM` varchar(20) DEFAULT NULL,
  `EX_Clinic` varchar(20) DEFAULT NULL,
  `Bp` varchar(20) DEFAULT NULL,
  `doc_id` int(11) NOT NULL,
  `pat_id` int(11) NOT NULL,
  `admine_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `Medicine_ID` int(11) NOT NULL,
  `MedName` varchar(25) NOT NULL,
  `MDescription` varchar(25) NOT NULL,
  `Dosage_instructions` varchar(25) NOT NULL,
  `pharmacy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `NurseID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `nursing_spectialty` varchar(25) NOT NULL,
  `years_experiance` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nurseschedule`
--

CREATE TABLE `nurseschedule` (
  `NS_ID` int(11) NOT NULL,
  `NSTime` time NOT NULL,
  `StateOfHealth` varchar(25) NOT NULL,
  `RDate` date NOT NULL,
  `pat_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `nurse_id` int(11) NOT NULL,
  `hos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Pat_ID` int(11) NOT NULL,
  `F_Name` varchar(25) NOT NULL,
  `L_Name` varchar(25) NOT NULL,
  `Phone_Number` int(11) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Street` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `AccHome` varchar(20) DEFAULT NULL,
  `Accwork` varchar(20) DEFAULT NULL,
  `Accstreet` varchar(20) DEFAULT NULL,
  `Medical_History` varchar(50) NOT NULL,
  `hos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `pharm_id` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `license_number` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `Pharmacy_ID` int(11) NOT NULL,
  `Mediciene_Availabilty` varchar(25) NOT NULL,
  `pharm_id` int(11) NOT NULL,
  `hos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `raylab`
--

CREATE TABLE `raylab` (
  `Ray_ID` int(11) NOT NULL,
  `lab_no` int(11) NOT NULL,
  `lab_Equipment` varchar(25) NOT NULL,
  `hos_id` int(11) NOT NULL,
  `TechnicalID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `recep_id` int(11) NOT NULL,
  `experience_year` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `pat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rom_ID` int(11) NOT NULL,
  `ER_Rom` varchar(25) NOT NULL,
  `General_Rom` varchar(25) NOT NULL,
  `NomOfBeds` varchar(20) NOT NULL,
  `Room_no` varchar(25) NOT NULL,
  `hos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `technical`
--

CREATE TABLE `technical` (
  `TechnicalID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `Skill` varchar(50) NOT NULL,
  `equpment_experience` varchar(80) NOT NULL,
  `spectialization` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xray_results`
--

CREATE TABLE `xray_results` (
  `XRay_ID` int(11) NOT NULL,
  `XName` varchar(25) NOT NULL,
  `XRDescription` varchar(25) NOT NULL,
  `XResult` varchar(25) NOT NULL,
  `XRTime` time NOT NULL,
  `XRDate` date NOT NULL,
  `ray_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Acc_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `acc_user`
--
ALTER TABLE `acc_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `Acc_id` (`Acc_id`);

--
-- Indexes for table `adminstrator`
--
ALTER TABLE `adminstrator`
  ADD PRIMARY KEY (`admine_id`),
  ADD KEY `Acc_id` (`Acc_id`);

--
-- Indexes for table `ctray_results`
--
ALTER TABLE `ctray_results`
  ADD PRIMARY KEY (`CTRay_ID`),
  ADD KEY `ray_id` (`ray_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `dr_reports`
--
ALTER TABLE `dr_reports`
  ADD PRIMARY KEY (`DReport_ID`),
  ADD KEY `doc_id` (`doc_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `examinition_test`
--
ALTER TABLE `examinition_test`
  ADD PRIMARY KEY (`EX_ID`),
  ADD KEY `pat_id` (`pat_id`),
  ADD KEY `doc_id` (`doc_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hos_ID`);

--
-- Indexes for table `icu`
--
ALTER TABLE `icu`
  ADD PRIMARY KEY (`ICU_ID`),
  ADD KEY `hos_id` (`hos_id`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`LAB_ID`),
  ADD KEY `hos_id` (`hos_id`),
  ADD KEY `TechnicalID` (`TechnicalID`);

--
-- Indexes for table `labs_results`
--
ALTER TABLE `labs_results`
  ADD PRIMARY KEY (`Labs_ID`),
  ADD KEY `lap_id` (`lap_id`);

--
-- Indexes for table `medical_equipment`
--
ALTER TABLE `medical_equipment`
  ADD PRIMARY KEY (`medequ_id`),
  ADD KEY `technical_id` (`technical_id`);

--
-- Indexes for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD PRIMARY KEY (`MR_ID`),
  ADD KEY `doc_id` (`doc_id`),
  ADD KEY `pat_id` (`pat_id`),
  ADD KEY `admine_id` (`admine_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`Medicine_ID`),
  ADD KEY `pharmacy_id` (`pharmacy_id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`NurseID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `nurseschedule`
--
ALTER TABLE `nurseschedule`
  ADD PRIMARY KEY (`NS_ID`),
  ADD KEY `pat_id` (`pat_id`),
  ADD KEY `doc_id` (`doc_id`),
  ADD KEY `nurse_id` (`nurse_id`),
  ADD KEY `hos_id` (`hos_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Pat_ID`),
  ADD UNIQUE KEY `Patient_uq` (`Phone_Number`),
  ADD KEY `hos_id` (`hos_id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`pharm_id`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`Pharmacy_ID`),
  ADD KEY `pharm_id` (`pharm_id`),
  ADD KEY `hos_id` (`hos_id`);

--
-- Indexes for table `raylab`
--
ALTER TABLE `raylab`
  ADD PRIMARY KEY (`Ray_ID`),
  ADD KEY `hos_id` (`hos_id`),
  ADD KEY `TechnicalID` (`TechnicalID`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`recep_id`),
  ADD KEY `EmployeeID` (`EmployeeID`),
  ADD KEY `pat_id` (`pat_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rom_ID`),
  ADD KEY `hos_id` (`hos_id`);

--
-- Indexes for table `technical`
--
ALTER TABLE `technical`
  ADD PRIMARY KEY (`TechnicalID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `xray_results`
--
ALTER TABLE `xray_results`
  ADD PRIMARY KEY (`XRay_ID`),
  ADD KEY `ray_id` (`ray_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `Acc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_user`
--
ALTER TABLE `acc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminstrator`
--
ALTER TABLE `adminstrator`
  MODIFY `admine_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ctray_results`
--
ALTER TABLE `ctray_results`
  MODIFY `CTRay_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dr_reports`
--
ALTER TABLE `dr_reports`
  MODIFY `DReport_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examinition_test`
--
ALTER TABLE `examinition_test`
  MODIFY `EX_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hos_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icu`
--
ALTER TABLE `icu`
  MODIFY `ICU_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laboratory`
--
ALTER TABLE `laboratory`
  MODIFY `LAB_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labs_results`
--
ALTER TABLE `labs_results`
  MODIFY `Labs_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_record`
--
ALTER TABLE `medical_record`
  MODIFY `MR_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `Medicine_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nurseschedule`
--
ALTER TABLE `nurseschedule`
  MODIFY `NS_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Pat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `Pharmacy_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `raylab`
--
ALTER TABLE `raylab`
  MODIFY `Ray_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `rom_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xray_results`
--
ALTER TABLE `xray_results`
  MODIFY `XRay_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`EmployeeID`);

--
-- Constraints for table `acc_user`
--
ALTER TABLE `acc_user`
  ADD CONSTRAINT `acc_user_ibfk_1` FOREIGN KEY (`Acc_id`) REFERENCES `account` (`Acc_id`);

--
-- Constraints for table `adminstrator`
--
ALTER TABLE `adminstrator`
  ADD CONSTRAINT `adminstrator_ibfk_1` FOREIGN KEY (`Acc_id`) REFERENCES `account` (`Acc_id`);

--
-- Constraints for table `ctray_results`
--
ALTER TABLE `ctray_results`
  ADD CONSTRAINT `ctray_results_ibfk_1` FOREIGN KEY (`ray_id`) REFERENCES `raylab` (`Ray_ID`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`);

--
-- Constraints for table `dr_reports`
--
ALTER TABLE `dr_reports`
  ADD CONSTRAINT `dr_reports_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `examinition_test`
--
ALTER TABLE `examinition_test`
  ADD CONSTRAINT `examinition_test_ibfk_1` FOREIGN KEY (`pat_id`) REFERENCES `patient` (`Pat_ID`),
  ADD CONSTRAINT `examinition_test_ibfk_2` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `icu`
--
ALTER TABLE `icu`
  ADD CONSTRAINT `icu_ibfk_1` FOREIGN KEY (`hos_id`) REFERENCES `hospital` (`hos_ID`);

--
-- Constraints for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD CONSTRAINT `laboratory_ibfk_1` FOREIGN KEY (`hos_id`) REFERENCES `hospital` (`hos_ID`),
  ADD CONSTRAINT `laboratory_ibfk_2` FOREIGN KEY (`TechnicalID`) REFERENCES `technical` (`TechnicalID`);

--
-- Constraints for table `labs_results`
--
ALTER TABLE `labs_results`
  ADD CONSTRAINT `labs_results_ibfk_1` FOREIGN KEY (`lap_id`) REFERENCES `laboratory` (`LAB_ID`);

--
-- Constraints for table `medical_equipment`
--
ALTER TABLE `medical_equipment`
  ADD CONSTRAINT `medical_equipment_ibfk_1` FOREIGN KEY (`technical_id`) REFERENCES `technical` (`TechnicalID`);

--
-- Constraints for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD CONSTRAINT `medical_record_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`DoctorID`),
  ADD CONSTRAINT `medical_record_ibfk_2` FOREIGN KEY (`pat_id`) REFERENCES `patient` (`Pat_ID`),
  ADD CONSTRAINT `medical_record_ibfk_3` FOREIGN KEY (`admine_id`) REFERENCES `adminstrator` (`admine_id`);

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacy` (`Pharmacy_ID`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`);

--
-- Constraints for table `nurseschedule`
--
ALTER TABLE `nurseschedule`
  ADD CONSTRAINT `nurseschedule_ibfk_1` FOREIGN KEY (`pat_id`) REFERENCES `patient` (`Pat_ID`),
  ADD CONSTRAINT `nurseschedule_ibfk_2` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`DoctorID`),
  ADD CONSTRAINT `nurseschedule_ibfk_3` FOREIGN KEY (`nurse_id`) REFERENCES `nurse` (`NurseID`),
  ADD CONSTRAINT `nurseschedule_ibfk_4` FOREIGN KEY (`hos_id`) REFERENCES `hospital` (`hos_ID`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`hos_id`) REFERENCES `hospital` (`hos_ID`);

--
-- Constraints for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD CONSTRAINT `pharmacist_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`);

--
-- Constraints for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD CONSTRAINT `pharmacy_ibfk_1` FOREIGN KEY (`pharm_id`) REFERENCES `pharmacist` (`pharm_id`),
  ADD CONSTRAINT `pharmacy_ibfk_2` FOREIGN KEY (`hos_id`) REFERENCES `hospital` (`hos_ID`);

--
-- Constraints for table `raylab`
--
ALTER TABLE `raylab`
  ADD CONSTRAINT `raylab_ibfk_1` FOREIGN KEY (`hos_id`) REFERENCES `hospital` (`hos_ID`),
  ADD CONSTRAINT `raylab_ibfk_2` FOREIGN KEY (`TechnicalID`) REFERENCES `technical` (`TechnicalID`);

--
-- Constraints for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD CONSTRAINT `receptionist_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`),
  ADD CONSTRAINT `receptionist_ibfk_2` FOREIGN KEY (`pat_id`) REFERENCES `patient` (`Pat_ID`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`hos_id`) REFERENCES `hospital` (`hos_ID`);

--
-- Constraints for table `technical`
--
ALTER TABLE `technical`
  ADD CONSTRAINT `technical_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`);

--
-- Constraints for table `xray_results`
--
ALTER TABLE `xray_results`
  ADD CONSTRAINT `xray_results_ibfk_1` FOREIGN KEY (`ray_id`) REFERENCES `raylab` (`Ray_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
