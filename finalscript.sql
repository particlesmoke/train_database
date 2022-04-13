drop database if exists mydb;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`train`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`train` (
  `train_no` INT NOT NULL,
  `train_name` VARCHAR(45) NOT NULL,
  `start_location` VARCHAR(45) NULL,
  `end_location` VARCHAR(45) NULL,
  PRIMARY KEY (`train_no`),
  UNIQUE INDEX `train_no_UNIQUE` (`train_no` ASC) VISIBLE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`station`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`station` (
  `station_no` VARCHAR(10) NOT NULL,
  `station_name` VARCHAR(45) NULL,
  `station_city` VARCHAR(45) NULL,
  `no_of_platforms` INT NULL,
  PRIMARY KEY (`station_no`))
ENGINE = InnoDB
COMMENT = '	';


-- -----------------------------------------------------
-- Table `mydb`.`train_schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`train_schedule` (
  `train_no` INT NOT NULL,
  `station_no` VARCHAR(10) NOT NULL,
  `arrival_time` TIME NULL,
  `dept_time` TIME NULL,
  `platform_no` INT NULL,
  `arrives_passes` VARCHAR(10) BINARY NULL COMMENT 'A/P',
  `distance` INT ,
  INDEX `train_no_idx` (`train_no` ASC) VISIBLE,
  INDEX `station_no_idx` (`station_no` ASC) VISIBLE,
  PRIMARY KEY (`station_no`, `train_no`),
  CONSTRAINT `train_no`
    FOREIGN KEY (`train_no`)
    REFERENCES `mydb`.`train` (`train_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `station_no`
    FOREIGN KEY (`station_no`)
    REFERENCES `mydb`.`station` (`station_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;

-- -----------------------------------------------------
-- Data Entries in the 3 tables`
-- -----------------------------------------------------

INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('2564', 'NDLS SHC SPL');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('2570', 'NDLS DBG SF SPL');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('11058', 'ASR CSMT EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12004', 'LJN SWRAN SHTBD');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12005', 'KALKA SHTBDI EX');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12011', 'KLK SHATABADI');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12015', 'AJMER SHATABDI');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12034', 'NDLS CNB SHT');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12045', 'NDLS CDG SHTBDI');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12057', 'UHL JANSHATABDI');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12138', 'PUNJAB MAIL');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12215', 'BDTS GARIB RATH');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12226', 'KAIFIYAT EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12236', 'ANVT MDP HUMSFR');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12260', 'SDAH DURONTO');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12264', 'PUNE DURNTO EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12282', 'BBS DURONTO EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12302', 'HWH RAJDHANI');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12304', 'POORVA EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12310', 'RJPB TEJAS RAJ');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12311', 'NETAJI EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12312', 'NETAJI EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12314', 'SEALDAH RAJDHNI');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12324', 'BME HWH SF EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12368', 'VIKRAMSHILA EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12392', 'SHRAMJIVI EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12394', 'SAMPOORAN K EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12398', 'MAHABODHI EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12414', 'JAT AII EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12418', 'PRAYAGRAJ EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12420', 'GOMTI EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12424', 'DBRG RAJDHANI');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12428', 'ANVT REWA EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12444', 'ANVT HLZ SF EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12449', 'GOA SMPRK K SPL');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12452', 'SHRAM SHKTI EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12474', 'SARVODAYA EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12488', 'SEEMANCHAL EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12506', 'NORTH EAST EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12554', 'VAISHALI EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12556', 'GORAKDAM EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12560', 'SHIV GANGA EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12562', 'SWTANTRTA S EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12566', 'BIHAR S KRANTI');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12572', 'GKP HUMSAFAR EX');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12582', 'BSBS SF EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12616', 'GRAND TRUNK EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12618', 'MNGLA LKSDP EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12622', 'TAMILNADU EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12652', 'SMPARK KRNT EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12715', 'SACHKUND EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12802', 'PURUSHOTTAM EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12808', 'SAMTA EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12816', 'NANDANKANAN EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12818', 'JHARKHAND EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12878', 'RNC GARIB RATH');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12904', 'GOLDEN TEMPLE M');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12908', 'MHRST SMPRK K EX');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12916', 'ASHRAM EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12925', 'PASCHIM EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12926', 'PASCHIM EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12952', 'MMCT TEJAS RAJ');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12954', 'AUG KRANTI RAJ');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12958', 'ADI SJ RAJDHANI');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('12986', 'JP DOUBLE DCKER');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('13258', 'JANSADHARAN EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('13484', 'FARAKKA EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('14004', 'MLDT EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('14006', 'LICHCHIVI EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('14011', 'DLI HSX EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('14021', 'SAINIK EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('14038', 'NDLS SCL EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('14217', 'UNCHAHAR EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('14218', 'UNCHAHAR EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('14311', 'ALA HAZRAT EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('14662', 'JAT BME EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('14724', 'KALINDI EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('15014', 'RANIKHET EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('15484', 'MAHANANDA EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('15657', 'BRAHMPUTRA EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('15708', 'ASR KIR EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('19020', 'HW BDTS EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('19032', 'YOGA EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('19307', 'INDB CDG EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('20802', 'MAGADH EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('20806', 'AP EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('20808', 'HIRAKUND EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('20938', 'DEE PBR EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('20940', 'SLN ADI SF EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('22222', 'CSMT RAJDHANI');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('22412', 'ARUNACHAL EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('22438', 'PRYJ HUMSAFAR');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('22824', 'BBS RAJDHANI');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('22918', 'HW BDTS SF EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('22950', 'DEE BDTS SF EXP');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('22995', 'MANDORE EXPRESS');
INSERT INTO `mydb`.`train` (`train_no`, `train_name`) VALUES ('25014', 'CORBET PRK LINK');

INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ABR )', 'Abu Road', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ADI )', 'Ahmedabad Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( AGC )', 'Agra Cantt', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( AI )', 'Adipur', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( AII )', 'Ajmer Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( AJE )', 'Anjar', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ALJN )', 'Aligarh Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( AMRO )', 'Amroha', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ANND )', 'Anand Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ANSB )', 'Anandpur Sahib', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ASN )', 'Asansol Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ASR )', 'Amritsar Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( AWB )', 'Aurangabad', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( AWR )', 'Alwar', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( AWY )', 'Aluva', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BAB )', 'Babina', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BANE )', 'Basni', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BAQ )', 'Ganj Basoda', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BAU )', 'Burhanpur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BBU )', 'Bhabua Road', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BCOB )', 'Bhachau Bg', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BDJ )', 'Vadakara', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BDTS )', 'Mumbai Bandra Terminus', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BDWS )', 'BADARWAS', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BE )', 'Bareilly', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BEAS )', 'Beas', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BER )', 'Beawar', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BGKT )', 'Bhagat Ki Kothi', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BGZ )', 'Bahadurgarh', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BH )', 'Bharuch Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BHS )', 'Vidisha', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BHUJ )', 'Bhuj', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BINA )', 'Bina Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BKI )', 'Bandikui Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BL )', 'Valsad', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BLQR )', 'Bilaspur Road', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BLT )', 'Balotra Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BLZ )', 'Budhlada', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BME )', 'Barmer', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BNT )', 'Bharthana', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BPF )', 'Banapura', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BPL )', 'Bhopal Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BQP )', 'Bighapur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BRC )', 'Vadodara Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BRRG )', 'Biyavra Rajgarh', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BRZ )', 'Bareta', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BSL )', 'Bhusaval Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BSR )', 'Vasai Road', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BTE )', 'Bharatpur Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BTI )', 'Bhatinda Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BTJL )', 'Bhatkal', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BU )', 'Baswa', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BUT )', 'Baytu', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BVI )', 'Borivali', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BWL )', 'Bawal', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BWM )', 'Bhawani Mandi', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BWN )', 'Barddhaman Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BWSN )', 'Bijwasan', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( BXN )', 'Bayana Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( CAN )', 'Kannur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( CDG )', 'Chandigarh', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( CHI )', 'Chiplun', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( CLDY )', 'Chandlodiya', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( CLT )', 'Kozhikode', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( CNB )', 'Kanpur Central', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( CNDM )', 'Chandi Mandir', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( CSMT )', 'Chhatrapati Shivaji Maharaj Terminus', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( CSN )', 'Chalisgaon Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DAA )', 'Datia', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DBA )', 'Dabra', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DBD )', 'Deoband', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DDU )', 'Deendayal Upadhyaya Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DEC )', 'Delhi Cantt', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DEE )', 'Delhi Sarai Rohilla', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DGR )', 'Durgapur', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DHD )', 'Dahod', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DHG )', 'Dhrangdhra', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DHN )', 'Dhanbad Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DHO )', 'Dhaulpur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DKZ )', 'Delhi Kishanganj', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DLI )', 'Old Delhi', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DMW )', 'Dalmau Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DNA )', 'Degana Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DO )', 'Dausa', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DOR )', 'Dundara', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DOS )', 'Dehri On Sone', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DR )', 'Mumbai Dadar Central', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DRD )', 'Dahanu Road', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DSA )', 'Delhi Shahdara', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( DWX )', 'Dewas', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ERS )', 'Ernakulam Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ET )', 'Itarsi Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ETW )', 'Etawah', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( FA )', 'Falna', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( FDB )', 'Faridabad', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( FDK )', 'Faridkot', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( FL )', 'Phulera Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( FTP )', 'Fatehpur', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( FZD )', 'Firozabad', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( FZR )', 'Firozpur Cant', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GADJ )', 'Gandhinagar Jaipur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GAYA )', 'Gaya Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GDA )', 'Godhra Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GGC )', 'Gangapur City', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GGN )', 'Gurgaon', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GHH )', 'Garhi Harsaru', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GIMB )', 'Gandhidham Bg', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GJL )', 'Gajraula Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GJUT )', 'Gangsar Jaitu', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GMO )', 'Gomoh Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GNA )', 'Goneana', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GNC )', 'Gandhinagar Capital', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GNU )', 'Ganaur', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GOTN )', 'Gotan', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GRMR )', 'Garhi Manikpur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GTJT )', 'Getor Jagatpura', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GUNA )', 'Guna', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GWL )', 'Gwalior Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GZB )', 'Ghaziabad', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( GZN )', 'New Ghaziabad', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HAN )', 'Hindaun City', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HAPA )', 'Hapa', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HBD )', 'Hoshangabad', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HD )', 'Harda', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HDW )', 'Haldwani', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HP )', 'Haripur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HPU )', 'Hapur', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HRS )', 'Hathras Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HSI )', 'Harsauli', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HSX )', 'Hoshiarpur', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HVD )', 'Halvad', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HW )', 'Haridwar Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HWH )', 'Howrah Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( HZD )', 'Hazaribagh Road', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( IGP )', 'Igatpuri', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( INDB )', 'Indore', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( J )', 'Jalna', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JAM )', 'Jamnagar', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JAT )', 'Jammu Tawi', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JHL )', 'Jakhal Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JIND )', 'Jind Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JJK )', 'Jhinjhak', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JL )', 'Jalgaon Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JP )', 'Jaipur', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JPD )', 'Jalalpur Dhai', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JRC )', 'Jalandhar Cant', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JSM )', 'Jaisalmer', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JU )', 'Jodhpur Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JUC )', 'Jalandhar City', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JUDW )', 'Jagadhri Workshop', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( JWB )', 'Jawai Bandh', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KARR )', 'Kharar', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KART )', 'Kiratpur Sahib', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KAT )', 'Khatauli', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KAWR )', 'Karwar', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KGM )', 'Kathgodam', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KGQ )', 'Kasaragod', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KHNM )', 'Kunda Harnamgnj', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KIP )', 'Khalilpur', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KJT )', 'Karjat', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KKDE )', 'Kurukshetra Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KKN )', 'Khirkiya', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KKP )', 'Kot Kapura', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KKW )', 'Kankavali', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KLK )', 'Kalka', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KLL )', 'Kalol Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KMNC )', 'Kuchaman City', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KNN )', 'Khanna', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KNW )', 'Khandwa', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KOTA )', 'Kota Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KPV )', 'Kashipur', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KQR )', 'Koderma', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KRH )', 'Khairthal', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KRJ )', 'Khurja Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KRMI )', 'Karmali', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KSG )', 'Kishangarh', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KSV )', 'Kosi Kalan', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KT )', 'Kumta', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KTHU )', 'Kathua', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KUDA )', 'Kundapura', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KUN )', 'Karnal', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KUPR )', 'Khurdpur', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( KYN )', 'Kalyan Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( LAR )', 'Lalitpur', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( LDH )', 'Ludhiana Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( LGO )', 'Lalgopalganj', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( LKO )', 'Lucknow', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( LKU )', 'Lal Kuan', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( LLJ )', 'Lalganj', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( LNL )', 'Lonavala', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( LUNI )', 'Luni Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MAJN )', 'Mangalore Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MAO )', 'Goa Madgaon', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MAUR )', 'Maur', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MB )', 'Moradabad', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MDNR )', 'Modinagar', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MEX )', 'Mukerian', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MFKA )', 'Musafir Khana', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MGN )', 'Meghnagar', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MIL )', 'Milak', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MJ )', 'Marwar Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MKC )', 'Maksi', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MKH )', 'Malakhera', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MKN )', 'Makrana Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MMCT )', 'Mumbai Central', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MMR )', 'Manmad Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MOZ )', 'Muzaffarnagar', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MRA )', 'Morena', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MRND )', 'Morinda', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MSH )', 'Mahesana Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MSZ )', 'Mansa', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MTC )', 'Meerut City', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MTD )', 'Merta Road Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MTJ )', 'Mathura Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MUD )', 'Muradnagar', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MUT )', 'Meerut Cant', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( MZP )', 'Mirzapur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NAD )', 'Nagda Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ND )', 'Nadiad Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NDLS )', 'New Delhi', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NED )', 'Huzur Sahib Nanded', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NHH )', 'Nihalgarh', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NK )', 'Nasik Road', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NLDM )', 'Nangal Dam', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NLE )', 'Nileshwar', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NMK )', 'Nim Ka Thana', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NNL )', 'Narnaul', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NRI )', 'Naraina', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NRW )', 'Narwana Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NUR )', 'Narela', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NVS )', 'Navsari', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( NZM )', 'Delhi H Nizamuddin', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ON )', 'Unnao Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PAU )', 'Purna Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PAY )', 'Payyanur', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PBN )', 'Parbhani Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PBR )', 'Porbandar', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PC )', 'Pachora Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PDWA )', 'Pindwara', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PERN )', 'Pernem', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PFM )', 'Phaphamau Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PFR )', 'Pachor Road', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PGW )', 'Phagwara Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PHD )', 'Phaphund', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PKW )', 'Pilkhua', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PLCJ )', 'Phalodi Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PM )', 'Palam', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PMY )', 'Pali Marwar', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PNME )', 'Parasnath', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PNP )', 'Panipat Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PNU )', 'Palanpur Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PNVL )', 'Panvel', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PQN )', 'Pariawan Kalakanker Rd', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PRG )', 'Prayag', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PRYJ )', 'Prayagraj Allahabad Junction', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PTB )', 'Pattambi', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PTKC )', 'Pathankot Cantt', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PTRD )', 'Pataudi Road', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PUNE )', 'Pune Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( PYGS )', 'Prayagraj Sangam', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RANI )', 'Rani', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RDRA )', 'Ramdevra', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RE )', 'Rewari', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RGS )', 'Ringas Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RHG )', 'Rajgarh', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RJT )', 'Rajkot Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RK )', 'Roorkee', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RKB )', 'Raika Bagh', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RKM )', 'Raja Ki Mandi', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RKMP )', 'Rani Kamlapati', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RMA )', 'Ramganj Mandi', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RMC )', 'RAM CHAURA ROAD', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RMR )', 'Ramnagar', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RMU )', 'Rampur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RN )', 'Ratnagiri', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ROK )', 'Rohtak Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RPAR )', 'Rupnagar', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RPJ )', 'Rajpura Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RRS )', 'Raghuraj Singh', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RTA )', 'Ruthiyai', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RTM )', 'Ratlam Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RUPC )', 'Rudrapur City', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( RURA )', 'Rura', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SASN )', 'SAHIBZADA ASNGR', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SBB )', 'Sahibabad', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SBIB )', 'Sabarmati BG', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SELU )', 'Selu', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SEU )', 'Sendra', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SFY )', 'Shajapur', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SGZ )', 'Shamgarh', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SHDM )', 'Shahbad Marknda', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SIOB )', 'Samakhiali Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SIR )', 'Sirhind Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SKB )', 'Shikohabad Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SKF )', 'Sakhoti Tanda', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SLN )', 'Sultanpur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SMK )', 'Samalkha', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SMPR )', 'Shri Madhopur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SMR )', 'Samdhari Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SMVJ )', 'Shri Mahaveerji', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SNP )', 'Sonipat', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SOD )', 'Sojat Road', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SRE )', 'Saharanpur', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SRR )', 'Shoranur Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SSB )', 'Shakurbasti', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SSM )', 'Sasaram', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( ST )', 'Surat', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SUNR )', 'Surendranagar', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SVPI )', 'Shivpuri', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SWM )', 'Sawai Madhopur', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( SZM )', 'Subzi Mandi', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( TCR )', 'Thrisur', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( TDL )', 'Tundla Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( THVM )', 'Thivim', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( TIR )', 'Tirur', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( TLY )', 'Thalassery', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( TPZ )', 'Tapri Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( TQA )', 'Takia', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( TUN )', 'Tohana', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( UBC )', 'Ambala City', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( UCR )', 'Unchahar Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( UD )', 'Udupi', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( UHL )', 'Una Himachal', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( UJA )', 'Unjha', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( UJN )', 'Ujjain Jn', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( UMB )', 'Ambala Cant Jn', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( UTL )', 'Utarlai', '', '3');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( VAPI )', 'Vapi', '', '4');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( VG )', 'Viramgam Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( VGLB )', 'Virangana Lakshmibai Jn', '', '2');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( WKR )', 'Wankaner Jn', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( YJUD )', 'YAMUNANAGAR JUD', '', '1');
INSERT INTO `mydb`.`station` (`station_no`, `station_name`, `station_city`, `no_of_platforms`) VALUES ('( YNRK )', 'Yog Nagari Rishikesh', '', '4');

INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( ABR )', '20:15:00', '20:25:00', '0', 'P', '743');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( ABR )', '02:15:00', '02:25:00', '0', 'A', '748');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12958', '( ABR )', '05:20:00', '05:25:00', '0', 'P', '749');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( ABR )', '00:45:00', '00:55:00', '0', 'P', '999');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( ABR )', '11:05:00', '11:15:00', '0', 'P', '1019');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( ABR )', '20:30:00', '20:40:00', '0', 'P', '743');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( ABR )', '17:50:00', '18:00:00', '0', 'A', '1373');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( ABR )', '03:10:00', '03:20:00', '0', 'P', '679');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( ADI )', '00:35:00', '00:45:00', '0', 'P', '952');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( ADI )', '06:20:00', '00:00:00', '0', 'P', '934');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12958', '( ADI )', '08:45:00', '00:00:00', '0', 'P', '935');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( ADI )', '15:40:00', '00:00:00', '0', 'A', '1228');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( ADI )', '22:00:00', '00:00:00', '0', 'A', '1560');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( ADI )', '07:10:00', '07:25:00', '0', 'A', '865');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( AGC )', '08:10:00', '08:15:00', '0', 'P', '581');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( AGC )', '08:30:00', '08:35:00', '0', 'P', '188');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( AGC )', '08:00:00', '08:05:00', '0', 'P', '1440');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( AGC )', '19:50:00', '19:55:00', '0', 'A', '680');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( AI )', '09:52:00', '09:54:00', '0', 'P', '1478');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12015', '( AII )', '12:55:00', '00:00:00', '0', 'P', '444');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( AII )', '16:10:00', '16:20:00', '0', 'A', '438');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( AII )', '12:10:00', '00:00:00', '0', 'A', '1018');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( AII )', '22:25:00', '22:35:00', '0', 'A', '443');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12958', '( AII )', '01:45:00', '01:50:00', '0', 'A', '444');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( AII )', '20:20:00', '20:30:00', '0', 'A', '694');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( AII )', '12:15:00', '12:25:00', '0', 'A', '720');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( AII )', '06:10:00', '06:20:00', '0', 'P', '714');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( AII )', '15:30:00', '15:40:00', '0', 'A', '438');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( AII )', '13:25:00', '13:35:00', '0', 'P', '1068');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( AII )', '22:50:00', '23:00:00', '0', 'A', '374');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( AII )', '12:15:00', '12:25:00', '0', 'A', '681');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( AJE )', '10:00:00', '10:02:00', '0', 'P', '1485');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( ALJN )', '18:05:00', '18:10:00', '0', 'A', '1318');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( ALJN )', '01:10:00', '01:15:00', '0', 'P', '521');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( AMRO )', '08:45:00', '08:47:00', '0', 'A', '121');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( ANND )', '08:24:00', '08:26:00', '0', 'P', '929');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( ANSB )', '20:58:00', '21:00:00', '0', 'P', '348');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( ASN )', '00:32:00', '00:37:00', '0', 'A', '199');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( ASR )', '20:35:00', '00:00:00', '0', 'P', '2127');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( ASR )', '00:00:00', '18:55:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( ASR )', '20:15:00', '00:00:00', '0', 'A', '1866');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( AWB )', '13:25:00', '13:30:00', '0', 'P', '236');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12015', '( AWR )', '08:43:00', '08:45:00', '0', 'P', '158');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( AWR )', '11:18:00', '11:21:00', '0', 'P', '153');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( AWR )', '07:04:00', '07:07:00', '0', 'A', '733');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( AWR )', '18:04:00', '18:07:00', '0', 'P', '157');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12986', '( AWR )', '19:51:00', '19:54:00', '0', 'A', '153');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( AWR )', '15:17:00', '15:20:00', '0', 'A', '408');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( AWR )', '14:52:00', '14:55:00', '0', 'P', '797');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( AWR )', '07:38:00', '07:41:00', '0', 'P', '434');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( AWR )', '01:14:00', '01:17:00', '0', 'P', '428');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( AWR )', '10:50:00', '10:53:00', '0', 'P', '153');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( AWR )', '09:03:00', '09:06:00', '0', 'P', '783');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( AWR )', '00:11:00', '00:14:00', '0', 'P', '157');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( AWR )', '07:38:00', '07:41:00', '0', 'P', '395');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( AWY )', '06:18:00', '06:20:00', '0', 'A', '2741');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BAB )', '12:27:00', '12:29:00', '0', 'A', '822');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( BANE )', '23:33:00', '23:35:00', '0', 'A', '1265');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BAQ )', '15:02:00', '15:04:00', '0', 'A', '996');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BAU )', '22:28:00', '22:30:00', '0', 'P', '1433');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( BAU )', '21:53:00', '21:55:00', '0', 'P', '1040');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( BAU )', '19:18:00', '19:20:00', '0', 'A', '588');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( BBU )', '06:53:00', '06:55:00', '0', 'P', '607');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( BCOB )', '08:28:00', '08:30:00', '0', 'P', '1432');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( BDJ )', '01:18:00', '01:20:00', '0', 'P', '2521');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( BDTS )', '07:35:00', '00:00:00', '0', 'A', '1433');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12908', '( BDTS )', '09:15:00', '00:00:00', '0', 'A', '1367');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( BDTS )', '00:00:00', '11:30:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( BDTS )', '15:10:00', '00:00:00', '0', 'P', '1346');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( BDWS )', '14:18:00', '14:20:00', '0', 'P', '384');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( BE )', '00:00:00', '06:35:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( BE )', '01:10:00', '01:12:00', '0', 'A', '374');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( BEAS )', '19:43:00', '19:45:00', '0', 'A', '2084');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( BEAS )', '19:23:00', '19:25:00', '0', 'P', '42');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( BEAS )', '19:21:00', '19:23:00', '0', 'P', '1824');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( BER )', '23:17:00', '23:19:00', '0', 'A', '495');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( BER )', '21:12:00', '21:14:00', '0', 'P', '747');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( BER )', '13:08:00', '13:10:00', '0', 'P', '772');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( BER )', '07:02:00', '07:04:00', '0', 'P', '766');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( BER )', '16:22:00', '16:24:00', '0', 'P', '491');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( BER )', '13:08:00', '13:10:00', '0', 'A', '733');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( BGKT )', '16:28:00', '16:30:00', '0', 'P', '960');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( BGKT )', '16:28:00', '16:30:00', '0', 'A', '921');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BGZ )', '03:45:00', '03:47:00', '0', 'P', '355');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( BH )', '03:07:00', '03:09:00', '0', 'P', '1122');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( BH )', '16:32:00', '16:34:00', '0', 'P', '311');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( BH )', '09:59:00', '10:01:00', '0', 'A', '1035');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BHS )', '15:30:00', '15:32:00', '0', 'P', '1035');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( BHUJ )', '11:00:00', '00:00:00', '0', 'P', '1527');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BINA )', '14:25:00', '14:30:00', '0', 'P', '950');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( BINA )', '14:35:00', '14:40:00', '0', 'P', '557');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( BINA )', '02:40:00', '02:42:00', '0', 'A', '1071');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12015', '( BKI )', '09:29:00', '09:31:00', '0', 'P', '219');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( BKI )', '08:00:00', '08:02:00', '0', 'A', '794');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( BKI )', '18:56:00', '18:58:00', '0', 'P', '218');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( BKI )', '16:16:00', '16:20:00', '0', 'P', '469');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( BKI )', '15:55:00', '15:57:00', '0', 'A', '858');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( BKI )', '08:32:00', '08:34:00', '0', 'P', '495');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( BKI )', '02:02:00', '02:07:00', '0', 'P', '489');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( BKI )', '11:41:00', '11:43:00', '0', 'P', '213');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( BKI )', '01:02:00', '01:04:00', '0', 'P', '218');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( BKI )', '08:32:00', '08:34:00', '0', 'A', '456');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( BL )', '14:06:00', '14:09:00', '0', 'A', '183');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( BLQR )', '22:27:00', '22:29:00', '0', 'A', '62');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( BLT )', '01:45:00', '01:50:00', '0', 'P', '1372');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BLZ )', '00:50:00', '00:52:00', '0', 'A', '156');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( BME )', '04:00:00', '00:00:00', '0', 'P', '1468');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( BNT )', '21:40:00', '21:41:00', '0', 'A', '331');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BPF )', '19:11:00', '19:13:00', '0', 'P', '1214');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BPL )', '16:45:00', '16:50:00', '0', 'A', '1088');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( BPL )', '16:25:00', '16:30:00', '0', 'A', '695');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( BPL )', '00:40:00', '00:50:00', '0', 'A', '932');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( BQP )', '17:51:00', '17:53:00', '0', 'P', '162');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( BRC )', '02:17:00', '02:22:00', '0', 'P', '1052');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12264', '( BRC )', '17:27:00', '17:37:00', '0', 'A', '986');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( BRC )', '01:18:00', '01:38:00', '0', 'P', '925');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( BRC )', '18:28:00', '18:38:00', '0', 'P', '1500');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12908', '( BRC )', '03:55:00', '04:05:00', '0', 'A', '986');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( BRC )', '17:30:00', '17:40:00', '0', 'A', '382');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( BRC )', '09:00:00', '09:05:00', '0', 'P', '965');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( BRRG )', '11:00:00', '11:02:00', '0', 'P', '237');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BRZ )', '01:04:00', '01:06:00', '0', 'P', '172');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BSL )', '23:30:00', '23:35:00', '0', 'P', '1487');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( BSL )', '22:50:00', '22:55:00', '0', 'P', '1094');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( BSL )', '18:30:00', '18:35:00', '0', 'A', '534');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12264', '( BSR )', '21:45:00', '21:50:00', '0', 'A', '1331');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( BSR )', '21:05:00', '21:10:00', '0', 'P', '579');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( BTE )', '06:13:00', '06:15:00', '0', 'P', '682');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( BTE )', '06:13:00', '06:15:00', '0', 'P', '1200');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( BTI )', '23:30:00', '23:55:00', '0', 'P', '88');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( BTJL )', '18:38:00', '18:40:00', '0', 'P', '2202');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( BU )', '15:40:00', '15:41:00', '0', 'P', '846');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( BUT )', '02:53:00', '02:55:00', '0', 'P', '1422');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( BVI )', '06:46:00', '06:50:00', '0', 'A', '1415');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( BVI )', '22:53:00', '22:55:00', '0', 'A', '1863');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12908', '( BVI )', '08:27:00', '08:29:00', '0', 'P', '1349');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( BVI )', '11:55:00', '11:58:00', '0', 'A', '18');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( BVI )', '14:11:00', '14:14:00', '0', 'P', '1328');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( BWL )', '13:57:00', '13:58:00', '0', 'P', '738');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( BWL )', '06:45:00', '06:47:00', '0', 'A', '375');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( BWL )', '06:45:00', '06:47:00', '0', 'A', '336');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( BWM )', '11:53:00', '11:55:00', '0', 'P', '1073');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( BWN )', '23:03:00', '23:08:00', '0', 'P', '93');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( BWSN )', '22:06:00', '22:08:00', '0', 'A', '25');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( BXN )', '06:40:00', '06:42:00', '0', 'A', '724');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( BXN )', '05:23:00', '05:25:00', '0', 'A', '1158');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( CAN )', '00:37:00', '00:40:00', '0', 'A', '2478');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12005', '( CDG )', '20:31:00', '20:38:00', '0', 'P', '244');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12011', '( CDG )', '10:57:00', '11:05:00', '0', 'A', '244');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12045', '( CDG )', '22:35:00', '00:00:00', '0', 'P', '244');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( CDG )', '19:05:00', '19:10:00', '0', 'P', '244');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( CDG )', '01:35:00', '02:25:00', '0', 'P', '1688');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( CDG )', '18:10:00', '00:00:00', '0', 'P', '2162');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( CDG )', '15:35:00', '15:45:00', '0', 'P', '1879');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( CDG )', '15:20:00', '15:25:00', '0', 'P', '1619');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14011', '( CDG )', '23:25:00', '23:35:00', '0', 'A', '243');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( CDG )', '08:50:00', '00:00:00', '0', 'A', '890');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( CDG )', '05:00:00', '00:00:00', '0', 'P', '1177');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( CHI )', '10:20:00', '10:22:00', '0', 'P', '1720');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( CLDY )', '04:15:00', '04:20:00', '0', 'P', '1180');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( CLDY )', '00:09:00', '00:11:00', '0', 'P', '924');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( CLT )', '02:00:00', '02:05:00', '0', 'A', '2567');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( CNB )', '13:30:00', '13:40:00', '0', 'P', '1009');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( CNB )', '19:35:00', '19:40:00', '0', 'A', '212');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( CNDM )', '02:38:00', '02:40:00', '0', 'P', '1697');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( CSMT )', '07:35:00', '00:00:00', '0', 'P', '1928');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( CSN )', '01:03:00', '01:05:00', '0', 'P', '1604');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( CSN )', '16:43:00', '16:45:00', '0', 'A', '417');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( DAA )', '11:10:00', '11:12:00', '0', 'P', '772');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( DBA )', '10:44:00', '10:46:00', '0', 'P', '741');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( DBA )', '05:10:00', '05:12:00', '0', 'P', '1279');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( DBD )', '07:43:00', '07:45:00', '0', 'P', '493');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( DBD )', '18:13:00', '18:15:00', '0', 'A', '124');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( DDU )', '08:05:00', '08:15:00', '0', 'A', '662');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12015', '( DEC )', '06:38:00', '06:40:00', '0', 'P', '15');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( DEC )', '09:10:00', '09:12:00', '0', 'A', '10');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( DEC )', '04:43:00', '04:45:00', '0', 'P', '590');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( DEC )', '15:48:00', '15:50:00', '0', 'P', '14');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12958', '( DEC )', '20:23:00', '20:25:00', '0', 'A', '15');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12986', '( DEC )', '17:50:00', '17:52:00', '0', 'P', '10');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( DEC )', '12:23:00', '12:25:00', '0', 'A', '266');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( DEC )', '11:33:00', '11:35:00', '0', 'P', '655');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( DEC )', '05:03:00', '05:05:00', '0', 'P', '291');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( DEC )', '22:53:00', '22:55:00', '0', 'A', '286');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( DEC )', '08:25:00', '08:27:00', '0', 'P', '10');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( DEC )', '06:58:00', '07:00:00', '0', 'P', '640');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( DEC )', '16:30:00', '16:32:00', '0', 'P', '10');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( DEC )', '21:48:00', '21:50:00', '0', 'P', '14');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( DEC )', '05:03:00', '05:05:00', '0', 'P', '252');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( DEE )', '00:00:00', '08:55:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12986', '( DEE )', '00:00:00', '17:35:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( DEE )', '12:04:00', '12:06:00', '0', 'P', '256');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( DEE )', '11:14:00', '11:16:00', '0', 'P', '645');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( DEE )', '04:44:00', '04:46:00', '0', 'A', '282');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( DEE )', '00:00:00', '08:10:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( DEE )', '00:00:00', '16:15:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( DEE )', '04:44:00', '04:46:00', '0', 'A', '242');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( DGR )', '00:01:00', '00:03:00', '0', 'A', '157');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( DHD )', '15:52:00', '15:54:00', '0', 'P', '1353');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( DHD )', '19:50:00', '19:52:00', '0', 'A', '529');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( DHG )', '06:15:00', '06:17:00', '0', 'P', '1300');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( DHN )', '01:45:00', '01:50:00', '0', 'A', '258');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( DHO )', '09:13:00', '09:15:00', '0', 'A', '634');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( DHO )', '07:13:00', '07:15:00', '0', 'A', '1387');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( DKZ )', '04:32:00', '04:34:00', '0', 'A', '382');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( DLI )', '20:50:00', '21:10:00', '0', 'P', '1445');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( DLI )', '03:50:00', '04:15:00', '0', 'P', '576');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( DLI )', '00:00:00', '15:20:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14011', '( DLI )', '00:00:00', '18:30:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( DLI )', '04:00:00', '04:15:00', '0', 'A', '648');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( DLI )', '11:35:00', '11:50:00', '0', 'A', '252');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( DLI )', '10:45:00', '11:00:00', '0', 'A', '640');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( DLI )', '03:50:00', '04:30:00', '0', 'P', '277');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( DLI )', '22:00:00', '22:25:00', '0', 'A', '271');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( DLI )', '06:05:00', '06:30:00', '0', 'A', '626');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( DLI )', '00:00:00', '21:20:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( DLI )', '03:50:00', '04:30:00', '0', 'P', '238');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( DMW )', '16:35:00', '16:37:00', '0', 'P', '114');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( DNA )', '20:56:00', '20:58:00', '0', 'P', '1112');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( DNA )', '05:00:00', '05:03:00', '0', 'P', '471');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( DO )', '08:22:00', '08:24:00', '0', 'P', '822');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( DO )', '19:20:00', '19:22:00', '0', 'A', '247');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( DO )', '16:40:00', '16:42:00', '0', 'A', '498');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( DO )', '16:17:00', '16:19:00', '0', 'A', '887');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( DO )', '08:54:00', '08:56:00', '0', 'P', '524');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( DO )', '01:24:00', '01:26:00', '0', 'P', '247');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( DO )', '08:54:00', '08:56:00', '0', 'P', '485');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( DOR )', '00:21:00', '00:23:00', '0', 'P', '1316');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( DOS )', '06:07:00', '06:09:00', '0', 'P', '542');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( DR )', '07:02:00', '07:05:00', '0', 'P', '1919');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( DRD )', '13:08:00', '13:10:00', '0', 'P', '108');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( DSA )', '21:26:00', '21:28:00', '0', 'A', '265');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( DWX )', '05:56:00', '05:58:00', '0', 'A', '39');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( ERS )', '07:30:00', '00:00:00', '0', 'P', '2761');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( ET )', '18:35:00', '18:45:00', '0', 'A', '1180');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( ET )', '18:15:00', '18:25:00', '0', 'A', '787');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( ET )', '23:00:00', '23:05:00', '0', 'P', '840');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( ETW )', '15:28:00', '15:33:00', '0', 'A', '1148');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( ETW )', '21:58:00', '22:00:00', '0', 'A', '351');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( FA )', '18:55:00', '18:57:00', '0', 'P', '645');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( FA )', '01:00:00', '01:02:00', '0', 'P', '649');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12958', '( FA )', '04:05:00', '04:07:00', '0', 'P', '650');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( FA )', '23:20:00', '23:22:00', '0', 'A', '900');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( FA )', '09:33:00', '09:35:00', '0', 'A', '920');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( FA )', '18:36:00', '18:38:00', '0', 'A', '645');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( FA )', '16:18:00', '16:20:00', '0', 'A', '1275');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( FA )', '01:46:00', '01:48:00', '0', 'P', '580');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( FDB )', '05:40:00', '05:42:00', '0', 'A', '414');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( FDB )', '05:59:00', '06:01:00', '0', 'P', '21');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( FDB )', '10:30:00', '10:32:00', '0', 'A', '1607');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( FDB )', '04:19:00', '04:21:00', '0', 'P', '535');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( FDB )', '09:27:00', '09:29:00', '0', 'A', '1346');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( FDB )', '22:28:00', '22:30:00', '0', 'P', '846');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( FDK )', '22:10:00', '22:12:00', '0', 'P', '32');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( FL )', '10:31:00', '10:33:00', '0', 'P', '938');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( FL )', '18:51:00', '18:53:00', '0', 'P', '614');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( FL )', '19:04:00', '19:06:00', '0', 'P', '1003');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( FL )', '04:31:00', '04:33:00', '0', 'P', '634');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( FL )', '14:01:00', '14:03:00', '0', 'A', '358');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( FL )', '21:20:00', '21:25:00', '0', 'P', '294');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( FTP )', '12:10:00', '12:12:00', '0', 'A', '931');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( FZD )', '16:30:00', '16:32:00', '0', 'A', '1224');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( FZD )', '23:18:00', '23:20:00', '0', 'A', '426');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( FZR )', '00:00:00', '21:45:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12015', '( GADJ )', '10:23:00', '10:25:00', '0', 'A', '304');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( GADJ )', '09:05:00', '09:08:00', '0', 'A', '878');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( GADJ )', '19:58:00', '20:00:00', '0', 'A', '303');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12986', '( GADJ )', '21:28:00', '21:31:00', '0', 'A', '298');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( GADJ )', '17:27:00', '17:30:00', '0', 'A', '554');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( GADJ )', '17:05:00', '17:08:00', '0', 'P', '943');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( GADJ )', '09:35:00', '09:38:00', '0', 'P', '580');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( GADJ )', '02:59:00', '03:02:00', '0', 'A', '574');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( GADJ )', '09:35:00', '09:38:00', '0', 'A', '541');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( GAYA )', '05:05:00', '05:10:00', '0', 'A', '457');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( GDA )', '17:32:00', '17:34:00', '0', 'P', '1426');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( GDA )', '18:58:00', '19:00:00', '0', 'A', '455');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( GGC )', '07:45:00', '07:50:00', '0', 'A', '801');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( GGC )', '04:20:00', '04:25:00', '0', 'P', '1081');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12015', '( GGN )', '06:56:00', '06:58:00', '0', 'P', '32');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( GGN )', '09:28:00', '09:30:00', '0', 'P', '27');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( GGN )', '05:01:00', '05:03:00', '0', 'A', '607');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( GGN )', '16:06:00', '16:08:00', '0', 'P', '31');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12958', '( GGN )', '20:41:00', '20:43:00', '0', 'P', '32');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12986', '( GGN )', '18:08:00', '18:10:00', '0', 'P', '27');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( GGN )', '12:46:00', '12:48:00', '0', 'P', '283');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( GGN )', '11:56:00', '11:58:00', '0', 'P', '672');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( GGN )', '05:21:00', '05:23:00', '0', 'A', '308');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( GGN )', '23:11:00', '23:13:00', '0', 'A', '303');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( GGN )', '08:48:00', '08:50:00', '0', 'P', '27');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( GGN )', '07:16:00', '07:18:00', '0', 'A', '657');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( GGN )', '16:48:00', '16:50:00', '0', 'P', '27');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( GGN )', '22:16:00', '22:18:00', '0', 'A', '31');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( GGN )', '05:21:00', '05:23:00', '0', 'A', '269');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( GHH )', '05:12:00', '05:14:00', '0', 'P', '617');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( GHH )', '12:57:00', '12:59:00', '0', 'A', '293');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( GHH )', '12:22:00', '12:24:00', '0', 'A', '681');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( GHH )', '08:59:00', '09:01:00', '0', 'A', '37');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( GHH )', '22:27:00', '22:29:00', '0', 'A', '41');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( GIMB )', '09:20:00', '09:40:00', '0', 'A', '1469');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( GJL )', '09:10:00', '09:11:00', '0', 'A', '144');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( GJUT )', '22:43:00', '22:45:00', '0', 'A', '61');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( GMO )', '02:19:00', '02:24:00', '0', 'A', '287');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( GNA )', '22:59:00', '23:01:00', '0', 'P', '76');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( GNC )', '23:20:00', '23:22:00', '0', 'P', '923');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( GNC )', '14:18:00', '14:20:00', '0', 'A', '1199');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( GNU )', '22:10:00', '22:12:00', '0', 'A', '1504');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( GNU )', '05:15:00', '05:17:00', '0', 'A', '707');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( GOTN )', '06:04:00', '06:06:00', '0', 'A', '535');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( GRMR )', '15:18:00', '15:19:00', '0', 'P', '64');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( GTJT )', '17:18:00', '17:20:00', '0', 'P', '549');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( GTJT )', '16:56:00', '16:58:00', '0', 'P', '938');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( GUNA )', '13:25:00', '13:35:00', '0', 'P', '335');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( GWL )', '10:07:00', '10:09:00', '0', 'A', '699');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( GWL )', '10:30:00', '10:32:00', '0', 'A', '306');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( GWL )', '05:40:00', '05:42:00', '0', 'P', '1322');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( GWL )', '18:02:00', '18:10:00', '0', 'A', '562');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( GZB )', '19:53:00', '19:55:00', '0', 'P', '1424');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( GZB )', '02:59:00', '03:01:00', '0', 'P', '491');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( GZB )', '03:05:00', '03:07:00', '0', 'A', '627');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( GZB )', '10:48:00', '10:50:00', '0', 'A', '231');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( GZB )', '10:01:00', '10:03:00', '0', 'A', '620');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( GZB )', '02:58:00', '03:00:00', '0', 'A', '257');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( GZB )', '20:56:00', '20:58:00', '0', 'P', '251');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( GZB )', '02:58:00', '03:00:00', '0', 'A', '218');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( GZN )', '09:43:00', '09:44:00', '0', 'P', '614');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( GZN )', '20:13:00', '20:14:00', '0', 'A', '245');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( HAN )', '07:02:00', '07:04:00', '0', 'A', '757');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( HAN )', '04:56:00', '04:58:00', '0', 'P', '1125');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( HAPA )', '05:57:00', '05:59:00', '0', 'A', '1236');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( HBD )', '17:55:00', '17:57:00', '0', 'P', '1162');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( HD )', '19:43:00', '19:45:00', '0', 'A', '1256');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( HDW )', '20:47:00', '20:52:00', '0', 'P', '6');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( HP )', '07:35:00', '07:37:00', '0', 'P', '800');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( HPU )', '09:53:00', '09:55:00', '0', 'P', '194');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( HPU )', '02:01:00', '02:03:00', '0', 'A', '220');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( HPU )', '02:01:00', '02:03:00', '0', 'A', '181');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( HRS )', '00:44:00', '00:46:00', '0', 'A', '491');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( HSI )', '14:17:00', '14:18:00', '0', 'A', '763');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14011', '( HSX )', '05:35:00', '00:00:00', '0', 'P', '455');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( HVD )', '06:46:00', '06:48:00', '0', 'P', '1331');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( HW )', '15:55:00', '16:00:00', '0', 'A', '23');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( HWH )', '00:00:00', '21:55:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( HZD )', '03:00:00', '03:02:00', '0', 'A', '332');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( IGP )', '03:20:00', '03:35:00', '0', 'P', '1402');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( INDB )', '00:00:00', '05:30:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( J )', '12:20:00', '12:25:00', '0', 'A', '173');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( JAM )', '06:11:00', '06:16:00', '0', 'P', '1244');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( JAT )', '00:00:00', '18:15:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( JAT )', '00:00:00', '22:25:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( JHL )', '01:24:00', '01:26:00', '0', 'P', '186');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( JIND )', '02:30:00', '02:32:00', '0', 'P', '258');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( JJK )', '20:45:00', '20:46:00', '0', 'A', '275');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( JL )', '23:59:00', '00:02:00', '0', 'P', '1511');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( JL )', '17:58:00', '18:00:00', '0', 'A', '509');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12015', '( JP )', '10:40:00', '10:45:00', '0', 'A', '309');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( JP )', '13:55:00', '14:05:00', '0', 'A', '304');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( JP )', '09:40:00', '09:50:00', '0', 'A', '884');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( JP )', '20:20:00', '20:30:00', '0', 'P', '308');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12958', '( JP )', '23:55:00', '00:05:00', '0', 'P', '309');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12986', '( JP )', '22:00:00', '00:00:00', '0', 'P', '304');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( JP )', '17:50:00', '18:00:00', '0', 'A', '560');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( JP )', '17:35:00', '17:45:00', '0', 'P', '948');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( JP )', '10:00:00', '10:10:00', '0', 'P', '585');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( JP )', '03:35:00', '03:45:00', '0', 'A', '579');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( JP )', '13:10:00', '13:20:00', '0', 'P', '304');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( JP )', '11:10:00', '11:20:00', '0', 'P', '934');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( JP )', '02:25:00', '02:35:00', '0', 'A', '308');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( JP )', '10:00:00', '10:10:00', '0', 'P', '546');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( JPD )', '16:17:00', '16:18:00', '0', 'P', '101');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( JRC )', '21:50:00', '21:55:00', '0', 'A', '212');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( JRC )', '18:33:00', '18:35:00', '0', 'P', '1783');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14011', '( JRC )', '04:36:00', '04:38:00', '0', 'A', '417');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( JRC )', '02:00:00', '02:05:00', '0', 'A', '212');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( JSM )', '22:15:00', '00:00:00', '0', 'A', '1256');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( JSM )', '22:15:00', '00:00:00', '0', 'A', '1217');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( JU )', '23:00:00', '23:20:00', '0', 'P', '1259');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( JU )', '16:40:00', '16:55:00', '0', 'P', '964');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( JU )', '07:50:00', '00:00:00', '0', 'A', '618');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( JU )', '16:40:00', '16:55:00', '0', 'A', '925');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( JUC )', '19:07:00', '19:12:00', '0', 'A', '2048');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( JUC )', '20:00:00', '20:10:00', '0', 'A', '79');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( JUC )', '18:45:00', '18:50:00', '0', 'P', '1788');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14011', '( JUC )', '04:00:00', '04:25:00', '0', 'P', '412');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( JUDW )', '06:15:00', '06:17:00', '0', 'P', '424');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( JWB )', '09:50:00', '09:52:00', '0', 'P', '936');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( KARR )', '19:35:00', '19:37:00', '0', 'P', '272');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( KART )', '20:48:00', '20:50:00', '0', 'P', '341');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( KAT )', '08:21:00', '08:23:00', '0', 'P', '540');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( KAT )', '18:56:00', '18:58:00', '0', 'P', '170');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( KAWR )', '17:08:00', '17:10:00', '0', 'A', '2092');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( KGM )', '00:00:00', '20:35:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( KGQ )', '23:18:00', '23:20:00', '0', 'P', '2392');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( KHNM )', '14:58:00', '15:00:00', '0', 'A', '52');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( KIP )', '12:51:00', '12:53:00', '0', 'P', '712');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12264', '( KJT )', '23:25:00', '23:28:00', '0', 'A', '1423');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12005', '( KKDE )', '19:00:00', '19:02:00', '0', 'A', '157');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12011', '( KKDE )', '09:25:00', '09:27:00', '0', 'P', '157');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( KKDE )', '16:44:00', '16:46:00', '0', 'A', '157');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( KKDE )', '23:29:00', '23:31:00', '0', 'A', '1601');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( KKDE )', '13:32:00', '13:34:00', '0', 'P', '1792');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( KKDE )', '13:14:00', '13:16:00', '0', 'P', '1532');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( KKDE )', '06:51:00', '06:53:00', '0', 'A', '804');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( KKN )', '20:08:00', '20:10:00', '0', 'A', '1288');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( KKP )', '22:27:00', '22:29:00', '0', 'P', '45');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( KKW )', '13:24:00', '13:26:00', '0', 'P', '1907');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12005', '( KLK )', '21:15:00', '00:00:00', '0', 'P', '269');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12011', '( KLK )', '11:40:00', '00:00:00', '0', 'A', '269');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( KLK )', '03:00:00', '00:00:00', '0', 'P', '1712');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( KLL )', '13:50:00', '13:52:00', '0', 'P', '1178');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( KNN )', '04:00:00', '04:02:00', '0', 'P', '307');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( KNW )', '21:37:00', '21:40:00', '0', 'A', '1364');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( KNW )', '20:58:00', '21:00:00', '0', 'P', '971');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( KNW )', '20:42:00', '20:45:00', '0', 'P', '657');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12264', '( KOTA )', '10:45:00', '10:55:00', '0', 'P', '458');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( KOTA )', '08:10:00', '08:20:00', '0', 'A', '1452');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( KOTA )', '10:15:00', '10:25:00', '0', 'A', '973');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12908', '( KOTA )', '21:15:00', '21:20:00', '0', 'A', '458');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( KOTA )', '01:45:00', '01:55:00', '0', 'P', '909');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( KPV )', '22:45:00', '22:50:00', '0', 'A', '27');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( KQR )', '03:31:00', '03:33:00', '0', 'P', '381');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( KRH )', '06:40:00', '06:42:00', '0', 'P', '706');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( KRH )', '17:40:00', '17:42:00', '0', 'P', '130');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( KRH )', '14:47:00', '14:49:00', '0', 'P', '382');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( KRH )', '14:26:00', '14:28:00', '0', 'P', '771');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( KRH )', '07:11:00', '07:13:00', '0', 'P', '407');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( KRH )', '00:50:00', '00:52:00', '0', 'A', '402');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( KRH )', '10:26:00', '10:28:00', '0', 'P', '126');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( KRH )', '07:11:00', '07:13:00', '0', 'P', '368');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( KRJ )', '18:40:00', '18:42:00', '0', 'A', '1362');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( KRMI )', '11:48:00', '11:50:00', '0', 'A', '29');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12015', '( KSG )', '12:06:00', '12:08:00', '0', 'P', '419');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( KSG )', '11:15:00', '11:15:00', '0', 'A', '993');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( KSG )', '19:39:00', '19:41:00', '0', 'A', '669');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( KSG )', '11:28:00', '11:30:00', '0', 'A', '695');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( KSG )', '05:11:00', '05:13:00', '0', 'P', '689');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( KSG )', '14:43:00', '14:45:00', '0', 'A', '413');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( KSG )', '22:07:00', '22:09:00', '0', 'P', '348');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( KSG )', '11:28:00', '11:30:00', '0', 'A', '655');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( KSV )', '06:37:00', '06:39:00', '0', 'A', '486');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( KT )', '18:00:00', '18:02:00', '0', 'P', '2147');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( KTHU )', '19:15:00', '19:17:00', '0', 'A', '76');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( KTHU )', '23:25:00', '23:27:00', '0', 'A', '76');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( KUDA )', '19:16:00', '19:18:00', '0', 'A', '2251');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12045', '( KUN )', '20:35:00', '20:37:00', '0', 'P', '124');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( KUN )', '16:19:00', '16:21:00', '0', 'A', '124');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( KUN )', '23:04:00', '23:06:00', '0', 'A', '1568');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( KUN )', '01:39:00', '01:41:00', '0', 'A', '453');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( KUN )', '13:07:00', '13:09:00', '0', 'A', '1759');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( KUN )', '12:49:00', '12:51:00', '0', 'P', '1499');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14011', '( KUN )', '21:13:00', '21:15:00', '0', 'A', '123');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( KUN )', '06:24:00', '06:26:00', '0', 'P', '770');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14011', '( KUPR )', '04:53:00', '04:55:00', '0', 'A', '434');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( KYN )', '06:17:00', '06:20:00', '0', 'P', '1877');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( KYN )', '06:12:00', '06:15:00', '0', 'A', '1483');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( LAR )', '13:09:00', '13:11:00', '0', 'P', '887');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( LAR )', '03:21:00', '03:23:00', '0', 'P', '1134');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( LDH )', '22:50:00', '23:00:00', '0', 'A', '264');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( LDH )', '17:55:00', '18:05:00', '0', 'A', '1991');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( LDH )', '21:00:00', '21:10:00', '0', 'A', '136');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( LDH )', '17:35:00', '17:45:00', '0', 'P', '1731');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14011', '( LDH )', '02:50:00', '02:58:00', '0', 'P', '355');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( LDH )', '03:05:00', '03:15:00', '0', 'A', '264');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( LGO )', '14:42:00', '14:43:00', '0', 'P', '38');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( LKO )', '21:25:00', '21:35:00', '0', 'A', '140');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( LKU )', '21:30:00', '21:35:00', '0', 'P', '22');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( LLJ )', '16:58:00', '17:00:00', '0', 'A', '127');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12264', '( LNL )', '00:10:00', '00:12:00', '0', 'A', '1451');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( LUNI )', '23:56:00', '23:59:00', '0', 'P', '1291');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( MAJN )', '22:30:00', '22:40:00', '0', 'A', '2345');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( MAO )', '00:00:00', '11:20:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( MAO )', '16:10:00', '16:20:00', '0', 'A', '2032');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( MAUR )', '00:19:00', '00:21:00', '0', 'A', '122');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( MB )', '08:13:00', '08:18:00', '0', 'P', '90');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( MB )', '23:45:00', '00:35:00', '0', 'P', '116');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( MB )', '02:55:00', '03:03:00', '0', 'A', '465');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( MB )', '23:45:00', '00:35:00', '0', 'A', '77');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( MDNR )', '09:18:00', '09:20:00', '0', 'P', '592');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( MDNR )', '19:53:00', '19:55:00', '0', 'A', '223');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( MEX )', '00:41:00', '00:43:00', '0', 'A', '139');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( MFKA )', '18:29:00', '18:31:00', '0', 'A', '32');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( MGN )', '15:26:00', '15:28:00', '0', 'P', '1320');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( MGN )', '20:17:00', '20:19:00', '0', 'P', '562');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( MIL )', '07:10:00', '07:11:00', '0', 'P', '40');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( MJ )', '22:33:00', '22:35:00', '0', 'A', '834');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( MJ )', '14:45:00', '15:00:00', '0', 'P', '860');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( MJ )', '08:35:00', '08:40:00', '0', 'P', '854');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( MJ )', '17:40:00', '17:45:00', '0', 'P', '578');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( MJ )', '15:23:00', '15:25:00', '0', 'A', '1208');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( MJ )', '14:45:00', '15:00:00', '0', 'A', '821');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( MKC )', '08:48:00', '08:50:00', '0', 'A', '121');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( MKH )', '15:35:00', '15:36:00', '0', 'A', '428');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( MKH )', '15:12:00', '15:13:00', '0', 'P', '817');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( MKN )', '20:15:00', '20:18:00', '0', 'P', '1068');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( MKN )', '04:25:00', '04:28:00', '0', 'P', '427');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( MMCT )', '23:45:00', '00:00:00', '0', 'A', '1893');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( MMR )', '02:00:00', '02:05:00', '0', 'P', '1671');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( MMR )', '01:13:00', '01:15:00', '0', 'A', '1278');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( MMR )', '15:50:00', '15:55:00', '0', 'P', '349');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( MOZ )', '01:08:00', '01:10:00', '0', 'A', '389');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( MOZ )', '08:03:00', '08:05:00', '0', 'A', '517');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( MOZ )', '18:38:00', '18:40:00', '0', 'P', '148');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( MRA )', '09:41:00', '09:43:00', '0', 'A', '661');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( MRA )', '09:59:00', '10:01:00', '0', 'A', '267');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( MRA )', '06:10:00', '06:12:00', '0', 'A', '1360');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( MRA )', '18:38:00', '18:40:00', '0', 'A', '600');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( MRND )', '19:52:00', '19:54:00', '0', 'A', '288');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( MSH )', '04:25:00', '04:27:00', '0', 'P', '865');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12958', '( MSH )', '07:08:00', '07:10:00', '0', 'P', '866');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( MSH )', '03:06:00', '03:08:00', '0', 'P', '1116');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( MSH )', '13:14:00', '13:16:00', '0', 'A', '1136');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( MSH )', '22:47:00', '22:49:00', '0', 'A', '861');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( MSH )', '20:06:00', '20:08:00', '0', 'A', '1491');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( MSH )', '05:23:00', '05:25:00', '0', 'A', '796');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( MSZ )', '00:35:00', '00:37:00', '0', 'P', '140');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( MTC )', '02:02:00', '02:07:00', '0', 'A', '444');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( MTC )', '09:00:00', '09:03:00', '0', 'A', '573');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( MTC )', '19:35:00', '19:40:00', '0', 'A', '204');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( MTC )', '00:55:00', '00:58:00', '0', 'A', '938');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( MTD )', '21:27:00', '21:32:00', '0', 'P', '1156');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( MTD )', '05:39:00', '05:44:00', '0', 'A', '515');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( MTJ )', '07:03:00', '07:05:00', '0', 'P', '527');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( MTJ )', '07:43:00', '07:45:00', '0', 'P', '134');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( MTJ )', '08:43:00', '08:45:00', '0', 'A', '1494');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( MTJ )', '05:48:00', '05:50:00', '0', 'P', '648');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( MTJ )', '07:35:00', '07:40:00', '0', 'A', '1233');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( MTJ )', '20:40:00', '20:42:00', '0', 'A', '733');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( MUD )', '09:29:00', '09:31:00', '0', 'A', '602');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( MUT )', '01:49:00', '01:51:00', '0', 'P', '440');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( MUT )', '08:49:00', '08:51:00', '0', 'A', '569');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( MUT )', '19:24:00', '19:26:00', '0', 'A', '200');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( MZP )', '09:08:00', '09:10:00', '0', 'P', '725');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( NAD )', '13:40:00', '13:42:00', '0', 'A', '1198');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( NAD )', '22:55:00', '23:00:00', '0', 'A', '684');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( ND )', '08:09:00', '08:11:00', '0', 'A', '911');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12005', '( NDLS )', '00:00:00', '17:15:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12011', '( NDLS )', '00:00:00', '07:40:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12015', '( NDLS )', '00:00:00', '06:10:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12045', '( NDLS )', '00:00:00', '19:15:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( NDLS )', '00:00:00', '14:35:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( NDLS )', '05:00:00', '05:15:00', '0', 'A', '386');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( NDLS )', '14:10:00', '14:25:00', '0', 'A', '1918');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( NDLS )', '11:25:00', '11:40:00', '0', 'P', '1635');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( NDLS )', '10:40:00', '11:05:00', '0', 'P', '1375');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12958', '( NDLS )', '00:00:00', '19:55:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( NED )', '00:00:00', '09:30:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( NHH )', '18:48:00', '18:50:00', '0', 'P', '50');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( NK )', '03:05:00', '03:10:00', '0', 'A', '1744');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( NK )', '02:18:00', '02:23:00', '0', 'A', '1351');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( NLDM )', '21:30:00', '21:40:00', '0', 'P', '369');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( NLE )', '23:49:00', '23:50:00', '0', 'P', '2425');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( NMK )', '18:59:00', '19:01:00', '0', 'A', '180');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( NNL )', '18:21:00', '18:23:00', '0', 'P', '130');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( NRI )', '19:03:00', '19:05:00', '0', 'A', '625');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( NRW )', '01:58:00', '02:00:00', '0', 'A', '224');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( NUR )', '04:45:00', '04:47:00', '0', 'P', '673');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( NVS )', '14:45:00', '14:47:00', '0', 'P', '222');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12264', '( NZM )', '00:00:00', '06:16:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( NZM )', '13:41:00', '13:43:00', '0', 'P', '1911');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( NZM )', '00:00:00', '05:40:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( NZM )', '10:50:00', '10:52:00', '0', 'A', '1628');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( NZM )', '03:45:00', '04:00:00', '0', 'P', '514');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12908', '( NZM )', '00:00:00', '16:30:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( NZM )', '09:59:00', '10:01:00', '0', 'A', '1367');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( NZM )', '23:05:00', '23:20:00', '0', 'A', '867');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( ON )', '18:54:00', '18:58:00', '0', 'P', '194');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( PAU )', '10:00:00', '10:02:00', '0', 'P', '30');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( PAY )', '00:03:00', '00:05:00', '0', 'A', '2445');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( PBN )', '10:35:00', '10:40:00', '0', 'A', '59');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( PBR )', '09:00:00', '00:00:00', '0', 'A', '1373');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( PC )', '17:23:00', '17:25:00', '0', 'A', '462');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( PDWA )', '10:21:00', '10:23:00', '0', 'A', '975');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( PDWA )', '02:27:00', '02:29:00', '0', 'P', '635');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( PERN )', '12:20:00', '12:22:00', '0', 'P', '57');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( PFM )', '14:10:00', '14:11:00', '0', 'A', '10');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( PFR )', '10:12:00', '10:14:00', '0', 'P', '208');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( PGW )', '18:34:00', '18:36:00', '0', 'P', '2027');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( PGW )', '18:14:00', '18:16:00', '0', 'P', '1767');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14011', '( PGW )', '03:27:00', '03:29:00', '0', 'P', '391');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( PGW )', '02:17:00', '02:19:00', '0', 'A', '228');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( PHD )', '14:40:00', '14:41:00', '0', 'A', '1092');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( PHD )', '21:09:00', '21:10:00', '0', 'A', '295');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( PKW )', '10:10:00', '10:12:00', '0', 'P', '206');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( PLCJ )', '18:50:00', '18:55:00', '0', 'P', '1100');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( PLCJ )', '18:50:00', '18:55:00', '0', 'P', '1061');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( PM )', '12:31:00', '12:33:00', '0', 'P', '269');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( PM )', '11:41:00', '11:43:00', '0', 'A', '658');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( PM )', '08:33:00', '08:35:00', '0', 'P', '13');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( PM )', '21:56:00', '21:58:00', '0', 'A', '18');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( PMY )', '15:28:00', '15:33:00', '0', 'P', '891');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( PMY )', '15:28:00', '15:33:00', '0', 'A', '852');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( PNME )', '02:39:00', '02:41:00', '0', 'A', '305');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12005', '( PNP )', '18:18:00', '18:20:00', '0', 'A', '90');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12011', '( PNP )', '08:43:00', '08:45:00', '0', 'A', '90');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( PNP )', '15:53:00', '15:55:00', '0', 'P', '90');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( PNP )', '22:38:00', '22:40:00', '0', 'P', '1533');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( PNP )', '15:18:00', '15:20:00', '0', 'A', '2008');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( PNP )', '12:43:00', '12:45:00', '0', 'A', '1725');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( PNP )', '12:23:00', '12:25:00', '0', 'A', '1464');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14011', '( PNP )', '20:46:00', '20:48:00', '0', 'A', '89');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( PNP )', '05:55:00', '05:57:00', '0', 'A', '736');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( PNU )', '21:21:00', '21:23:00', '0', 'P', '796');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( PNU )', '03:30:00', '03:32:00', '0', 'A', '800');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12958', '( PNU )', '06:18:00', '06:20:00', '0', 'P', '801');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( PNU )', '01:48:00', '01:50:00', '0', 'P', '1052');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( PNU )', '12:06:00', '12:08:00', '0', 'A', '1072');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( PNU )', '21:33:00', '21:35:00', '0', 'P', '796');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( PNU )', '18:53:00', '18:55:00', '0', 'A', '1426');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( PNU )', '04:18:00', '04:20:00', '0', 'P', '731');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( PNVL )', '19:45:00', '19:50:00', '0', 'P', '514');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( PNVL )', '07:00:00', '07:05:00', '0', 'A', '1518');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( PQN )', '15:30:00', '15:31:00', '0', 'A', '71');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( PRG )', '13:53:00', '13:55:00', '0', 'A', '3');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( PRYJ )', '10:40:00', '10:50:00', '0', 'P', '815');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( PTB )', '03:19:00', '03:20:00', '0', 'A', '2642');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( PTKC )', '19:55:00', '20:00:00', '0', 'A', '99');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( PTKC )', '00:05:00', '00:10:00', '0', 'A', '99');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( PTRD )', '16:29:00', '16:31:00', '0', 'A', '61');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( PTRD )', '13:14:00', '13:16:00', '0', 'A', '313');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( PTRD )', '12:39:00', '12:41:00', '0', 'A', '702');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( PTRD )', '05:44:00', '05:46:00', '0', 'A', '338');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( PTRD )', '23:34:00', '23:36:00', '0', 'P', '333');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( PTRD )', '22:44:00', '22:46:00', '0', 'P', '61');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( PTRD )', '05:44:00', '05:46:00', '0', 'A', '299');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12264', '( PUNE )', '02:10:00', '00:00:00', '0', 'A', '1515');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( PYGS )', '00:00:00', '13:35:00', '0', 'A', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( RANI )', '09:16:00', '09:18:00', '0', 'P', '906');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( RANI )', '01:31:00', '01:33:00', '0', 'A', '565');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( RDRA )', '19:36:00', '19:39:00', '0', 'A', '1147');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( RDRA )', '19:36:00', '19:39:00', '0', 'A', '1108');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12015', '( RE )', '07:45:00', '07:47:00', '0', 'A', '84');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( RE )', '10:15:00', '10:20:00', '0', 'P', '78');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( RE )', '05:59:00', '06:01:00', '0', 'A', '658');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( RE )', '16:58:00', '17:00:00', '0', 'A', '82');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( RE )', '14:05:00', '14:07:00', '0', 'A', '334');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( RE )', '13:33:00', '13:35:00', '0', 'A', '723');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( RE )', '06:23:00', '06:25:00', '0', 'A', '360');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( RE )', '00:05:00', '00:10:00', '0', 'A', '354');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( RE )', '09:44:00', '09:46:00', '0', 'P', '78');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( RE )', '08:03:00', '08:05:00', '0', 'A', '708');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( RE )', '17:35:00', '17:37:00', '0', 'A', '78');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22995', '( RE )', '23:11:00', '23:13:00', '0', 'A', '82');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( RE )', '06:23:00', '06:25:00', '0', 'P', '320');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( RGS )', '19:44:00', '19:47:00', '0', 'A', '227');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( RHG )', '07:33:00', '07:35:00', '0', 'P', '769');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( RHG )', '18:33:00', '18:35:00', '0', 'A', '193');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( RHG )', '15:51:00', '15:53:00', '0', 'P', '445');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( RHG )', '15:27:00', '15:29:00', '0', 'A', '834');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( RHG )', '08:07:00', '08:09:00', '0', 'P', '470');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( RHG )', '08:07:00', '08:09:00', '0', 'P', '431');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( RJT )', '04:25:00', '04:35:00', '0', 'P', '1160');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( RK )', '16:55:00', '17:00:00', '0', 'P', '65');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( RKB )', '22:50:00', '22:52:00', '0', 'A', '1257');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( RKB )', '17:03:00', '17:05:00', '0', 'A', '966');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( RKB )', '17:03:00', '17:05:00', '0', 'A', '927');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( RMA )', '11:28:00', '11:30:00', '0', 'A', '1045');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( RMA )', '00:42:00', '00:44:00', '0', 'P', '837');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( RMC )', '14:33:00', '14:34:00', '0', 'P', '31');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( RMR )', '00:00:00', '22:15:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( RMU )', '07:31:00', '07:33:00', '0', 'P', '63');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( RMU )', '23:04:00', '23:07:00', '0', 'A', '89');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( RN )', '15:05:00', '15:10:00', '0', 'P', '236');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( RN )', '11:50:00', '11:55:00', '0', 'A', '1796');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( ROK )', '03:15:00', '03:17:00', '0', 'P', '315');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( RPAR )', '20:19:00', '20:22:00', '0', 'A', '313');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( RPJ )', '04:47:00', '04:49:00', '0', 'A', '350');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( RRS )', '17:15:00', '17:17:00', '0', 'A', '140');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( RTA )', '12:40:00', '12:42:00', '0', 'A', '314');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12264', '( RTM )', '14:00:00', '14:05:00', '0', 'A', '725');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( RTM )', '14:15:00', '14:25:00', '0', 'A', '1239');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( RTM )', '21:40:00', '21:45:00', '0', 'A', '643');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( RUPC )', '22:05:00', '22:10:00', '0', 'A', '44');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( RURA )', '20:27:00', '20:28:00', '0', 'P', '256');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( SASN )', '19:20:00', '19:22:00', '0', 'A', '255');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( SASN )', '15:55:00', '15:57:00', '0', 'A', '1890');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( SASN )', '15:35:00', '15:37:00', '0', 'P', '1630');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( SBB )', '03:17:00', '03:19:00', '0', 'P', '634');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('15014', '( SBB )', '03:11:00', '03:13:00', '0', 'P', '264');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('25014', '( SBB )', '03:11:00', '03:13:00', '0', 'A', '224');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( SBIB )', '05:43:00', '05:45:00', '0', 'A', '928');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12958', '( SBIB )', '08:06:00', '08:08:00', '0', 'P', '929');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( SBIB )', '15:00:00', '15:02:00', '0', 'A', '1222');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( SBIB )', '21:10:00', '21:12:00', '0', 'P', '1554');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( SBIB )', '06:34:00', '06:36:00', '0', 'P', '859');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( SELU )', '11:11:00', '11:12:00', '0', 'A', '101');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( SEU )', '21:29:00', '21:31:00', '0', 'P', '760');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( SEU )', '16:39:00', '16:41:00', '0', 'A', '504');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( SFY )', '09:18:00', '09:20:00', '0', 'P', '149');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( SGZ )', '12:18:00', '12:20:00', '0', 'P', '1106');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( SGZ )', '00:01:00', '00:03:00', '0', 'P', '775');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( SHDM )', '07:10:00', '07:12:00', '0', 'P', '826');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( SIOB )', '08:10:00', '08:12:00', '0', 'A', '1416');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( SIR )', '04:18:00', '04:20:00', '0', 'A', '325');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( SKB )', '16:10:00', '16:12:00', '0', 'P', '1204');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( SKB )', '22:55:00', '23:00:00', '0', 'A', '407');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( SKF )', '01:31:00', '01:33:00', '0', 'A', '420');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( SKF )', '08:31:00', '08:33:00', '0', 'A', '549');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( SKF )', '19:07:00', '19:08:00', '0', 'A', '180');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20940', '( SLN )', '00:00:00', '18:05:00', '0', 'P', '0');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( SMK )', '22:23:00', '22:25:00', '0', 'A', '1516');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( SMK )', '05:28:00', '05:30:00', '0', 'A', '719');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( SMPR )', '19:29:00', '19:31:00', '0', 'P', '217');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( SMR )', '00:45:00', '00:50:00', '0', 'A', '1339');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( SMVJ )', '07:13:00', '07:15:00', '0', 'P', '767');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( SNP )', '15:20:00', '15:22:00', '0', 'P', '44');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( SNP )', '21:55:00', '21:57:00', '0', 'A', '1488');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( SNP )', '11:50:00', '11:52:00', '0', 'P', '1419');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( SNP )', '05:00:00', '05:02:00', '0', 'A', '691');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( SOD )', '22:09:00', '22:11:00', '0', 'A', '813');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( SOD )', '08:05:00', '08:07:00', '0', 'P', '833');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( SRE )', '00:20:00', '00:25:00', '0', 'A', '330');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( SRE )', '07:10:00', '07:15:00', '0', 'A', '459');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( SRE )', '02:40:00', '02:45:00', '0', 'P', '1052');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( SRR )', '04:10:00', '04:15:00', '0', 'P', '2654');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( SSB )', '04:18:00', '04:20:00', '0', 'P', '374');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( SSM )', '06:20:00', '06:22:00', '0', 'P', '560');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12215', '( ST )', '03:55:00', '04:00:00', '0', 'A', '1182');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( ST )', '23:48:00', '23:53:00', '0', 'A', '795');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( ST )', '20:06:00', '20:11:00', '0', 'A', '1630');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( ST )', '15:47:00', '15:52:00', '0', 'A', '252');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( ST )', '11:25:00', '11:30:00', '0', 'P', '1094');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( SUNR )', '02:17:00', '02:19:00', '0', 'A', '1044');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( SVPI )', '14:55:00', '14:57:00', '0', 'A', '437');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( SWM )', '08:30:00', '08:35:00', '0', 'P', '865');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( SWM )', '03:10:00', '03:12:00', '0', 'P', '1017');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( SZM )', '14:49:00', '14:51:00', '0', 'A', '4');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( SZM )', '21:24:00', '21:26:00', '0', 'P', '1448');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( SZM )', '11:19:00', '11:21:00', '0', 'A', '1379');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( TCR )', '05:17:00', '05:20:00', '0', 'A', '2687');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( TDL )', '17:05:00', '17:10:00', '0', 'A', '1240');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( TDL )', '23:57:00', '00:02:00', '0', 'P', '443');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( THVM )', '12:06:00', '12:08:00', '0', 'P', '46');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( THVM )', '15:16:00', '15:18:00', '0', 'P', '1986');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( TIR )', '02:48:00', '02:50:00', '0', 'P', '2609');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( TLY )', '00:58:00', '01:00:00', '0', 'A', '2499');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( TPZ )', '17:46:00', '17:48:00', '0', 'A', '97');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( TQA )', '17:38:00', '17:39:00', '0', 'A', '152');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( TUN )', '01:37:00', '01:39:00', '0', 'A', '198');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( UBC )', '05:10:00', '05:12:00', '0', 'P', '370');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( UCR )', '15:46:00', '15:50:00', '0', 'P', '82');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( UD )', '20:08:00', '20:10:00', '0', 'P', '2283');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( UHL )', '22:10:00', '00:00:00', '0', 'A', '385');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12916', '( UJA )', '04:05:00', '04:07:00', '0', 'A', '843');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( UJA )', '12:48:00', '12:50:00', '0', 'P', '1115');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( UJN )', '07:25:00', '07:40:00', '0', 'P', '79');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12005', '( UMB )', '19:50:00', '19:53:00', '0', 'P', '199');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12011', '( UMB )', '10:20:00', '10:22:00', '0', 'P', '199');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12045', '( UMB )', '21:50:00', '21:52:00', '0', 'P', '199');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12057', '( UMB )', '17:55:00', '18:22:00', '0', 'P', '199');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12311', '( UMB )', '00:45:00', '00:55:00', '0', 'A', '1643');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12414', '( UMB )', '00:41:00', '00:51:00', '0', 'A', '378');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12449', '( UMB )', '17:25:00', '17:30:00', '0', 'A', '2117');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( UMB )', '14:45:00', '14:55:00', '0', 'A', '1834');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( UMB )', '22:50:00', '23:00:00', '0', 'P', '249');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( UMB )', '14:30:00', '14:40:00', '0', 'A', '1574');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14011', '( UMB )', '22:40:00', '22:45:00', '0', 'A', '198');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14217', '( UMB )', '08:00:00', '08:07:00', '0', 'A', '845');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( UMB )', '05:35:00', '05:40:00', '0', 'A', '378');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( UMB )', '04:08:00', '04:15:00', '0', 'A', '1133');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( UTL )', '03:28:00', '03:30:00', '0', 'P', '1458');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12925', '( VAPI )', '13:41:00', '13:43:00', '0', 'A', '157');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('22950', '( VAPI )', '12:40:00', '12:42:00', '0', 'A', '1189');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14311', '( VG )', '05:07:00', '05:09:00', '0', 'A', '1234');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( VG )', '01:03:00', '01:05:00', '0', 'P', '978');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12138', '( VGLB )', '11:55:00', '12:05:00', '0', 'A', '797');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12618', '( VGLB )', '12:15:00', '12:25:00', '0', 'P', '403');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12715', '( VGLB )', '04:27:00', '04:35:00', '0', 'A', '1224');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('20938', '( WKR )', '03:26:00', '03:28:00', '0', 'P', '1118');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('12904', '( YJUD )', '23:44:00', '23:46:00', '0', 'P', '300');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('14662', '( YJUD )', '06:23:00', '06:25:00', '0', 'P', '429');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19307', '( YJUD )', '03:11:00', '03:13:00', '0', 'A', '1082');
INSERT INTO `mydb`.`train_schedule` (`train_no`, `station_no`, `arrival_time`, `dept_time`, `platform_no`, `arrives_passes`, `distance`) VALUES ('19032', '( YNRK )', '00:00:00', '14:50:00', '0', 'P', '0');

