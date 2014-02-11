SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `curriculum` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `curriculum`;

-- -----------------------------------------------------
-- Table `curriculum`.`info`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `curriculum`.`info` (
  `id_info` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `nationality` VARCHAR(45) NOT NULL ,
  `birth` DATE NOT NULL ,
  `address` VARCHAR(60) NOT NULL ,
  `zip_code` VARCHAR(15) NOT NULL ,
  `city` VARCHAR(15) NOT NULL ,
  `country` VARCHAR(15) NOT NULL ,
  `phone` VARCHAR(20) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  `locale` CHAR(2) NOT NULL ,
  PRIMARY KEY (`id_info`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `curriculum`.`language`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `curriculum`.`language` (
  `id_language` INT NOT NULL AUTO_INCREMENT ,
  `language` VARCHAR(15) NOT NULL ,
  `level` TINYINT NOT NULL ,
  `locale` CHAR(2) NOT NULL ,
  PRIMARY KEY (`id_language`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `curriculum`.`skill`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `curriculum`.`skill` (
  `id_skill` INT NOT NULL AUTO_INCREMENT ,
  `description` VARCHAR(255) NOT NULL ,
  `locale` CHAR(2) NOT NULL ,
  PRIMARY KEY (`id_skill`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `curriculum`.`interest`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `curriculum`.`interest` (
  `id_interest` INT NOT NULL AUTO_INCREMENT ,
  `description` VARCHAR(255) NOT NULL ,
  `locale` CHAR(2) NOT NULL ,
  PRIMARY KEY (`id_interest`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `curriculum`.`experience`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `curriculum`.`experience` (
  `id_experience` INT NOT NULL AUTO_INCREMENT ,
  `company` VARCHAR(45) NOT NULL ,
  `city` VARCHAR(15) NOT NULL ,
  `country` VARCHAR(15) NOT NULL ,
  `start` DATE NOT NULL ,
  `end` DATE NULL ,
  `function` VARCHAR(45) NOT NULL ,
  `description` VARCHAR(255) NOT NULL ,
  `locale` CHAR(2) NOT NULL ,
  PRIMARY KEY (`id_experience`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `curriculum`.`certificate`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `curriculum`.`certificate` (
  `id_certificate` INT NOT NULL AUTO_INCREMENT ,
  `institution` VARCHAR(45) NOT NULL ,
  `course` VARCHAR(45) NOT NULL ,
  `conclusion` YEAR NOT NULL ,
  `type` CHAR(1) NOT NULL ,
  `locale` CHAR(2) NOT NULL ,
  PRIMARY KEY (`id_certificate`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `curriculum`.`user`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `curriculum`.`user` (
  `id_user` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `login` VARCHAR(15) NOT NULL ,
  `passwd` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`id_user`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `curriculum`.`menu`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `curriculum`.`menu` (
  `id_menu` INT NOT NULL AUTO_INCREMENT ,
  `description` VARCHAR(45) NOT NULL ,
  `link` VARCHAR(15) NOT NULL ,
  `locale` CHAR(2) NOT NULL ,
  PRIMARY KEY (`id_menu`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
