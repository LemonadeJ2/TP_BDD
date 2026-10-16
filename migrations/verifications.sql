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

