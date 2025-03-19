CREATE DATABASE personal;
USE personal;
## CATEGORII : Atacant, Mijlocas, Fundas, Portar
DROP TABLE IF EXISTS date_personale;
CREATE TABLE date_personale (
	id INT PRIMARY KEY AUTO_INCREMENT,
    prenume VARCHAR(255), 
    nume VARCHAR(255), 
    varsta INT CHECK (VARSTA > 5) , 
    pozitie VARCHAR(255) DEFAULT 'Atacant' CHECK (pozitie IN ('Atacant', 'Mijlocas'))
);

INSERT INTO date_personale SET prenume = 'Ion', nume = 'Ionescu';
SELECT * FROM date_personale;

INSERT INTO date_personale SET prenume = 'Alex', nume = 'Alexandrescu', varsta = 18;
SELECT * FROM date_personale;

UPDATE date_personale SET varsta = 12 WHERE  id = 1;

SELECT * FROM date_personale;

INSERT INTO date_personale SET prenume = 'George', nume = 'Gerogescu';
INSERT INTO date_personale SET prenume = 'Florin', nume = 'Florinescu';
INSERT INTO date_personale SET prenume = 'Mihai', nume = 'Mihailescu';

SELECT * FROM date_personale;

SELECT * FROM date_personale ORDER BY varsta;
SELECT * FROM date_personale ORDER BY nume;
SELECT * FROM date_personale ORDER BY varsta, nume;

SELECT * FROM date_personale WHERE varsta IS NOT NULL;
SELECT * FROM date_personale WHERE varsta IS NULL;

INSERT date_personale SET prenume = 'Cornel', nume = 'Cornescu';
SELECT * FROM date_personale;

INSERT date_personale SET prenume = 'Cornel', nume = 'Cornescu', pozitie = 'Mijlocas';
SELECT * FROM date_personale;
