CREATE DATABASE magazin_online;
USE magazin_online;
DROP TABLE computer_parts;
CREATE TABLE computer_parts(
id INT PRIMARY KEY AUTO_INCREMENT,
cod VARCHAR(5),
tip VARCHAR(255) DEFAULT "Electronic",
nume VARCHAR(255) UNIQUE NOT NULL,
pret DECIMAL(7,2)
);
SELECT * FROM computer_parts;

INSERT INTO computer_parts SET cod = 5, nume = "Samsung", pret = 12345;
SELECT * FROM computer_parts;

INSERT INTO computer_parts SET cod = 19567, nume = "Apple", pret = 12456;
SELECT * FROM computer_parts;

INSERT INTO computer_parts SET cod = 19127, nume = "LG", pret = 12456.57;
SELECT * FROM computer_parts;

INSERT INTO computer_parts SET cod = 1534, nume = "Huawey", pret = 145.76;
SELECT * FROM computer_parts;

