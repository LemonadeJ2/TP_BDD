CREATE TABLE SERVEUR(
    id_serveur INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL
);

CREATE TABLE TABLES(
    id_table INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    numero_table INT NOT NULL
);

ALTER TABLE COMMANDE ADD id_table INT;
ALTER TABLE COMMANDE ADD CONSTRAINT id_table FOREIGN KEY(id_table) REFERENCES TABLES(id_table);
ALTER TABLE COMMANDE ADD emportee Boolean;
ALTER TABLE COMMANDE ADD id_serveur INT;
ALTER TABLE COMMANDE ADD CONSTRAINT id_serveur FOREIGN KEY(id_serveur) REFERENCES SERVEUR(id_serveur);

INSERT INTO SERVEUR(nom, prenom) VALUES 
('Njaka', 'RAkoto'),
('Lalao', 'Rasoa');

INSERT INTO TABLES(numero_table) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8);

UPDATE COMMANDE SET id_table= 2, emportee = false, id_serveur = 1 WHERE id_commande =2;
UPDATE COMMANDE SET id_table= 3, emportee = false, id_serveur = 2 WHERE id_commande =1;
