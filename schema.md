# Etape 1:

## les tables:

- PLAT (**id_plat**, nom, prix , #id_categorie_plat? )
- CATEGORIE_PLAT(**id_categorie**, nom)

Explication: J'ai choisit "DECIMAL" en tant que type pour le prix dans la table PLAT. 

# Etape 2:

Explication: on ne rajoute pas juste un type

On ne peut pas juste rajouter une colone categorie dans plat car celà laisse la possibilité d'avoir différentes manière d'écrire le nom de la catégorie et lorsqu'on voudra selectionner un nom en particulier. Certain plat pourront ne pas etre pris. 

Exemple: 
- plat (1, vary, 1000, plat_malagasy)
- plat (1, vary amin'ny anana, 1000, plat gasy)

quand on voudra selectionn tous les 'plat_malagasy', vary amin'ny anana sera oublié car écrit d'une différente manière. Là ou une table fera en sorte que tout soit homogène
