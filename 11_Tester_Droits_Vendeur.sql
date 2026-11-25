
-- À exécuter en étant connectée en vendeur1 / 123456
-- 11_Tester_Droits_Vendeur.sql
-- =============================================
-- TEST VENDEUR sur les 5 tables
-- Attendu : SEUL SELECT marche, le reste ÉCHOUE
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

-- 2. INSERT -> DOIVENT ÉCHOUER
INSERT INTO CATEGORIE VALUES (99, 'Test');
INSERT INTO PRODUIT VALUES (99, 'Test', 10, 1, 1);
INSERT INTO CLIENT VALUES (99, 'Test', '0700');
GO

-- 3. UPDATE -> DOIVENT ÉCHOUER
UPDATE PRODUIT SET prix = 999 WHERE id_produit = 1;
UPDATE CLIENT SET nom_client = 'Test' WHERE id_client = 1;
GO

-- 4. DELETE -> DOIVENT ÉCHOUER
DELETE FROM PRODUIT WHERE id_produit = 1;
DELETE FROM CLIENT WHERE id_client = 1;
GO