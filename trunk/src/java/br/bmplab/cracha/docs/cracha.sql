SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `cracha` ;
CREATE SCHEMA IF NOT EXISTS `cracha` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `cracha` ;

-- -----------------------------------------------------
-- Table `cracha`.`inscrito`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cracha`.`inscrito` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(100) NOT NULL ,
  `email` VARCHAR(100) NOT NULL ,
  `curso` VARCHAR(100) NOT NULL ,
  `credenciado` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
