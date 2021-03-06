CREATE TABLE `cs320`.`patient` (
  `patient_id` INT NOT NULL AUTO_INCREMENT,
  `patient_name` VARCHAR(45) NOT NULL,
  `blood_type` VARCHAR(45) NOT NULL,
  `p_weight` VARCHAR(45) NOT NULL,
  `p_height` VARCHAR(45) NOT NULL,
  `disease_hist` VARCHAR(150) NULL,
  `medicine_hist` VARCHAR(45) NULL,
  `diet_plan` VARCHAR(45) NULL,
  `exercise_plan` VARCHAR(45) NULL,
  PRIMARY KEY (`patient_id`));


CREATE TABLE `cs320`.`doctor` (
  `doctor_id` INT NOT NULL AUTO_INCREMENT,
  `doctor_name` VARCHAR(45) NOT NULL,
  `d_field` VARCHAR(45) NOT NULL,
  `d_bloodtype` VARCHAR(45) NOT NULL,
  `d_weight` VARCHAR(45) NOT NULL,
  `d_height` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`doctor_id`));

CREATE TABLE `cs320`.`appointment` (
`appointment_no` INT NOT NULL AUTO_INCREMENT,
`ap_datetime` DATETIME,
`patient_id` INT NOT NULL,
`doctor_id` INT NOT NULL,
`polyclinic` VARCHAR(45) NOT NULL,
PRIMARY KEY (`appointment_no`),
FOREIGN KEY (`patient_id`) references `cs320`(`patient`),
FOREIGN KEY (`doctor_id`) references `cs320`(`doctor`)
);

create table `cs320`.`availability`(
`doctor_id` INT,
`av_from` DATETIME,
`av_to` DATETIME,
PRIMARY KEY(`doctor_id`),
FOREIGN KEY (`doctor_id`) references `cs320`(`doctor`)
);

CREATE TABLE `cs320`.`diagnosis`(
`diagnosis_id` INT NOT NULL AUTO_INCREMENT,
`disease` varchar(15),
`medicine` varchar(15),
`patient_id` INT NOT NULL,
`doctor_id` INT NOT NULL,
FOREIGN KEY (`doctor_id`) references `cs320`(`doctor`),
PRIMARY KEY (`diagnosis_id`),
FOREIGN KEY (`patient_id`) references `cs320`(`patient`)
);

CREATE TABLE `cs320`.`meal_plan`(
`meal_plan_id` INT NOT NULL AUTO_INCREMENT,
`breakfast` varchar(500),
`lunch` varchar(500),
`dinner` varchar(500),
`patient_id` INT,
PRIMARY KEY (`meal_plan_id`),
FOREIGN KEY (`patient_id`) references `cs320`(`patient`)
);

CREATE TABLE `cs320`.`exercise_plan`(
`exercise_plan_id` INT NOT NULL AUTO_INCREMENT,
`plan` varchar(500),
`patient_id` INT,
PRIMARY KEY (`exercise_plan_id`),
FOREIGN KEY (`patient_id`) references `cs320`(`patient`)
);
