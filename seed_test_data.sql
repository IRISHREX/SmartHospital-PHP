-- ==========================================================
-- Smart Hospital v7.0 - Mock Seed Data Script
-- ==========================================================
-- Usage: Import this file into your database to seed testing data.
-- Note: High ID numbers (99901+) are used to avoid primary key collisions with existing data.
-- Password for all staff users is '123456' (using a standard MD5 hash).

-- --------------------------------------------------------
-- 1. Shifts
-- --------------------------------------------------------
INSERT INTO `global_shift` (`id`, `name`, `start_time`, `end_time`) VALUES 
(99901, 'Morning Shift', '09:00:00', '13:00:00'),
(99902, 'Evening Shift', '17:00:00', '21:00:00')
ON DUPLICATE KEY UPDATE name=VALUES(name);

-- --------------------------------------------------------
-- 2. Staff (Admin, Doctors, Receptionist)
-- --------------------------------------------------------
INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `name`, `surname`, `email`, `password`, `is_active`, `contact_no`, `emergency_contact_no`, `gender`, `qualification`, `specialization`, `specialist`, `father_name`, `mother_name`, `marital_status`, `local_address`, `permanent_address`, `note`, `image`) VALUES 
(99901, 'EMP99901', 1, 'Super', 'Admin', 'admin_seed@example.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '1234567890', '1234567890', 'Male', 'MBA', '', '', '', '', '', '', '', '', ''),
(99902, 'EMP99902', 1, 'Dr. Smith', 'Williams', 'smith_seed@example.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '9876543210', '9876543210', 'Male', 'MBBS, MD', 'Cardiology', '', '', '', '', '', '', '', ''),
(99903, 'EMP99903', 1, 'Dr. Jane', 'Doe', 'jane_seed@example.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '5554443333', '5554443333', 'Female', 'MBBS, MS', 'Orthopedics', '', '', '', '', '', '', '', ''),
(99904, 'EMP99904', 1, 'Alice', 'Receptionist', 'reception_seed@example.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '1112223333', '1112223333', 'Female', 'BA', '', '', '', '', '', '', '', '', '')
ON DUPLICATE KEY UPDATE name=VALUES(name);

-- --------------------------------------------------------
-- 3. Staff Roles (1=Admin, 3=Doctor, 8=Receptionist)
-- --------------------------------------------------------
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`) VALUES 
(99901, 7, 99901, 1), -- SuperAdmin
(99902, 3, 99902, 1), -- Doctor
(99903, 3, 99903, 1), -- Doctor
(99904, 8, 99904, 1)  -- Receptionist
ON DUPLICATE KEY UPDATE is_active=VALUES(is_active);

-- --------------------------------------------------------
-- 4. Doctor Shifts and Slots
-- --------------------------------------------------------
INSERT INTO `doctor_global_shift` (`id`, `staff_id`, `global_shift_id`) VALUES 
(99901, 99902, 99901),
(99902, 99903, 99902)
ON DUPLICATE KEY UPDATE staff_id=VALUES(staff_id);

INSERT INTO `doctor_shift_time` (`id`, `day`, `staff_id`, `doctor_global_shift_id`, `start_time`, `end_time`) VALUES 
(99901, 'Monday', 99902, 99901, '09:00:00', '13:00:00'),
(99902, 'Tuesday', 99902, 99901, '09:00:00', '13:00:00'),
(99903, 'Wednesday', 99902, 99901, '09:00:00', '13:00:00'),
(99904, 'Thursday', 99902, 99901, '09:00:00', '13:00:00'),
(99905, 'Friday', 99902, 99901, '09:00:00', '13:00:00'),
(99906, 'Monday', 99903, 99902, '17:00:00', '21:00:00'),
(99907, 'Tuesday', 99903, 99902, '17:00:00', '21:00:00'),
(99908, 'Wednesday', 99903, 99902, '17:00:00', '21:00:00'),
(99909, 'Thursday', 99903, 99902, '17:00:00', '21:00:00'),
(99910, 'Friday', 99903, 99902, '17:00:00', '21:00:00')
ON DUPLICATE KEY UPDATE day=VALUES(day);

-- --------------------------------------------------------
-- 5. Doctor Consult Charges
-- --------------------------------------------------------
INSERT INTO `charge_categories` (`id`, `name`, `description`, `charge_type_id`) VALUES 
(99901, 'Consultation', 'Doctor Consultation Fees', 1)
ON DUPLICATE KEY UPDATE name=VALUES(name);

INSERT INTO `charges` (`id`, `charge_category_id`, `name`, `standard_charge`, `status`) VALUES 
(99901, 99901, 'General Consultation', 50.00, 'active'),
(99902, 99901, 'Specialist Consultation', 100.00, 'active')
ON DUPLICATE KEY UPDATE name=VALUES(name);

INSERT INTO `consult_charges` (`id`, `doctor`, `standard_charge`, `date`, `status`) VALUES 
(99901, 99902, 100.00, '2025-01-01', 'active'),
(99902, 99903, 80.00, '2025-01-01', 'active')
ON DUPLICATE KEY UPDATE standard_charge=VALUES(standard_charge);

-- --------------------------------------------------------
-- 6. Patients
-- --------------------------------------------------------
INSERT INTO `patients` (`id`, `patient_name`, `age`, `month`, `day`, `gender`, `mobileno`, `blood_group`, `marital_status`, `is_ipd`, `patient_type`, `identification_number`, `known_allergies`, `note`, `app_key`) VALUES 
(99901, 'John Doe', 30, 5, 12, 'Male', '1231231234', 'O+', 'Single', 'no', 'OPD', 'ID99901', 'None', '', ''),
(99902, 'Alice Bob', 25, 2, 2, 'Female', '3213214321', 'A+', 'Married', 'no', 'OPD', 'ID99902', 'Peanuts', '', ''),
(99903, 'Mark Twine', 45, 10, 20, 'Male', '5556667777', 'B-', 'Married', 'no', 'OPD', 'ID99903', 'Dust', '', '')
ON DUPLICATE KEY UPDATE patient_name=VALUES(patient_name);

-- --------------------------------------------------------
-- 7. Pathology
-- --------------------------------------------------------
INSERT INTO `charge_categories` (`id`, `name`, `description`, `charge_type_id`) VALUES 
(99902, 'Pathology Tests', 'Pathology Lab Charges', 2)
ON DUPLICATE KEY UPDATE name=VALUES(name);

INSERT INTO `charges` (`id`, `charge_category_id`, `name`, `standard_charge`, `status`) VALUES 
(99903, 99902, 'CBC Test Charge', 30.00, 'active')
ON DUPLICATE KEY UPDATE name=VALUES(name);

INSERT INTO `pathology_category` (`id`, `category_name`) VALUES 
(99901, 'Blood Analysis')
ON DUPLICATE KEY UPDATE category_name=VALUES(category_name);

INSERT INTO `pathology` (`id`, `test_name`, `short_name`, `pathology_category_id`, `charge_id`, `unit`, `sub_category`, `report_days`, `method`) VALUES 
(99901, 'Complete Blood Count', 'CBC', 99901, 99903, 'ml', 'Hematology', '1', 'Manual')
ON DUPLICATE KEY UPDATE test_name=VALUES(test_name);

INSERT INTO `pathology_parameter` (`id`, `parameter_name`, `test_value`, `reference_range`, `gender`) VALUES 
(99901, 'Hemoglobin', '13.5 - 17.5', '13.5 - 17.5', 'Male'),
(99902, 'WBC Count', '4.5 - 11.0', '4.5 - 11.0', 'Both')
ON DUPLICATE KEY UPDATE parameter_name=VALUES(parameter_name);

-- --------------------------------------------------------
-- 8. Radiology
-- --------------------------------------------------------
INSERT INTO `charge_categories` (`id`, `name`, `description`, `charge_type_id`) VALUES 
(99903, 'Radiology Tests', 'Radiology Charges', 3)
ON DUPLICATE KEY UPDATE name=VALUES(name);

INSERT INTO `charges` (`id`, `charge_category_id`, `name`, `standard_charge`, `status`) VALUES 
(99904, 99903, 'Chest X-Ray Charge', 150.00, 'active')
ON DUPLICATE KEY UPDATE name=VALUES(name);

INSERT INTO `radio_category` (`id`, `category_name`) VALUES 
(99901, 'X-Ray')
ON DUPLICATE KEY UPDATE category_name=VALUES(category_name);

INSERT INTO `radio` (`id`, `test_name`, `short_name`, `radiology_category_id`, `charge_id`, `sub_category`, `report_days`) VALUES 
(99901, 'Chest X-Ray', 'CXR', 99901, 99904, 'Radiology', '1')
ON DUPLICATE KEY UPDATE test_name=VALUES(test_name);

-- --------------------------------------------------------
-- 9. Pharmacy (Medicines)
-- --------------------------------------------------------
INSERT INTO `medicine_category` (`id`, `medicine_category`) VALUES 
(99901, 'Tablet'),
(99902, 'Syrup')
ON DUPLICATE KEY UPDATE medicine_category=VALUES(medicine_category);

INSERT INTO `medicine_dosage` (`id`, `medicine_category_id`, `dosage`) VALUES 
(99901, 99901, '500mg'),
(99902, 99902, '10ml')
ON DUPLICATE KEY UPDATE dosage=VALUES(dosage);

INSERT INTO `pharmacy` (`id`, `medicine_name`, `medicine_category_id`, `medicine_company`, `medicine_composition`, `medicine_group`, `rack_number`, `is_active`) VALUES 
(99901, 'Paracetamol', 99901, 'PharmaCorp', 'Paracetamol 500mg', 'Painkiller', 'A1', 'yes'),
(99902, 'Cough Syrup D', 99902, 'HealthMed', 'Dextromethorphan', 'Antitussive', 'B2', 'yes')
ON DUPLICATE KEY UPDATE medicine_name=VALUES(medicine_name);

-- ==========================================================
-- END OF SEED SCRIPT
-- ==========================================================
