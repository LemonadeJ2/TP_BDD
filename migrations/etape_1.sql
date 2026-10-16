CREATE DATABASE gargote_Rado;

CREATE TABLE CATEGORIE_PLAT(
    id_categorie INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE PLAT(
    id_plat INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prix DECIMAL(10,0) NOT NULL,
    id_categorie_plat INT,
    FOREIGN KEY(id_categorie_plat) REFERENCES CATEGORIE_PLAT(id_categorie)
);

INSERT INTO CATEGORIE_PLAT(nom) VALUES 
    ('Plat malagasy'),
    ('Plat chinois'),
    ('Soupe'),
    ('Dessert et goûter'),
    ('Boisson');

INSERT INTO PLAT(nom, prix, id_categorie_plat) VALUES 
    ('Romazava',7000,1),
    ('Ravitoto sy henakisoa',8000,1),
    ('Akoho sy voanio',8500,1),
    ('Mi sao',6000,2),
    ('Soupe chinoise',5000,3),
    ('Mofo gasy',1000,4),
    ('Ranon ampango',500,5);

