CREATE TABLE CLIENT(
    id_client INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(50)
);

INSERT INTO CLIENT (nom) VALUES 
('Jacky Chan'),
('Jean Neymar'),
('Pho Hareter'),
('Yupis MiYof');

ALTER TABLE COMMANDE ADD id_client INT,
ALTER TABLE COMMANDE ADD CONSTRAINT id_client FOREIGN (id_client) REFERENCES CLIENT(id_client)

UPDATE COMMANDE SET id_client= 1 WHERE id_commande = 1;