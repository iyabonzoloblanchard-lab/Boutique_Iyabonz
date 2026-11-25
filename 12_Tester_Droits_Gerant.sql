-- 12_Tester_Droits_Gerant.sqlÀ 
-- exécuter en étant connectée en gerant1 / gerant123
-- Déconnecte-toi de vendeur1 d'abord.
-- =============================================
-- Projet : Boutique_Iyabonz
-- Fichier : 12_Tester_Droits_Gerant.sql
-- TEST GÉRANT : gerant1 / gerant123
-- Attendu : TOUT doit marcher sur les 5 tables
-- =============================================
USE Boutique_Iyabonz;
GO

-- 1. SELECT -> DOIVENT MARCHER (5 tables)
SELECT * FROM CATEGORIE;
SELECT * FROM PRODUIT;
SELECT * FROM CLIENT;
SELECT * FROM COMMANDE;
SELECT * FROM LIGNE_COMMANDE;
GO

-- 2. INSERT -> DOIVENT MARCHER
INSERT INTO CATEGORIE VALUES (99, 'Test Gerant');
INSERT INTO PRODUIT VALUES (99, 'Test Gerant', 10, 1, 99);
INSERT INTO CLIENT VALUES (99, 'Test Gerant', '0700000099');
INSERT INTO COMMANDE VALUES (99, '2026-11-25', 99);
INSERT INTO LIGNE_COMMANDE VALUES (99, 99, 99, 1);
GO

-- 3. Vérification : on doit voir les lignes 99
SELECT * FROM CATEGORIE WHERE id_categorie = 99;
SELECT * FROM PRODUIT WHERE id_produit = 99;
SELECT * FROM CLIENT WHERE id_client = 99;
GO

-- 4. UPDATE -> DOIVENT MARCHER
UPDATE CATEGORIE SET nom_categorie = 'Test Modifié' WHERE id_categorie = 99;
UPDATE PRODUIT SET prix = 100 WHERE id_produit = 99;
UPDATE CLIENT SET nom_client = 'Test Modifié' WHERE id_client = 99;
UPDATE COMMANDE SET date_commande = '2026-11-26' WHERE id_commande = 99;
UPDATE LIGNE_COMMANDE SET quantite = 5 WHERE id_ligne = 99;
GO

-- 5. Vérification après UPDATE
SELECT * FROM PRODUIT WHERE id_produit = 99;
GO

-- 6. DELETE -> DOIVENT MARCHER (on nettoie dans l'ordre : enfant vers parent)
DELETE FROM LIGNE_COMMANDE WHERE id_ligne = 99;
DELETE FROM COMMANDE WHERE id_commande = 99;
DELETE FROM CLIENT WHERE id_client = 99;
DELETE FROM PRODUIT WHERE id_produit = 99;
DELETE FROM CATEGORIE WHERE id_categorie = 99;
GO

-- 7. Vérification finale : les 99 doivent avoir disparu
SELECT * FROM CATEGORIE WHERE id_categorie = 99;
SELECT * FROM PRODUIT WHERE id_produit = 99;
SELECT * FROM CLIENT WHERE id_client = 99;
GO