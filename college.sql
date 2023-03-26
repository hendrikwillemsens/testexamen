-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema college
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema college
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `college` ;
USE `college` ;

-- -----------------------------------------------------
-- Table `college`.`table2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `college`.`table2` (
  `qdsf` INT(11) NOT NULL,
  PRIMARY KEY (`qdsf`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `college`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `college`.`table1` (
  `qdf` INT(11) NOT NULL,
  `dqsf` VARCHAR(45) NULL DEFAULT NULL,
  `table2_qdsf` INT(11) NOT NULL,
  PRIMARY KEY (`qdf`),
  INDEX `fk_table1_table2_idx` (`table2_qdsf` ASC) VISIBLE,
  CONSTRAINT `fk_table1_table2`
    FOREIGN KEY (`table2_qdsf`)
    REFERENCES `college`.`table2` (`qdsf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
