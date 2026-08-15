-- ==========================================
-- Generated Schema and Mock Data
-- Automatically inferred from max1 SQL dump
-- ==========================================

SET FOREIGN_KEY_CHECKS = 0;

-- Table structure for admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `fullname` TEXT,
  `email` TEXT,
  `password` TEXT,
  `role` TEXT,
  `mobileno` TEXT,
  `profilepic` TEXT,
  `created_by` TEXT,
  `created_at` DATETIME DEFAULT NULL,
  `ipaddress` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `admins`;

-- Mock data for admins
INSERT INTO `admins` (`id`, `fullname`, `email`, `password`, `role`, `mobileno`, `profilepic`, `created_by`, `created_at`, `ipaddress`) VALUES
(1, 'Samir Hossain', 'Samir+Hossain@bms.com', 'Sohel@34892', 'Receptionist', '1550988377070', 'control', 'star', '2026-02-10 04:41:03', 'model'),
(2, 'Khairul Alam', 'Khairul+Alam@bms.com', 'Sohel@34892', 'Pharmacist', '6631363922554', 'thing', 'along', '2026-08-09 05:33:34', 'mind'),
(3, 'Rajesri Kundu', 'Rajesri+Kundu@bms.com', 'Sohel@34892', 'Pharmacist', '9862628531948', 'set', 'production', '2026-05-30 11:15:34', 'have'),
(4, 'Akash Tp', 'Akash+Tp@bms.com', 'Sohel@34892', 'Receptionist', '6709766248685', 'follow', 'rich', '2026-03-31 10:18:08', 'and');

-- Table structure for appointment
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `patient_id` INT(11) DEFAULT NULL,
  `doctor_id` INT(11) DEFAULT NULL,
  `ref_doc` TEXT,
  `app_priority` TEXT,
  `amount` DECIMAL(10,2) DEFAULT '0.00',
  `payment_mode` TEXT,
  `message` TEXT,
  `appdate` DATETIME DEFAULT NULL,
  `status` VARCHAR(50) DEFAULT NULL,
  `entry_by` TEXT,
  `created_at` DATETIME DEFAULT NULL,
  `transaction_id` TEXT,
  `serialno` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `appointment`;

-- No mock data generated for transactional table: appointment

-- Table structure for audit_trial
CREATE TABLE IF NOT EXISTS `audit_trial` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `datetime` DATETIME DEFAULT NULL,
  `entry_by` TEXT,
  `detail` TEXT,
  `department` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `audit_trial`;

-- No mock data generated for transactional table: audit_trial

-- Table structure for bed
CREATE TABLE IF NOT EXISTS `bed` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `bedno` TEXT,
  `bedtype` TEXT,
  `status` VARCHAR(50) DEFAULT NULL,
  `patient_id` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `bed`;

-- Mock data for bed
INSERT INTO `bed` (`id`, `bedno`, `bedtype`, `status`, `patient_id`) VALUES
(1, 'use', 'cold', 'pending', 7),
(2, 'number', 'parent', 'pending', 9),
(3, 'do', 'wear', 'approved', 1),
(4, 'cold', 'and', 'active', 1),
(5, 'page', 'movement', 'approved', 3),
(6, 'including', 'government', 'pending', 9),
(7, 'arrive', 'defense', 'pending', 4),
(8, 'head', 'matter', 'approved', 7),
(9, 'art', 'happen', 'pending', 8),
(10, 'want', 'born', 'active', 6),
(11, 'free', 'name', 'pending', 5),
(12, 'fast', 'soon', 'active', 3),
(13, 'season', 'cell', 'pending', 3),
(14, 'summer', 'computer', 'pending', 5),
(15, 'few', 'stop', 'approved', 4);

-- Table structure for bedtype
CREATE TABLE IF NOT EXISTS `bedtype` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `bedtype` TEXT,
  `charges` TEXT,
  `floor` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `bedtype`;

-- Mock data for bedtype
INSERT INTO `bedtype` (`id`, `bedtype`, `charges`, `floor`) VALUES
(1, 'key', 'over', 'best'),
(2, 'fast', 'draw', 'data'),
(3, 'difference', 'yard', 'over'),
(4, 'air', 'soldier', 'key'),
(5, 'ten', 'sell', 'happen'),
(6, 'understand', 'will', 'bit'),
(7, 'arm', 'perform', 'morning'),
(8, 'while', 'night', 'nation'),
(9, 'wall', 'them', 'dream'),
(10, 'benefit', 'dark', 'down'),
(11, 'quality', 'try', 'film'),
(12, 'three', 'practice', 'their'),
(13, 'strong', 'add', 'majority'),
(14, 'high', 'lose', 'today'),
(15, 'drug', 'movie', 'machine');

-- Table structure for bill
CREATE TABLE IF NOT EXISTS `bill` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `billtype` TEXT,
  `doctor_id` INT(11) DEFAULT NULL,
  `patient` TEXT,
  `billno` TEXT,
  `billdate` TEXT,
  `billtime` TEXT,
  `created_at` DATETIME DEFAULT NULL,
  `updated_at` DATETIME DEFAULT NULL,
  `entry_by` TEXT,
  `netamount` TEXT,
  `bill_refund_amount` TEXT,
  `commision` TEXT,
  `entrydate` TEXT,
  `bill_status` TEXT,
  `patient_id` INT(11) DEFAULT NULL,
  `doctor_id2` TEXT,
  `total` DECIMAL(10,2) DEFAULT '0.00',
  `discount_percentage` TEXT,
  `discount` DECIMAL(10,2) DEFAULT '0.00',
  `tax_percentage` TEXT,
  `tax` DECIMAL(10,2) DEFAULT '0.00',
  `note` TEXT,
  `transaction_id` TEXT,
  `department` TEXT,
  `usg_serial` TEXT,
  `amount_paid` TEXT,
  `remarks` TEXT,
  `billmonth` TEXT,
  `billyear` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `bill`;

-- No mock data generated for transactional table: bill

-- Table structure for charges
CREATE TABLE IF NOT EXISTS `charges` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `charge_name` TEXT,
  `description` TEXT,
  `department` TEXT,
  `category_name` TEXT,
  `amount` DECIMAL(10,2) DEFAULT '0.00',
  `created_at` DATETIME DEFAULT NULL,
  `defaultp` TEXT,
  `chargetype` TEXT,
  `unit` TEXT,
  `tax` DECIMAL(10,2) DEFAULT '0.00',
  `report_days` TEXT,
  `fixedcom` TEXT,
  `show_in_billing` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `charges`;

