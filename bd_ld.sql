CREATE DATABASE sfood_bd;

USE sfood_bd;

CREATE TABLE email_cupons(
	id INT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO email_cupons(id, email)
VALUES ("1", "bernardo@gmail.com");


