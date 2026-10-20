-- Etape 1
SELECT * FROM PLAT ORDER BY prix DESC;

-- Etape 2
SELECT c.nom,COUNT(*) as nb_plat FROM PLAT p JOIN CATEGORIE_PLAT c ON c.id_categorie = p.id_categorie_plat GROUP BY c.nom

-- Etape 3

SELECT c.id_commande, SUM(p.prix * cl.qte) as montant_total FROM COMMANDE c
JOIN COMMANDE_LIST cl ON cl.id_commande = c.id_commande
JOIN PLAT p ON p.id_plat = cl.id_plat 
GROUP BY c.id_commande
ORDER BY c.id_commande ASC;

-- Etape 4 

SELECT c.id_commande,
CASE
    WHEN c.id_client IS NULL THEN 'Client de passage'
    ELSE cli.nom
END AS nom_client
FROM COMMANDE c
LEFT JOIN CLIENT cli ON c.id_client = cli.id_client
GROUP BY c.id_commande, cli.nom 
ORDER BY c.id_client ASC;

-- Etape 5

SELECT s.nom, SUM(p.prix * cl.qte) as Chiffre_affaire FROM
COMMANDE c JOIN COMMANDE_LIST cl ON cl.id_commande = c.id_commande
JOIN PLAT p ON p.id_plat = cl.id_plat
JOIN SERVEUR s ON c.id_serveur = s.id_serveur
GROUP BY s.id_serveur;