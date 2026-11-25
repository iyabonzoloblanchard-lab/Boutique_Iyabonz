
-- =============================================
-- Projet : Boutique_Iyabonz
-- Fichier : 04_Requetes_Metier.sql
-- But : Requêtes métiers
-- =============================================

USE Boutique_Iyabonz;
GO

-- 3. Requêtes - Réponses aux besoins métier
-- Besoin 1 : Lister les produits avec leur catégorie
SELECT p.nom_produit, p.prix, c.nom_categorie
FROM PRODUIT p
JOIN CATEGORIE c ON p.id_categorie = c.id_categorie;

-- Besoin 2 : Voir le détail d'une commande : qui a acheté quoi ?
SELECT cl.nom, cl.prenom, co.date_commande, p.nom_produit, l.quantite, p.prix,
       (l.quantite * p.prix) AS total_ligne
FROM CLIENT cl
JOIN COMMANDE co ON cl.id_client = co.id_client
JOIN LIGNE_COMMANDE l ON co.id_commande = l.id_commande
JOIN PRODUIT p ON l.id_produit = p.id_produit;

-- Besoin 3 : Chiffre d'affaires total de la boutique
SELECT SUM(l.quantite * p.prix) AS chiffre_affaires
FROM LIGNE_COMMANDE l
JOIN PRODUIT p ON l.id_produit = p.id_produit;

-- Modification stock 
SELECT * FROM PRODUIT;
UPDATE PRODUIT SET stock = 2 WHERE id_produit = 1;

-- Besoin 4 : Quels produits sont en rupture / stock faible ?
SELECT nom_produit, stock
FROM PRODUIT
WHERE stock < 5;

-- Besoin 5 : Quels sont les meilleurs clients ?
SELECT cl.nom, cl.prenom, SUM(l.quantite * p.prix) AS total_achete
FROM CLIENT cl
JOIN COMMANDE co ON cl.id_client = co.id_client
JOIN LIGNE_COMMANDE l ON co.id_commande = l.id_commande
JOIN PRODUIT p ON l.id_produit = p.id_produit
GROUP BY cl.nom, cl.prenom
ORDER BY total_achete DESC;
