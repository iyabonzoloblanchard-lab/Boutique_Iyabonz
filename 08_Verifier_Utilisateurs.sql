-- =============================================
-- Projet : Boutique_Iyabonz
-- Fichier : 08_Verifier_Utilisateurs.sql
-- =============================================

SELECT name AS Login, is_disabled AS Est_Desactive
FROM sys.server_principals
WHERE name IN ('vendeur1', 'gerant1');

USE Boutique_Iyabonz;
GO
SELECT name AS Utilisateur_Base FROM sys.database_principals
WHERE name IN ('vendeur1', 'gerant1');