-- Mock data for charges
INSERT INTO `charges` (`id`, `charge_name`, `description`, `department`, `category_name`, `amount`, `created_at`, `defaultp`, `chargetype`, `unit`, `tax`, `report_days`, `fixedcom`, `show_in_billing`) VALUES
(1, 'lead', 'former', 'none', 'bed', 17.46, '2026-06-03 05:27:00', 'current', 'nor', 'production', 171.72, 'option', 'a', 'identify'),
(2, 'when', 'about', 'cut', 'choice', 456.83, '2026-04-17 20:43:03', 'lead', 'cut', 'before', 61.6, 'reveal', 'none', 'establish'),
(3, 'camera', 'walk', 'anything', 'some', 395.73, '2026-05-24 07:53:32', 'including', 'view', 'available', 284.67, 'citizen', 'cold', 'upon'),
(4, 'despite', 'series', 'whatever', 'continue', 62.73, '2026-07-30 13:11:34', 'material', 'our', 'present', 342.07, 'week', 'couple', 'hit'),
(5, 'look', 'use', 'home', 'idea', 55.93, '2026-03-16 02:34:22', 'guy', 'goal', 'relate', 108.24, 'center', 'agent', 'contain'),
(6, 'popular', 'wrong', 'talk', 'something', 425.74, '2026-04-14 14:34:51', 'audience', 'successful', 'probably', 78.2, 'TV', 'fill', 'buy'),
(7, 'front', 'ten', 'hand', 'education', 331.6, '2026-04-17 08:01:47', 'join', 'local', 'vote', 75.92, 'marriage', 'continue', 'color'),
(8, 'book', 'magazine', 'enter', 'Mr', 75.92, '2026-06-08 13:34:45', 'physical', 'class', 'for', 87.48, 'money', 'from', 'society'),
(9, 'tough', 'among', 'recently', 'form', 337.66, '2026-03-19 14:18:07', 'quickly', 'everything', 'threat', 417.93, 'area', 'only', 'site'),
(10, 'skill', 'measure', 'customer', 'TV', 156.12, '2026-01-20 13:09:37', 'manage', 'risk', 'law', 494.62, 'apply', 'build', 'only'),
(11, 'there', 'low', 'whose', 'safe', 96.42, '2026-07-04 18:03:34', 'animal', 'card', 'somebody', 350.06, 'information', 'baby', 'property'),
(12, 'six', 'or', 'before', 'real', 439.52, '2026-03-11 03:52:13', 'effort', 'spend', 'toward', 337.29, 'result', 'strategy', 'statement'),
(13, 'artist', 'try', 'grow', 'rich', 95.26, '2026-03-10 23:21:08', 'budget', 'article', 'what', 77.53, 'million', 'art', 'couple'),
(14, 'seem', 'determine', 'able', 'apply', 369.2, '2026-04-25 03:13:36', 'customer', 'way', 'area', 180.28, 'international', 'cause', 'investment'),
(15, 'forget', 'read', 'rock', 'reason', 310.53, '2026-06-01 16:36:30', 'parent', 'cost', 'wonder', 451.47, 'land', 'fund', 'way');

-- Table structure for controlpanel
CREATE TABLE IF NOT EXISTS `controlpanel` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `activemonth` TEXT,
  `activeyear` TEXT,
  `userid` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `controlpanel`;

-- Mock data for controlpanel
INSERT INTO `controlpanel` (`id`, `activemonth`, `activeyear`, `userid`) VALUES
(1, 'yard', 'participant', 'forward'),
(2, 'result', 'expert', 'front'),
(3, 'today', 'none', 'nothing'),
(4, 'feel', 'suffer', 'practice'),
(5, 'truth', 'will', 'board'),
(6, 'outside', 'modern', 'store'),
(7, 'crime', 'hard', 'day'),
(8, 'democratic', 'stay', 'difference'),
(9, 'include', 'few', 'authority'),
(10, 'source', 'daughter', 'town'),
(11, 'hard', 'air', 'somebody'),
(12, 'article', 'go', 'PM'),
(13, 'thought', 'hard', 'million'),
(14, 'level', 'last', 'us'),
(15, 'particular', 'identify', 'billion');

-- Table structure for cpanel
CREATE TABLE IF NOT EXISTS `cpanel` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `activemonth` TEXT,
  `activeyear` TEXT,
  `billno` TEXT,
  `aptcharge_id` TEXT,
  `pharmabill` TEXT,
  `pharmareturnbill` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `cpanel`;

-- Mock data for cpanel
INSERT INTO `cpanel` (`id`, `activemonth`, `activeyear`, `billno`, `aptcharge_id`, `pharmabill`, `pharmareturnbill`) VALUES
(1, 'oil', 'follow', 'end', 'standard', 'free', 'fact'),
(2, 'key', 'management', 'guess', 'section', 'old', 'skin'),
(3, 'figure', 'service', 'music', 'record', 'peace', 'remain'),
(4, 'two', 'although', 'media', 'race', 'include', 'reduce'),
(5, 'room', 'provide', 'reality', 'building', 'suffer', 'power'),
(6, 'its', 'behavior', 'answer', 'around', 'article', 'prevent'),
(7, 'next', 'here', 'help', 'senior', 'red', 'court'),
(8, 'challenge', 'cup', 'father', 'question', 'measure', 'red'),
(9, 'develop', 'point', 'job', 'character', 'development', 'paper'),
(10, 'wish', 'dark', 'town', 'do', 'discuss', 'write'),
(11, 'successful', 'almost', 'discover', 'degree', 'hundred', 'officer'),
(12, 'adult', 'official', 'off', 'need', 'send', 'during'),
(13, 'conference', 'kitchen', 'should', 'thank', 'paper', 'raise'),
(14, 'other', 'rich', 'those', 'song', 'never', 'likely'),
(15, 'number', 'when', 'friend', 'think', 'task', 'enough');

-- Table structure for departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `department` TEXT,
  `description` TEXT,
  `created_at` DATETIME DEFAULT NULL,
  `defaultp` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `departments`;

-- Mock data for departments
INSERT INTO `departments` (`id`, `department`, `description`, `created_at`, `defaultp`) VALUES
(1, 'reflect', 'center', '2026-07-08 07:05:15', 'threat'),
(2, 'degree', 'thing', '2026-07-04 08:37:55', 'clear'),
(3, 'true', 'measure', '2026-01-18 18:47:03', 'class'),
(4, 'pretty', 'risk', '2026-05-01 16:07:51', 'natural'),
(5, 'thought', 'worry', '2026-07-06 19:55:10', 'statement'),
(6, 'pick', 'Mr', '2026-07-03 13:52:33', 'model'),
(7, 'girl', 'not', '2026-03-31 12:18:29', 'within'),
(8, 'marriage', 'trial', '2026-05-18 04:39:44', 'for'),
(9, 'field', 'buy', '2026-07-26 12:34:06', 'cold'),
(10, 'collection', 'often', '2026-03-23 01:22:47', 'evidence'),
(11, 'natural', 'environment', '2026-04-22 12:06:27', 'interesting'),
(12, 'worker', 'same', '2026-05-28 11:28:34', 'kind'),
(13, 'garden', 'laugh', '2026-04-30 22:00:04', 'society'),
(14, 'girl', 'within', '2026-05-29 22:39:15', 'fact'),
(15, 'employee', 'open', '2026-02-24 20:34:22', 'Mr');

-- Table structure for doctors
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `doctor_code` TEXT,
  `doctor` TEXT,
  `mobileno` TEXT,
  `email` TEXT,
  `gender` TEXT,
  `qualification` TEXT,
  `specialization` TEXT,
  `profilepic` TEXT,
  `address` TEXT,
  `signature` TEXT,
  `ipaddress` TEXT,
  `fees` TEXT,
  `password` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `doctors`;

-- Mock data for doctors
INSERT INTO `doctors` (`id`, `doctor_code`, `doctor`, `mobileno`, `email`, `gender`, `qualification`, `specialization`, `profilepic`, `address`, `signature`, `ipaddress`, `fees`, `password`) VALUES
(1, 'respond', 'Sohel Islam', '9139648013370', 'Sohel+Islam@bms.com', 'join', 'wish', 'together', 'friend', 'final', 'black', 'onto', 'term', 'Sohel@34892'),
(2, 'risk', 'Irish Rex', '9787727790045', 'Irish+Rex@bms.com', 'worry', 'nearly', 'similar', 'size', 'easy', 'program', 'commercial', 'believe', 'Sohel@34892'),
(3, 'direction', 'Bio Mechasoft', '8958038506297', 'Bio+Mechasoft@bms.com', 'simply', 'perhaps', 'which', 'author', 'serious', 'song', 'number', 'floor', 'Sohel@34892'),
(4, 'field', 'Diya Mondol', '6154438115867', 'Diya+Mondol@bms.com', 'this', 'daughter', 'great', 'close', 'attack', 'natural', 'billion', 'field', 'Sohel@34892');

-- Table structure for hospital_doctor
CREATE TABLE IF NOT EXISTS `hospital_doctor` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `doctor_code` TEXT,
  `doctor` TEXT,
  `mobileno` TEXT,
  `email` TEXT,
  `gender` TEXT,
  `qualification` TEXT,
  `specialization` TEXT,
  `profilepic` TEXT,
  `address` TEXT,
  `signature` TEXT,
  `ipaddress` TEXT,
  `fees` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `hospital_doctor`;

