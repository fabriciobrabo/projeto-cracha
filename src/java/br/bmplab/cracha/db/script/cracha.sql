SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `cracha` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `cracha` ;

-- -----------------------------------------------------
-- Table `cracha`.`evento`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cracha`.`evento` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(100) NOT NULL ,
  `sigla` VARCHAR(50) NOT NULL ,
  `periodo` VARCHAR(50) NULL ,
  `resumo` VARCHAR(255) NULL ,
  `local` VARCHAR(100) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci;


-- -----------------------------------------------------
-- Table `cracha`.`palestrante`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cracha`.`palestrante` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `titulo` VARCHAR(45) NULL ,
  `nome` VARCHAR(100) NOT NULL ,
  `cracha` VARCHAR(50) NOT NULL ,
  `telefone` VARCHAR(50) NULL ,
  `email` VARCHAR(100) NOT NULL ,
  `instituicao` VARCHAR(100) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci;


-- -----------------------------------------------------
-- Table `cracha`.`curso`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cracha`.`curso` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `evento` INT(11) NOT NULL ,
  `nome` VARCHAR(100) NOT NULL ,
  `codigo` VARCHAR(50) NOT NULL ,
  `palestrante` INT(11) NOT NULL ,
  `tipo` VARCHAR(50) NULL ,
  `carga_horaria` VARCHAR(15) NULL ,
  `data` DATE NULL ,
  `horario` VARCHAR(25) NULL ,
  `observacao` TEXT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_curso_evento1_idx` (`evento` ASC) ,
  INDEX `fk_programacao_palestrante1_idx` (`palestrante` ASC) ,
  CONSTRAINT `fk_curso_evento1`
    FOREIGN KEY (`evento` )
    REFERENCES `cracha`.`evento` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_programacao_palestrante1`
    FOREIGN KEY (`palestrante` )
    REFERENCES `cracha`.`palestrante` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci;


-- -----------------------------------------------------
-- Table `cracha`.`inscrito`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cracha`.`inscrito` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(100) NOT NULL ,
  `cracha` VARCHAR(50) NOT NULL ,
  `telefone` VARCHAR(50) NULL ,
  `email` VARCHAR(100) NULL ,
  `instituicao` VARCHAR(50) NULL ,
  `curso` INT(11) NOT NULL ,
  `credenciado` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_inscrito_curso_idx` (`curso` ASC) ,
  CONSTRAINT `fk_inscrito_curso`
    FOREIGN KEY (`curso` )
    REFERENCES `cracha`.`curso` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci;


-- -----------------------------------------------------
-- Table `cracha`.`coordenacao`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `cracha`.`coordenacao` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `evento` INT(11) NOT NULL ,
  `nome` VARCHAR(100) NOT NULL ,
  `cracha` VARCHAR(50) NOT NULL ,
  `telefone` VARCHAR(50) NULL ,
  `email` VARCHAR(100) NOT NULL ,
  `funcao` VARCHAR(50) NOT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) ,
  INDEX `fk_coordenacao_evento1_idx` (`evento` ASC) ,
  CONSTRAINT `fk_coordenacao_evento1`
    FOREIGN KEY (`evento` )
    REFERENCES `cracha`.`evento` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci;

USE `cracha` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
