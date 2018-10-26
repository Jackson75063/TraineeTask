CREATE DATABASE  aaaa;

CREATE TABLE `author` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `gender` VARCHAR(45) NULL DEFAULT NULL,
  `born` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  COLLATE='utf8_general_ci'
  ENGINE=InnoDB;


CREATE TABLE `book` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(120) NULL DEFAULT NULL,
  `published` DATE NULL DEFAULT NULL,
  `genre` VARCHAR(45) NULL DEFAULT NULL,
  `rating` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  COLLATE='utf8_general_ci'
  ENGINE=InnoDB
  AUTO_INCREMENT=10
;

CREATE TABLE `book_author` (
  `id` INT(11) NOT NULL,
  `book_id` INT(11) NOT NULL,
  `author_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
)
  COLLATE='utf8_general_ci'
  ENGINE=InnoDB;


INSERT INTO `author` VALUES (1, 'Шкляр Василь Миколайович', 'male', '1951-06-10');
INSERT INTO `author` VALUES (2, 'Joshua Bloch', 'male', '1961-07-28');
INSERT INTO `author` VALUES (3, 'Martin Fowler', 'male', null);
INSERT INTO `author` VALUES (4, 'Chad Fowler', 'male', null);
INSERT INTO `author` VALUES (5, 'J. K. Rowling', 'female', '1965-07-31');
INSERT INTO `author` VALUES (6, 'Dan Brown', 'male', '1964-06-22');
INSERT INTO `author` VALUES (7, 'Suzanne Collins', 'female', '1962-08-10');

INSERT INTO `book` VALUES ('1', 'Залишенець. Чорний ворон', null, 'historical novel', '5');
INSERT INTO `book` VALUES ('2', 'Ключ', '1999-01-01', 'novel', '3');
INSERT INTO `book` VALUES ('3', 'Effective Java: Programming Language Guide', '2001-03-02', 'technical', '5');
INSERT INTO `book` VALUES ('4', 'Java Concurrency in Practice', '2006-04-23', 'technical', '4');
INSERT INTO `book` VALUES ('5', 'Java Puzzlers: Traps, Pitfalls, and Corner Cases', '2005-02-02', 'technical', '4');
INSERT INTO `book` VALUES ('6', 'Patterns of Enterprise Application Architecture', '2002-06-25', 'technical', '3');
INSERT INTO `book` VALUES ('7', 'Harry Potter and the Philosophers Stone', '1997-06-26', 'fantasy', '5');
INSERT INTO `book` VALUES ('8', 'The Passionate Programmer', '1999-09-21', 'education', '5');
INSERT INTO `book` VALUES ('9', 'The Lost Symbol', null, 'crime', '4');

INSERT INTO `book_author` VALUES ('1', '1', '1');
INSERT INTO `book_author` VALUES ('2', '2', '1');
INSERT INTO `book_author` VALUES ('3', '3', '2');
INSERT INTO `book_author` VALUES ('4', '4', '2');
INSERT INTO `book_author` VALUES ('5', '5', '2');
INSERT INTO `book_author` VALUES ('6', '6', '3');
INSERT INTO `book_author` VALUES ('7', '9', '6');
INSERT INTO `book_author` VALUES ('8', '8', '4');
INSERT INTO `book_author` VALUES ('9', '7', '5');