-- Mock data for hospital_doctor
INSERT INTO `hospital_doctor` (`id`, `doctor_code`, `doctor`, `mobileno`, `email`, `gender`, `qualification`, `specialization`, `profilepic`, `address`, `signature`, `ipaddress`, `fees`) VALUES
(1, 'job', 'Nicholas Moran', '5708397562009', 'schmittdorothy@example.net', 'game', 'material', 'political', 'strategy', 'already', 'cause', 'environmental', 'street'),
(2, 'certainly', 'Lindsey Morris', '7403004913386', 'steven27@example.com', 'tree', 'value', 'they', 'yet', 'share', 'baby', 'store', 'morning'),
(3, 'start', 'Ashley Huber', '8586642252122', 'wfrederick@example.net', 'street', 'car', 'test', 'black', 'protect', 'million', 'full', 'understand'),
(4, 'study', 'Heidi Green', '4290619885832', 'stephanie84@example.com', 'position', 'relationship', 'fall', 'according', 'police', 'game', 'forward', 'president'),
(5, 'dinner', 'Michael Ortiz', '1456369403491', 'lking@example.org', 'than', 'issue', 'view', 'around', 'once', 'population', 'support', 'ever'),
(6, 'next', 'Lucas Swanson', '0865128850976', 'smithchristopher@example.org', 'hot', 'get', 'significant', 'section', 'involve', 'include', 'election', 'four'),
(7, 'hour', 'Chad Morris', '3410619576834', 'tnewman@example.org', 'structure', 'allow', 'watch', 'age', 'activity', 'many', 'too', 'us'),
(8, 'seek', 'Daniel Rios', '6916966032544', 'amber22@example.com', 'involve', 'attention', 'action', 'sign', 'long', 'community', 'nor', 'wonder'),
(9, 'science', 'Joshua Dennis', '4039612736084', 'pthompson@example.com', 'work', 'task', 'throw', 'body', 'woman', 'book', 'clearly', 'such'),
(10, 'indeed', 'Robert Butler', '4306457469171', 'ericacastro@example.net', 'say', 'huge', 'discussion', 'current', 'late', 'lot', 'hair', 'somebody'),
(11, 'choice', 'William Huffman', '7309999072756', 'lewisedward@example.org', 'half', 'degree', 'gun', 'inside', 'care', 'until', 'our', 'knowledge'),
(12, 'area', 'Shannon Faulkner', '3794062186363', 'millerderrick@example.net', 'wall', 'somebody', 'ball', 'number', 'rich', 'reach', 'his', 'activity'),
(13, 'road', 'Stacy Sherman', '0818102933761', 'jean03@example.org', 'miss', 'hard', 'board', 'television', 'friend', 'century', 'adult', 'officer'),
(14, 'movement', 'Joseph Fitzgerald', '3879829982142', 'carrollkyle@example.com', 'station', 'story', 'almost', 'wife', 'sign', 'manage', 'many', 'land'),
(15, 'shake', 'Kent Wells', '6296174411030', 'carterphillip@example.org', 'than', 'score', 'answer', 'stage', 'firm', 'nor', 'three', 'he');

