-- =============================================
-- Projet : Boutique_Iyabonz
-- Fichier : 09_Verifier_Droits.sql
-- But : Vérifier les droits sur les 5 tables
-- =============================================

USE Boutique_Iyabonz;
GO

SELECT 
    pr.name AS Utilisateur,
    pe.permission_name AS Droit,
    pe.state_desc AS Etat,
    OBJECT_NAME(pe.major_id) AS Table_Concernee
FROM sys.database_permissions pe
JOIN sys.database_principals pr ON pe.grantee_principal_id = pr.principal_id
WHERE pr.name IN ('vendeur1', 'gerant1')
ORDER BY pr.name, Table_Concernee;