-- -----------------------------------------------------
-- Placeholder table for view `mydb`.`station_schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`station_schedule` (`train_no` INT, `train_name` INT, `arrival_time` INT, `dept_time` INT, `platform_no` INT);

-- -----------------------------------------------------
-- Placeholder table for view `mydb`.`passes_by`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`passes_by` (`train_no` INT, `station_no` INT, `arrival_time` INT, `dept_time` INT, `platform_no` INT, `arrives_passes` INT);

-- -----------------------------------------------------
-- Placeholder table for view `mydb`.`stops_at`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`stops_at` (`train_no` INT, `station_no` INT, `arrival_time` INT, `dept_time` INT, `platform_no` INT, `arrives_passes` INT);

-- -----------------------------------------------------
-- Placeholder table for view `mydb`.`train_timeline`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`train_timeline` (`station_no` INT, `station_name` INT, `arrival_time` INT, `dept_time` INT, `platform_no` INT);


-- -----------------------------------------------------
-- View `mydb`.`station_schedule`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`station_schedule`;
USE `mydb`;
CREATE  OR REPLACE VIEW `station_schedule` AS
    SELECT 
        train.train_no, train_name, arrival_time, dept_time, platform_no
    FROM
        train_schedule inner join train on train_schedule.train_no = train.train_no
    WHERE
        station_no = '( JAT )';
        
select * from station_schedule;

-- -----------------------------------------------------
-- View `mydb`.`passes_by`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`passes_by`;
USE `mydb`;
CREATE  OR REPLACE VIEW `passes_by` AS
    SELECT 
        train_no,station_no,arrival_time,dept_time,platform_no
    FROM
        train_schedule
    WHERE
        arrives_passes LIKE 'P%';

select * from passes_by;
-- -----------------------------------------------------
-- View `mydb`.`stops_at`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`stops_at`;
USE `mydb`;
CREATE  OR REPLACE VIEW `stops_at` AS
    SELECT 
        train_no,station_no,arrival_time,dept_time,platform_no
    FROM
        train_schedule
    WHERE
        arrives_passes LIKE 'A%';

select * from stops_at;

-- -----------------------------------------------------
-- View `mydb`.`train_timeline`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`train_timeline`;
USE `mydb`;
CREATE  OR REPLACE VIEW `train_timeline` AS
    SELECT 
        station.station_no,station_name ,arrival_time, dept_time, platform_no, arrives_passes,distance
    FROM
        train_schedule
            INNER JOIN
        station ON station.station_no = train_schedule.station_no
    WHERE
        train_no = 12414
	order by distance;

select * from train_timeline;


-- -----------------------------------------------------
-- procedure ETA
-- -----------------------------------------------------

DELIMITER $$
USE `mydb`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE
`ETA`(IN train int,IN station VARCHAR(10), out
eta TIME)
 READS SQL DATA
 DETERMINISTIC
 SQL SECURITY INVOKER
 COMMENT 'Expected Arrival Train Time.'
BEGIN
START TRANSACTION;
select arrival_time into eta 
from train_schedule
	where train_no = train and station_no = station;
commit;
END$$

DELIMITER ;

call ETA(12414, '( LDH )',@ETA);
select @ETA as 'Expected Arrival Time';

-- -----------------------------------------------------
-- procedure ETD
-- -----------------------------------------------------

DELIMITER $$
USE `mydb`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE
`ETD`(IN train int,IN station VARCHAR(10), out
eta TIME)
 READS SQL DATA
 DETERMINISTIC
 SQL SECURITY INVOKER
 COMMENT 'Expected Departure Train Time.'
BEGIN
START TRANSACTION;
select dept_time into eta 
from train_schedule
	where train_no = train and station_no = station;
commit;
END$$

DELIMITER ;


call ETD(12414, '( LDH )',@ETD);
select @ETD as 'Expected Departure Time';

-- -----------------------------------------------------
-- procedure available_trains
-- -----------------------------------------------------

DELIMITER $$
USE `mydb`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE
`available_trains`(IN start_station_no VARCHAR(10),IN end_station_no VARCHAR(10))
 READS SQL DATA
 DETERMINISTIC
 SQL SECURITY INVOKER
 COMMENT 'Trains Between Relevent Stations.'
BEGIN
START TRANSACTION;
select train.train_no, train_name, station_no as starting_station, CASE WHEN station_no = start_station_no THEN end_station_no ELSE start_station_no END AS destination_station, arrival_time, dept_time, platform_no 
from stops_at inner join train on train.train_no = stops_at.train_no
	where station_no in (start_station_no,end_station_no)
    ;
commit;
END$$

DELIMITER ;

call available_trains('( LDH )', '( JP )');

-- -----------------------------------------------------
-- procedure all_train_stops
-- -----------------------------------------------------

DELIMITER $$
USE `mydb`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE
`all_train_stops`(IN train int)
 READS SQL DATA
 DETERMINISTIC
 SQL SECURITY INVOKER
 COMMENT 'Stations of a particular train.'
BEGIN 
	START TRANSACTION;
	SELECT 
        train_no, station_no, arrival_time,dept_time, platform_no, distance 
    FROM
        train_schedule
    WHERE
        arrives_passes LIKE 'A%' and train_schedule.train_no = train
	order by distance;
	commit;
END$$

DELIMITER ;

call all_train_stops(12414);
-- -----------------------------------------------------
-- procedure routes
-- -----------------------------------------------------
drop procedure routes

DELIMITER $$
USE `mydb`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE
`routes`(IN start_station_no VARCHAR(10),IN end_station_no VARCHAR(10))
 READS SQL DATA
 DETERMINISTIC
 SQL SECURITY INVOKER
 COMMENT 'Routes between stations.'
BEGIN
	START TRANSACTION;
    SELECT 
		train_no, train_schedule.station_no , station_name ,arrival_time, dept_time, train_schedule.distance
    FROM
        train_schedule
            INNER JOIN
        station ON train_schedule.station_no = station.station_no
    where train_no in (select train_no from (select train.train_no, train_name, station_no as starting_station, CASE WHEN station_no = start_station_no THEN end_station_no ELSE start_station_no END AS destination_station, arrival_time, dept_time, platform_no 
from stops_at inner join train on train.train_no = stops_at.train_no
	where station_no in (start_station_no,end_station_no)) as t1)
    order by train_no, train_schedule.distance
    ;
    commit;
END$$

DELIMITER ;

call available_trains('( LDH )', '( JP )');
call routes('( LDH )', '( JP )');
-- -----------------------------------------------------
-- procedure train_status
-- -----------------------------------------------------

DELIMITER $$
USE `mydb`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE
`train_status`(IN train int)
 READS SQL DATA
 DETERMINISTIC
 SQL SECURITY INVOKER
 COMMENT 'Live Status.'
BEGIN
START TRANSACTION;
select station_no, (arrival_time - cast(current_Time() as time))/60 as timegap_in_mins, CASE WHEN (arrival_time - cast(current_Time() as time))/60  < 0 THEN 'Crossed' ELSE 'Yet to Reach' END AS 'status'

from (select * from train_schedule 
	where train_no = train 
    order by arrival_time) as t2
order by (timegap_in_mins)
    ;
    commit;
END$$



DELIMITER ;

call train_status(19032);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