-- Table structure for ipd
CREATE TABLE IF NOT EXISTS `ipd` (
  `ipdno` TEXT,
  `patient_id` INT(11) DEFAULT NULL,
  `admit_date` TEXT,
  `admit_time` TEXT,
  `discharge_date` TEXT,
  `discharge_time` TEXT,
  `bed_group` TEXT,
  `bed_no` TEXT,
  `status` VARCHAR(50) DEFAULT NULL,
  `admitted_by` TEXT,
  `datetime` DATETIME DEFAULT NULL,
  `case_type` TEXT,
  `insurance_id` TEXT,
  `final_discount_by` TEXT,
  `final_discount_per` TEXT,
  `final_discount_amt` TEXT,
  `net_amount` DECIMAL(10,2) DEFAULT '0.00',
  `discharge_status` TEXT,
  `operation_note` TEXT,
  `investigation_note` TEXT,
  `diagnosis_note` TEXT,
  `treatment_note` TEXT,
  `discharge_note` TEXT,
  `discharge_entry_by` TEXT,
  `doctor_id` INT(11) DEFAULT NULL,
  `registrationno` TEXT,
  `ipdremarks` TEXT,
  `ipddiscountremarks` TEXT,
  `addpatient` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `ipd`;

-- No mock data generated for transactional table: ipd

-- Table structure for ipd_charges
CREATE TABLE IF NOT EXISTS `ipd_charges` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `patient_id` INT(11) DEFAULT NULL,
  `ipdno` TEXT,
  `date` DATETIME DEFAULT NULL,
  `charge_id` INT(11) DEFAULT NULL,
  `amount` DECIMAL(10,2) DEFAULT '0.00',
  `discount` DECIMAL(10,2) DEFAULT '0.00',
  `netamount` TEXT,
  `note` TEXT,
  `timestamp` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `ipd_charges`;

-- No mock data generated for transactional table: ipd_charges

-- Table structure for ipd_payment
CREATE TABLE IF NOT EXISTS `ipd_payment` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `patient_id` INT(11) DEFAULT NULL,
  `ipdno` TEXT,
  `date` DATETIME DEFAULT NULL,
  `payment_mode` TEXT,
  `payment_type` TEXT,
  `amount` DECIMAL(10,2) DEFAULT '0.00',
  `timestamp` TEXT,
  `note` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `ipd_payment`;

-- No mock data generated for transactional table: ipd_payment

-- Table structure for parameter_values
CREATE TABLE IF NOT EXISTS `parameter_values` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `parameter_id` TEXT,
  `value` TEXT,
  `remarks` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `parameter_values`;

-- Mock data for parameter_values
INSERT INTO `parameter_values` (`id`, `parameter_id`, `value`, `remarks`) VALUES
(1, 'respond', 'sing', 'community'),
(2, 'upon', 'respond', 'sure'),
(3, 'ready', 'forward', 'provide'),
(4, 'across', 'magazine', 'sister'),
(5, 'mean', 'follow', 'by'),
(6, 'read', 'option', 'offer'),
(7, 'rock', 'see', 'miss'),
(8, 'after', 'piece', 'within'),
(9, 'deep', 'house', 'important'),
(10, 'catch', 'yourself', 'defense'),
(11, 'you', 'experience', 'want'),
(12, 'subject', 'into', 'common'),
(13, 'letter', 'stay', 'evidence'),
(14, 'project', 'avoid', 'fill'),
(15, 'today', 'painting', 'how');

-- Table structure for pathology
CREATE TABLE IF NOT EXISTS `pathology` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `test_name` TEXT,
  `short_name` TEXT,
  `test_type` TEXT,
  `pathology_category_id` TEXT,
  `unit` TEXT,
  `sub_category` TEXT,
  `report_days` TEXT,
  `method` TEXT,
  `charge_category_id` TEXT,
  `charge_id` INT(11) DEFAULT NULL,
  `created_at` DATETIME DEFAULT NULL,
  `department` TEXT,
  `standard_charges` TEXT,
  `tax` DECIMAL(10,2) DEFAULT '0.00',
  `reporttext` TEXT,
  `additional_comment` TEXT,
  `outside_test` TEXT,
  `template` TEXT,
  `templatepath` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pathology`;

-- Mock data for pathology
INSERT INTO `pathology` (`id`, `test_name`, `short_name`, `test_type`, `pathology_category_id`, `unit`, `sub_category`, `report_days`, `method`, `charge_category_id`, `charge_id`, `created_at`, `department`, `standard_charges`, `tax`, `reporttext`, `additional_comment`, `outside_test`, `template`, `templatepath`) VALUES
(1, 'nothing', 'health', 'much', 'this', 'road', 'build', 'billion', 'civil', 'lawyer', 4, '2026-05-27 09:09:33', 'now', 'national', 391.05, 'address', 'democratic', 'reason', 'in', 'yourself'),
(2, 'PM', 'your', 'education', 'operation', 'parent', 'thousand', 'across', 'too', 'wide', 4, '2026-03-12 06:38:03', 'city', 'look', 47.74, 'eat', 'hand', 'test', 'yes', 'wear'),
(3, 'camera', 'employee', 'administration', 'at', 'citizen', 'government', 'window', 'could', 'read', 3, '2026-05-03 12:40:01', 'environment', 'you', 193.76, 'image', 'baby', 'its', 'discover', 'special'),
(4, 'under', 'population', 'name', 'be', 'garden', 'truth', 'consider', 'her', 'evidence', 3, '2026-07-19 04:20:37', 'low', 'night', 101.92, 'task', 'throw', 'leader', 'common', 'forget'),
(5, 'officer', 'bill', 'national', 'fight', 'parent', 'point', 'southern', 'brother', 'president', 2, '2026-07-16 23:33:31', 'fish', 'bar', 441.31, 'third', 'whom', 'imagine', 'much', 'ability'),
(6, 'plant', 'fire', 'where', 'indeed', 'let', 'money', 'power', 'foot', 'move', 9, '2026-04-12 21:19:57', 'wall', 'instead', 208.5, 'image', 'everything', 'chair', 'increase', 'involve'),
(7, 'after', 'cultural', 'history', 'new', 'writer', 'join', 'catch', 'hundred', 'take', 10, '2026-01-31 19:55:51', 'country', 'consumer', 421.6, 'affect', 'stock', 'be', 'indeed', 'style'),
(8, 'speak', 'institution', 'financial', 'ground', 'color', 'wall', 'major', 'while', 'take', 5, '2026-08-08 22:04:08', 'pay', 'color', 30.12, 'us', 'key', 'land', 'size', 'over'),
(9, 'simply', 'provide', 'degree', 'expect', 'skin', 'paper', 'begin', 'eye', 'mission', 3, '2026-06-25 02:25:00', 'throughout', 'wife', 111.71, 'task', 'window', 'turn', 'staff', 'perhaps'),
(10, 'news', 'language', 'live', 'open', 'money', 'away', 'free', 'body', 'fine', 8, '2026-06-17 23:59:04', 'stay', 'describe', 84.52, 'treat', 'society', 'open', 'lot', 'attack'),
(11, 'each', 'ten', 'board', 'music', 'cover', 'power', 'explain', 'those', 'wrong', 5, '2026-06-12 12:51:14', 'cut', 'them', 221.32, 'treatment', 'base', 'leave', 'end', 'energy'),
(12, 'product', 'time', 'most', 'air', 'certainly', 'total', 'stay', 'assume', 'wear', 3, '2026-05-03 23:07:28', 'site', 'argue', 375.27, 'property', 'scene', 'law', 'add', 'lose'),
(13, 'democratic', 'free', 'reason', 'recent', 'owner', 'throw', 'reason', 'stand', 'agent', 4, '2026-04-07 19:00:44', 'consider', 'international', 52.96, 'statement', 'lay', 'decide', 'news', 'voice'),
(14, 'continue', 'court', 'baby', 'bill', 'herself', 'sell', 'might', 'matter', 'range', 10, '2026-01-02 00:47:24', 'animal', 'former', 398.81, 'pay', 'wonder', 'popular', 'act', 'until'),
(15, 'skin', 'may', 'grow', 'degree', 'officer', 'how', 'seek', 'up', 'choose', 8, '2026-05-13 05:34:50', 'admit', 'generation', 182.87, 'gun', 'quickly', 'area', 'blue', 'because');

-- Table structure for pathology_category
CREATE TABLE IF NOT EXISTS `pathology_category` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `category_name` TEXT,
  `created_at` DATETIME DEFAULT NULL,
  `doctor_id` INT(11) DEFAULT NULL,
  `doctor_id1` TEXT,
  `doctor_id2` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pathology_category`;

-- Mock data for pathology_category
INSERT INTO `pathology_category` (`id`, `category_name`, `created_at`, `doctor_id`, `doctor_id1`, `doctor_id2`) VALUES
(1, 'bar', '2026-02-02 21:12:15', 8, 'unit', 'space'),
(2, 'beat', '2026-01-04 11:09:47', 9, 'ball', 'travel'),
(3, 'pretty', '2026-02-05 12:26:48', 9, 'go', 'year'),
(4, 'player', '2026-07-16 18:57:43', 7, 'newspaper', 'positive'),
(5, 'case', '2026-06-23 02:16:06', 1, 'others', 'suffer'),
(6, 'experience', '2026-05-28 07:23:05', 7, 'firm', 'idea'),
(7, 'together', '2026-02-13 00:41:54', 2, 'join', 'happy'),
(8, 'yes', '2026-04-03 11:17:22', 10, 'TV', 'themselves'),
(9, 'exactly', '2026-02-04 05:52:59', 3, 'watch', 'line'),
(10, 'up', '2026-02-26 08:33:18', 8, 'story', 'public'),
(11, 'him', '2026-01-10 00:48:51', 8, 'PM', 'race'),
(12, 'own', '2026-03-27 14:44:13', 3, 'individual', 'they'),
(13, 'scene', '2026-02-06 10:52:52', 4, 'success', 'themselves'),
(14, 'something', '2026-06-11 04:43:48', 10, 'than', 'kitchen'),
(15, 'run', '2026-08-03 05:15:32', 10, 'food', 'event');

-- Table structure for pathology_parameter
CREATE TABLE IF NOT EXISTS `pathology_parameter` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `parameter_name` TEXT,
  `parent_parameter` TEXT,
  `test_value` TEXT,
  `reference_range` TEXT,
  `min_range` TEXT,
  `max_range` TEXT,
  `gender` TEXT,
  `unit` TEXT,
  `description` TEXT,
  `created_at` DATETIME DEFAULT NULL,
  `parameter_type` TEXT,
  `para_id_1` TEXT,
  `para_id_2` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pathology_parameter`;

-- Mock data for pathology_parameter
INSERT INTO `pathology_parameter` (`id`, `parameter_name`, `parent_parameter`, `test_value`, `reference_range`, `min_range`, `max_range`, `gender`, `unit`, `description`, `created_at`, `parameter_type`, `para_id_1`, `para_id_2`) VALUES
(1, 'tonight', 'late', 'happy', 'way', 'contain', 'anyone', 'size', 'now', 'research', '2026-04-07 15:14:20', 'finally', 'look', 'recent'),
(2, 'language', 'put', 'culture', 'send', 'collection', 'data', 'debate', 'strategy', 'avoid', '2026-03-25 22:00:41', 'beyond', 'shoulder', 'onto'),
(3, 'finish', 'research', 'somebody', 'somebody', 'old', 'difference', 'Mrs', 'him', 'argue', '2026-02-10 23:51:14', 'sort', 'pick', 'point'),
(4, 'decision', 'industry', 'source', 'teacher', 'offer', 'reduce', 'house', 'itself', 'however', '2026-06-08 23:41:03', 'do', 'sport', 'develop'),
(5, 'door', 'often', 'door', 'idea', 'agree', 'difficult', 'wait', 'although', 'yard', '2026-07-22 22:52:55', 'able', 'finally', 'certainly'),
(6, 'look', 'market', 'one', 'majority', 'sound', 'without', 'box', 'bed', 'hour', '2026-05-09 11:49:29', 'series', 'story', 'today'),
(7, 'well', 'often', 'can', 'successful', 'effect', 'camera', 'area', 'star', 'radio', '2026-01-14 17:31:55', 'everything', 'happen', 'property'),
(8, 'focus', 'situation', 'understand', 'style', 'as', 'say', 'brother', 'student', 'accept', '2026-06-24 21:35:05', 'animal', 'manager', 'drive'),
(9, 'our', 'hour', 'support', 'trouble', 'water', 'reveal', 'piece', 'before', 'night', '2026-06-16 16:38:02', 'responsibility', 'draw', 'lead'),
(10, 'resource', 'bag', 'issue', 'themselves', 'shoulder', 'expect', 'event', 'avoid', 'maintain', '2026-06-29 13:42:37', 'east', 'billion', 'various'),
(11, 'class', 'tend', 'fast', 'black', 'main', 'all', 'government', 'child', 'message', '2026-06-01 11:16:46', 'wear', 'pull', 'less'),
(12, 'these', 'too', 'home', 'value', 'bag', 'back', 'decade', 'physical', 'perhaps', '2026-01-27 18:51:57', 'skill', 'material', 'shoulder'),
(13, 'himself', 'radio', 'support', 'consumer', 'hear', 'decision', 'grow', 'animal', 'in', '2026-01-10 12:22:43', 'agree', 'fast', 'before'),
(14, 'growth', 'card', 'assume', 'wife', 'evidence', 'surface', 'city', 'explain', 'look', '2026-02-01 19:21:52', 'care', 'important', 'gas'),
(15, 'plan', 'arm', 'president', 'shake', 'actually', 'stuff', 'piece', 'detail', 'figure', '2026-06-24 08:38:26', 'church', 'author', 'many');

-- Table structure for pathology_parameter_age
CREATE TABLE IF NOT EXISTS `pathology_parameter_age` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `min_age` TEXT,
  `max_age` TEXT,
  `min_month` TEXT,
  `max_month` TEXT,
  `min_day` TEXT,
  `max_day` TEXT,
  `min_range` TEXT,
  `description` TEXT,
  `max_range` TEXT,
  `parameter_id` TEXT,
  `gender` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pathology_parameter_age`;

-- Mock data for pathology_parameter_age
INSERT INTO `pathology_parameter_age` (`id`, `min_age`, `max_age`, `min_month`, `max_month`, `min_day`, `max_day`, `min_range`, `description`, `max_range`, `parameter_id`, `gender`) VALUES
(1, 'whom', 'between', 'purpose', 'true', 'candidate', 'city', 'family', 'grow', 'theory', 'small', 'baby'),
(2, 'move', 'office', 'company', 'face', 'push', 'evidence', 'dream', 'compare', 'figure', 'trip', 'world'),
(3, 'million', 'if', 'word', 'each', 'page', 'issue', 'leg', 'with', 'understand', 'those', 'hold'),
(4, 'list', 'behavior', 'exactly', 'indeed', 'hit', 'middle', 'soon', 'into', 'choice', 'pretty', 'land'),
(5, 'threat', 'any', 'save', 'save', 'wide', 'sea', 'opportunity', 'prevent', 'page', 'according', 'risk'),
(6, 'risk', 'act', 'project', 'list', 'office', 'everyone', 'public', 'condition', 'agreement', 'born', 'tax'),
(7, 'opportunity', 'resource', 'field', 'take', 'sure', 'civil', 'fly', 'whose', 'speak', 'international', 'professional'),
(8, 'hear', 'son', 'response', 'particular', 'natural', 'ten', 'degree', 'once', 'feeling', 'determine', 'high'),
(9, 'discuss', 'own', 'state', 'perhaps', 'me', 'despite', 'administration', 'fly', 'season', 'himself', 'change'),
(10, 'treatment', 'need', 'player', 'language', 'child', 'give', 'over', 'would', 'character', 'rise', 'including'),
(11, 'maybe', 'action', 'bit', 'team', 'environmental', 'year', 'try', 'deep', 'put', 'only', 'must'),
(12, 'reason', 'bit', 'little', 'simple', 'option', 'democratic', 'eat', 'country', 'politics', 'act', 'mouth'),
(13, 'expect', 'soldier', 'create', 'time', 'late', 'board', 'entire', 'suddenly', 'good', 'responsibility', 'ago'),
(14, 'challenge', 'large', 'follow', 'country', 'point', 'yard', 'position', 'language', 'bring', 'increase', 'others'),
(15, 'because', 'he', 'least', 'part', 'impact', 'son', 'need', 'free', 'their', 'model', 'evening');

-- Table structure for pathology_parameter_details
CREATE TABLE IF NOT EXISTS `pathology_parameter_details` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `group_name` TEXT,
  `parameter_id` TEXT,
  `ptype` TEXT,
  `parent_id` TEXT,
  `sno` TEXT,
  `subcount` TEXT,
  `charge_id` INT(11) DEFAULT NULL,
  `groupid` TEXT,
  `max_value` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pathology_parameter_details`;

-- Mock data for pathology_parameter_details
INSERT INTO `pathology_parameter_details` (`id`, `group_name`, `parameter_id`, `ptype`, `parent_id`, `sno`, `subcount`, `charge_id`, `groupid`, `max_value`) VALUES
(1, 'dark', 'care', 'price', 'office', 'everybody', 'past', 10, 'either', 'itself'),
(2, 'picture', 'throughout', 'company', 'others', 'night', 'character', 7, 'thousand', 'rather'),
(3, 'wait', 'ever', 'evening', 'theory', 'key', 'from', 3, 'behind', 'line'),
(4, 'oil', 'fast', 'scene', 'service', 'stuff', 'left', 1, 'conference', 'week'),
(5, 'should', 'situation', 'miss', 'box', 'evening', 'develop', 10, 'artist', 'full'),
(6, 'blood', 'model', 'nation', 'song', 'single', 'character', 1, 'memory', 'ago'),
(7, 'good', 'serious', 'so', 'blood', 'air', 'little', 5, 'watch', 'one'),
(8, 'up', 'how', 'foreign', 'long', 'fight', 'worry', 6, 'possible', 'past'),
(9, 'feel', 'artist', 'dream', 'citizen', 'instead', 'already', 7, 'region', 'to'),
(10, 'report', 'half', 'eye', 'fact', 'like', 'southern', 2, 'they', 'your'),
(11, 'reason', 'finally', 'left', 'allow', 'head', 'doctor', 4, 'ago', 'sort'),
(12, 'player', 'least', 'walk', 'suggest', 'authority', 'drop', 4, 'myself', 'yourself'),
(13, 'teacher', 'main', 'recognize', 'certainly', 'military', 'feel', 1, 'include', 'kind'),
(14, 'shake', 'appear', 'stock', 'on', 'maintain', 'to', 1, 'cell', 'around'),
(15, 'protect', 'tough', 'entire', 'determine', 'agreement', 'join', 3, 'three', 'government');

-- Table structure for pathology_report
CREATE TABLE IF NOT EXISTS `pathology_report` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `pathology_bill_id` TEXT,
  `pathology_id` TEXT,
  `pathology_category_id` TEXT,
  `testtype` TEXT,
  `othertype` TEXT,
  `tstatus` TEXT,
  `customer_type` TEXT,
  `patient_id` INT(11) DEFAULT NULL,
  `reporting_date` TEXT,
  `reporting_time` TEXT,
  `parameter_update` TEXT,
  `tax_percentage` TEXT,
  `discountp` TEXT,
  `qty` TEXT,
  `standardcharges` TEXT,
  `apply_charge` TEXT,
  `refund` TEXT,
  `collection_date` TEXT,
  `collection_specialist` TEXT,
  `pathology_center` TEXT,
  `approved_by` TEXT,
  `patient_name` TEXT,
  `description` TEXT,
  `pathology_report` TEXT,
  `report_name` TEXT,
  `pathology_result` TEXT,
  `created_at` DATETIME DEFAULT NULL,
  `print_report` TEXT,
  `billdate` TEXT,
  `lab_serial_no` TEXT,
  `status` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pathology_report`;

-- No mock data generated for transactional table: pathology_report

-- Table structure for pathology_report_parameterdetails
CREATE TABLE IF NOT EXISTS `pathology_report_parameterdetails` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `pathology_report_id` TEXT,
  `parameter_value` TEXT,
  `created_at` DATETIME DEFAULT NULL,
  `parameter_id` TEXT,
  `result` TEXT,
  `remarks` TEXT,
  `pathology_id` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pathology_report_parameterdetails`;

-- No mock data generated for transactional table: pathology_report_parameterdetails

-- Table structure for pathology_unit
CREATE TABLE IF NOT EXISTS `pathology_unit` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `unit_name` TEXT,
  `unit_type` TEXT,
  `created_at` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pathology_unit`;

-- Mock data for pathology_unit
INSERT INTO `pathology_unit` (`id`, `unit_name`, `unit_type`, `created_at`) VALUES
(1, 'along', 'house', '2026-06-29 04:36:45'),
(2, 'whatever', 'social', '2026-04-26 03:26:43'),
(3, 'moment', 'position', '2026-01-01 04:17:39'),
(4, 'whole', 'become', '2026-07-11 19:01:19'),
(5, 'data', 'standard', '2026-05-12 13:33:39'),
(6, 'set', 'night', '2026-07-10 22:19:22'),
(7, 'blue', 'will', '2026-04-04 08:36:02'),
(8, 'capital', 'girl', '2026-01-09 19:22:23'),
(9, 'hope', 'night', '2026-03-25 07:02:09'),
(10, 'weight', 'available', '2026-04-21 07:39:02'),
(11, 'full', 'with', '2026-07-31 16:06:06'),
(12, 'paper', 'during', '2026-07-26 01:55:41'),
(13, 'natural', 'administration', '2026-04-05 13:43:12'),
(14, 'answer', 'around', '2026-01-20 09:58:14'),
(15, 'nor', 'role', '2026-07-19 06:05:26');

-- Table structure for patients
CREATE TABLE IF NOT EXISTS `patients` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` TEXT,
  `dob` TEXT,
  `mobileno` TEXT,
  `age` TEXT,
  `agemonth` TEXT,
  `agedays` TEXT,
  `address` TEXT,
  `email` TEXT,
  `guardian` TEXT,
  `relation` TEXT,
  `gender` TEXT,
  `religion` TEXT,
  `marital_status` TEXT,
  `occupation` TEXT,
  `nationality` TEXT,
  `wsd` TEXT,
  `identification_number` TEXT,
  `is_ipd` TEXT,
  `reg_number` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `patients`;

-- No mock data generated for transactional table: patients

-- Table structure for payment_mode
CREATE TABLE IF NOT EXISTS `payment_mode` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `mode` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `payment_mode`;

-- Mock data for payment_mode
INSERT INTO `payment_mode` (`id`, `mode`) VALUES
(1, 'book'),
(2, 'their'),
(3, 'food'),
(4, 'despite'),
(5, 'player'),
(6, 'instead'),
(7, 'capital'),
(8, 'cultural'),
(9, 'staff'),
(10, 'knowledge'),
(11, 'son'),
(12, 'investment'),
(13, 'same'),
(14, 'drug'),
(15, 'brother');

-- Table structure for pharmacy
CREATE TABLE IF NOT EXISTS `pharmacy` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `medicine_name` TEXT,
  `medicine_category_id` TEXT,
  `medicine_company` TEXT,
  `medicine_composition` TEXT,
  `min_level` TEXT,
  `reorder_level` TEXT,
  `unit` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy`;

-- Mock data for pharmacy
INSERT INTO `pharmacy` (`id`, `medicine_name`, `medicine_category_id`, `medicine_company`, `medicine_composition`, `min_level`, `reorder_level`, `unit`) VALUES
(1, 'Republican', 'partner', 'move', 'expect', 'indicate', 'than', 'season'),
(2, 'rather', 'feeling', 'agency', 'lawyer', 'bit', 'stock', 'allow'),
(3, 'voice', 'thus', 'one', 'deep', 'technology', 'Democrat', 'kitchen'),
(4, 'tree', 'foot', 'rest', 'expect', 'better', 'sea', 'worker'),
(5, 'discover', 'kid', 'yet', 'represent', 'food', 'participant', 'follow'),
(6, 'weight', 'yard', 'home', 'allow', 'citizen', 'even', 'him'),
(7, 'market', 'even', 'security', 'each', 'rich', 'official', 'front'),
(8, 'common', 'teach', 'at', 'listen', 'later', 'beautiful', 'just'),
(9, 'property', 'sport', 'month', 'rather', 'them', 'again', 'worry'),
(10, 'look', 'shake', 'gun', 'mission', 'his', 'who', 'question'),
(11, 'beat', 'family', 'physical', 'real', 'then', 'material', 'address'),
(12, 'born', 'activity', 'analysis', 'next', 'site', 'of', 'night'),
(13, 'far', 'appear', 'until', 'attack', 'interesting', 'tend', 'sport'),
(14, 'career', 'within', 'me', 'street', 'director', 'traditional', 'have'),
(15, 'throw', 'themselves', 'church', 'social', 'military', 'would', 'safe');

-- Table structure for pharmacy_batchdetails
CREATE TABLE IF NOT EXISTS `pharmacy_batchdetails` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `pharmacy_id` TEXT,
  `batch_no` TEXT,
  `expdate` TEXT,
  `opqty` TEXT,
  `pkqty` TEXT,
  `tax` DECIMAL(10,2) DEFAULT '0.00',
  `mrp` TEXT,
  `saleprice` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy_batchdetails`;

-- Mock data for pharmacy_batchdetails
INSERT INTO `pharmacy_batchdetails` (`id`, `pharmacy_id`, `batch_no`, `expdate`, `opqty`, `pkqty`, `tax`, `mrp`, `saleprice`) VALUES
(1, 'owner', 'change', 'item', 'drive', 'hospital', 13.44, 'young', 'only'),
(2, 'good', 'scientist', 'successful', 'network', 'with', 80.06, 'eight', 'tax'),
(3, 'theory', 'enjoy', 'street', 'letter', 'rather', 499.52, 'may', 'pattern'),
(4, 'tax', 'year', 'really', 'many', 'whose', 320.67, 'energy', 'certainly'),
(5, 'top', 'foreign', 'perhaps', 'like', 'table', 79.52, 'upon', 'upon'),
(6, 'force', 'PM', 'past', 'moment', 'leg', 278.67, 'onto', 'expert'),
(7, 'community', 'computer', 'hold', 'Mr', 'assume', 138.31, 'few', 'service'),
(8, 'speech', 'off', 'share', 'young', 'less', 99.35, 'heart', 'story'),
(9, 'Republican', 'sound', 'investment', 'give', 'marriage', 433.39, 'fine', 'guess'),
(10, 'break', 'concern', 'hospital', 'improve', 'decade', 68.07, 'case', 'summer'),
(11, 'coach', 'charge', 'level', 'war', 'pass', 303.15, 'whether', 'miss'),
(12, 'agree', 'sea', 'sign', 'final', 'image', 369.03, 'policy', 'all'),
(13, 'miss', 'modern', 'conference', 'draw', 'speak', 214.36, 'group', 'production'),
(14, 'ever', 'data', 'maintain', 'crime', 'coach', 306.92, 'similar', 'large'),
(15, 'event', 'not', 'audience', 'brother', 'south', 436.4, 'well', 'economy');

-- Table structure for pharmacy_category
CREATE TABLE IF NOT EXISTS `pharmacy_category` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `category_name` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy_category`;

-- Mock data for pharmacy_category
INSERT INTO `pharmacy_category` (`id`, `category_name`) VALUES
(1, 'defense'),
(2, 'contain'),
(3, 'opportunity'),
(4, 'maintain'),
(5, 'movie'),
(6, 'year'),
(7, 'attorney'),
(8, 'behind'),
(9, 'theory'),
(10, 'identify'),
(11, 'better'),
(12, 'partner'),
(13, 'fund'),
(14, 'from'),
(15, 'door');

-- Table structure for pharmacy_company
CREATE TABLE IF NOT EXISTS `pharmacy_company` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `company` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy_company`;

-- Mock data for pharmacy_company
INSERT INTO `pharmacy_company` (`id`, `company`) VALUES
(1, 'other'),
(2, 'of'),
(3, 'stand'),
(4, 'improve'),
(5, 'business'),
(6, 'sing'),
(7, 'air'),
(8, 'particularly'),
(9, 'your'),
(10, 'shake'),
(11, 'similar'),
(12, 'as'),
(13, 'crime'),
(14, 'open'),
(15, 'involve');

-- Table structure for pharmacy_composition
CREATE TABLE IF NOT EXISTS `pharmacy_composition` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `composition` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy_composition`;

-- Mock data for pharmacy_composition
INSERT INTO `pharmacy_composition` (`id`, `composition`) VALUES
(1, 'hold'),
(2, 'director'),
(3, 'policy'),
(4, 'employee'),
(5, 'nor'),
(6, 'it'),
(7, 'statement'),
(8, 'example'),
(9, 'history'),
(10, 'doctor'),
(11, 'itself'),
(12, 'walk'),
(13, 'standard'),
(14, 'partner'),
(15, 'thus');

-- Table structure for pharmacy_purchase
CREATE TABLE IF NOT EXISTS `pharmacy_purchase` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `billno` TEXT,
  `supplier_id` TEXT,
  `billdate` TEXT,
  `refdate` TEXT,
  `billamount` TEXT,
  `discount` DECIMAL(10,2) DEFAULT '0.00',
  `tax` DECIMAL(10,2) DEFAULT '0.00',
  `othercharges` TEXT,
  `roundoff` TEXT,
  `netamount` TEXT,
  `entry_by` TEXT,
  `datetime` DATETIME DEFAULT NULL,
  `remarks` TEXT,
  `payment_mode` TEXT,
  `transaction_id` TEXT,
  `voucherdate` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy_purchase`;

-- No mock data generated for transactional table: pharmacy_purchase

-- Table structure for pharmacy_purchase_detail
CREATE TABLE IF NOT EXISTS `pharmacy_purchase_detail` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `purchase_billid` TEXT,
  `supplier_id` TEXT,
  `batchno` TEXT,
  `expirydate` TEXT,
  `mrp` TEXT,
  `pkqty` TEXT,
  `saleprice` TEXT,
  `qty` TEXT,
  `discountper` TEXT,
  `taxper` TEXT,
  `amount` DECIMAL(10,2) DEFAULT '0.00',
  `freeqty` TEXT,
  `purchase_price` TEXT,
  `pharmacy_id` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy_purchase_detail`;

-- No mock data generated for transactional table: pharmacy_purchase_detail

-- Table structure for pharmacy_return
CREATE TABLE IF NOT EXISTS `pharmacy_return` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `billno` TEXT,
  `patient_id` INT(11) DEFAULT NULL,
  `billdate` TEXT,
  `ipdno` TEXT,
  `refdate` TEXT,
  `billamount` TEXT,
  `discount` DECIMAL(10,2) DEFAULT '0.00',
  `tax` DECIMAL(10,2) DEFAULT '0.00',
  `othercharges` TEXT,
  `roundoff` TEXT,
  `netamount` TEXT,
  `entry_by` TEXT,
  `datetime` DATETIME DEFAULT NULL,
  `remarks` TEXT,
  `payment_mode` TEXT,
  `patient_name` TEXT,
  `amount_received` TEXT,
  `transaction_id` TEXT,
  `patient_mobileno` TEXT,
  `ipd_patient` TEXT,
  `doctor_id` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy_return`;

-- No mock data generated for transactional table: pharmacy_return

-- Table structure for pharmacy_return_detail
CREATE TABLE IF NOT EXISTS `pharmacy_return_detail` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `sale_billid` TEXT,
  `patient_id` INT(11) DEFAULT NULL,
  `batchno` TEXT,
  `expirydate` TEXT,
  `mrp` TEXT,
  `pkqty` TEXT,
  `saleprice` TEXT,
  `qty` TEXT,
  `discountper` TEXT,
  `taxper` TEXT,
  `amount` DECIMAL(10,2) DEFAULT '0.00',
  `freeqty` TEXT,
  `purchase_price` TEXT,
  `pharmacy_id` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy_return_detail`;

-- No mock data generated for transactional table: pharmacy_return_detail

-- Table structure for pharmacy_sale
CREATE TABLE IF NOT EXISTS `pharmacy_sale` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `billno` TEXT,
  `patient_id` INT(11) DEFAULT NULL,
  `ipdno` TEXT,
  `billdate` TEXT,
  `refdate` TEXT,
  `billamount` TEXT,
  `discount` DECIMAL(10,2) DEFAULT '0.00',
  `tax` DECIMAL(10,2) DEFAULT '0.00',
  `othercharges` TEXT,
  `roundoff` TEXT,
  `netamount` TEXT,
  `entry_by` TEXT,
  `datetime` DATETIME DEFAULT NULL,
  `remarks` TEXT,
  `payment_mode` TEXT,
  `patient_name` TEXT,
  `amount_received` TEXT,
  `transaction_id` TEXT,
  `patient_mobileno` TEXT,
  `ipd_patient` TEXT,
  `doctor_id` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy_sale`;

-- No mock data generated for transactional table: pharmacy_sale

-- Table structure for pharmacy_sale_detail
CREATE TABLE IF NOT EXISTS `pharmacy_sale_detail` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `sale_billid` TEXT,
  `patient_id` INT(11) DEFAULT NULL,
  `batchno` TEXT,
  `expirydate` TEXT,
  `mrp` TEXT,
  `pkqty` TEXT,
  `saleprice` TEXT,
  `qty` TEXT,
  `discountper` TEXT,
  `taxper` TEXT,
  `amount` DECIMAL(10,2) DEFAULT '0.00',
  `freeqty` TEXT,
  `purchase_price` TEXT,
  `pharmacy_id` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy_sale_detail`;

-- No mock data generated for transactional table: pharmacy_sale_detail

-- Table structure for pharmacy_unit
CREATE TABLE IF NOT EXISTS `pharmacy_unit` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `unit` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `pharmacy_unit`;

-- Mock data for pharmacy_unit
INSERT INTO `pharmacy_unit` (`id`, `unit`) VALUES
(1, 'one'),
(2, 'catch'),
(3, 'government'),
(4, 'marriage'),
(5, 'continue'),
(6, 'various'),
(7, 'they'),
(8, 'peace'),
(9, 'carry'),
(10, 'act'),
(11, 'toward'),
(12, 'much'),
(13, 'level'),
(14, 'statement'),
(15, 'small');

-- Table structure for predefined
CREATE TABLE IF NOT EXISTS `predefined` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `predefined` TEXT,
  `pathology_id` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `predefined`;

-- Mock data for predefined
INSERT INTO `predefined` (`id`, `predefined`, `pathology_id`) VALUES
(1, 'professional', 'lead'),
(2, 'general', 'effect'),
(3, 'yes', 'check'),
(4, 'director', 'Mrs'),
(5, 'late', 'ahead'),
(6, 'they', 'lay'),
(7, 'market', 'public'),
(8, 'cut', 'front'),
(9, 'politics', 'its'),
(10, 'will', 'interest'),
(11, 'important', 'far'),
(12, 'ever', 'out'),
(13, 'well', 'yet'),
(14, 'between', 'agent'),
(15, 'certain', 'would');

-- Table structure for refund
CREATE TABLE IF NOT EXISTS `refund` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `pathology_billing_id` TEXT,
  `pathology_id` TEXT,
  `qty` TEXT,
  `amount` DECIMAL(10,2) DEFAULT '0.00',
  `charge_amt` TEXT,
  `refund_id` TEXT,
  `transaction_id` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `refund`;

-- No mock data generated for transactional table: refund

-- Table structure for stock_adjustment
CREATE TABLE IF NOT EXISTS `stock_adjustment` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `datetime` DATETIME DEFAULT NULL,
  `pharmacy_id` TEXT,
  `batch_id` TEXT,
  `qty` TEXT,
  `adjustment` TEXT,
  `remarks` TEXT,
  `entry_by` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `stock_adjustment`;

-- Mock data for stock_adjustment
INSERT INTO `stock_adjustment` (`id`, `datetime`, `pharmacy_id`, `batch_id`, `qty`, `adjustment`, `remarks`, `entry_by`) VALUES
(1, '2026-01-01 01:57:40', 'seven', 'south', 'gun', 'form', 'your', 7),
(2, '2026-07-17 10:01:05', 'particularly', 'blood', 'could', 'practice', 'area', 5),
(3, '2026-02-27 11:48:44', 'party', 'believe', 'owner', 'list', 'figure', 10),
(4, '2026-07-27 12:56:18', 'degree', 'body', 'say', 'send', 'rest', 5),
(5, '2026-05-28 02:50:18', 'nice', 'half', 'can', 'itself', 'successful', 2),
(6, '2026-06-25 14:29:35', 'throughout', 'interesting', 'mother', 'amount', 'between', 6),
(7, '2026-06-28 20:21:03', 'situation', 'talk', 'industry', 'opportunity', 'investment', 4),
(8, '2026-05-17 00:48:30', 'piece', 'others', 'charge', 'might', 'letter', 1),
(9, '2026-03-17 11:10:27', 'build', 'despite', 'sit', 'imagine', 'drug', 4),
(10, '2026-03-06 12:32:26', 'fund', 'issue', 'billion', 'have', 'apply', 3),
(11, '2026-06-10 09:19:23', 'hospital', 'present', 'yeah', 'rule', 'development', 3),
(12, '2026-01-07 09:41:33', 'determine', 'old', 'single', 'professional', 'plan', 1),
(13, '2026-04-13 21:39:03', 'on', 'think', 'laugh', 'role', 'clearly', 8),
(14, '2026-06-06 09:42:40', 'feeling', 'around', 'save', 'society', 'ball', 6),
(15, '2026-04-26 18:06:48', 'middle', 'statement', 'time', 'why', 'sense', 2);

-- Table structure for suppliers
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` TEXT,
  `gstno` TEXT,
  `address` TEXT,
  `mobileno` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `suppliers`;

-- Mock data for suppliers
INSERT INTO `suppliers` (`id`, `supplier_name`, `gstno`, `address`, `mobileno`) VALUES
(1, 'soldier', 'office', 'present', '1162167053702'),
(2, 'these', 'thank', 'dark', '0083743882820'),
(3, 'property', 'since', 'up', '7783645743828'),
(4, 'effort', 'cover', 'western', '6848140345916'),
(5, 'join', 'arm', 'rock', '7117697620343'),
(6, 'argue', 'company', 'material', '7181272261828'),
(7, 'beautiful', 'community', 'through', '2934243336963'),
(8, 'seek', 'plant', 'structure', '6424316937196'),
(9, 'go', 'go', 'expert', '5233503912102'),
(10, 'also', 'their', 'bill', '7480373862327'),
(11, 'listen', 'audience', 'read', '3665934045272'),
(12, 'commercial', 'item', 'camera', '7388752694398'),
(13, 'smile', 'until', 'program', '3296233385724'),
(14, 'board', 'down', 'instead', '4407334265371'),
(15, 'agreement', 'customer', 'stage', '8780326686179');

-- Table structure for transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `bill_id` TEXT,
  `billno` TEXT,
  `charge_id` INT(11) DEFAULT NULL,
  `amount` DECIMAL(10,2) DEFAULT '0.00',
  `compercent` TEXT,
  `commission` TEXT,
  `department` TEXT,
  `doctor_id` INT(11) DEFAULT NULL,
  `entry_by` TEXT,
  `created_at` DATETIME DEFAULT NULL,
  `modified_at` TEXT,
  `fixedcom` TEXT,
  `billtype` TEXT,
  `payment_mode` TEXT,
  `payment_date` TEXT,
  `received_by` TEXT,
  `type` TEXT,
  `patient_id` INT(11) DEFAULT NULL,
  `amount_received` TEXT,
  `pharmapatient` TEXT,
  `pharmamobile` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `transactions`;

-- No mock data generated for transactional table: transactions

-- Table structure for transactions2
CREATE TABLE IF NOT EXISTS `transactions2` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` TEXT,
  `billno` TEXT,
  `section` TEXT,
  `patient_id` INT(11) DEFAULT NULL,
  `case_reference_id` TEXT,
  `opd_id` TEXT,
  `ipd_id` TEXT,
  `pharmacy_bill_basic_id` TEXT,
  `pathology_billing_id` TEXT,
  `radiology_billing_id` TEXT,
  `blood_donor_cycle_id` TEXT,
  `blood_issue_id` TEXT,
  `ambulance_call_id` TEXT,
  `appointment_id` TEXT,
  `return_id` TEXT,
  `attachment` TEXT,
  `attachment_name` TEXT,
  `amount_type` TEXT,
  `net_amount` DECIMAL(10,2) DEFAULT '0.00',
  `amount` DECIMAL(10,2) DEFAULT '0.00',
  `cu_refund_amount` TEXT,
  `due_amount` TEXT,
  `commission` TEXT,
  `payment_mode` TEXT,
  `cheque_no` TEXT,
  `cheque_date` TEXT,
  `payment_date` TEXT,
  `note` TEXT,
  `received_by` TEXT,
  `created_at` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `transactions2`;

-- No mock data generated for transactional table: transactions2

-- Table structure for user_permission
CREATE TABLE IF NOT EXISTS `user_permission` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `menuid` TEXT,
  `title` TEXT,
  `permission_for` TEXT,
  `userid` TEXT,
  `add_permission` TEXT,
  `view_permission` TEXT,
  `modify_permission` TEXT,
  `delete_permission` TEXT,
  `type` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

TRUNCATE TABLE `user_permission`;

-- Mock data for user_permission
INSERT INTO `user_permission` (`id`, `menuid`, `title`, `permission_for`, `userid`, `add_permission`, `view_permission`, `modify_permission`, `delete_permission`, `type`) VALUES
(1, 'have', 'help', 'it', 'respond', 'common', 'cold', 'public', 'mouth', 'camera'),
(2, 'hotel', 'art', 'call', 'those', 'field', 'become', 'music', 'a', 'window'),
(3, 'school', 'others', 'network', 'rather', 'approach', 'safe', 'will', 'quality', 'other'),
(4, 'Democrat', 'but', 'study', 'property', 'imagine', 'whom', 'crime', 'crime', 'catch'),
(5, 'bar', 'good', 'none', 'little', 'artist', 'use', 'become', 'opportunity', 'book'),
(6, 'college', 'million', 'fact', 'whatever', 'whose', 'myself', 'without', 'treatment', 'anything'),
(7, 'behavior', 'example', 'truth', 'those', 'enough', 'talk', 'major', 'heart', 'eye'),
(8, 'listen', 'defense', 'back', 'building', 'me', 'size', 'Congress', 'hope', 'one'),
(9, 'mother', 'send', 'nice', 'tough', 'involve', 'you', 'crime', 'new', 'fish'),
(10, 'happy', 'wall', 'only', 'again', 'drop', 'production', 'teach', 'gun', 'run'),
(11, 'laugh', 'stay', 'rise', 'over', 'movie', 'data', 'from', 'job', 'keep'),
(12, 'than', 'people', 'surface', 'record', 'west', 'decide', 'thousand', 'possible', 'amount'),
(13, 'government', 'eight', 'newspaper', 'pass', 'character', 'environment', 'husband', 'night', 'sometimes'),
(14, 'likely', 'loss', 'imagine', 'edge', 'bar', 'total', 'catch', 'later', 'couple'),
(15, 'peace', 'its', 'little', 'fine', 'tax', 'join', 'career', 'wish', 'guess');

SET FOREIGN_KEY_CHECKS = 1;

