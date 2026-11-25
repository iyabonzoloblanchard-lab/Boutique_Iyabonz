-- =============================================
-- Projet : Boutique_Iyabonz
-- Fichier : 06_Creer_Users.sql
-- But : Lier les LOGINS à la base
-- =============================================

USE Boutique_Iyabonz;
GO

CREATE USER vendeur1 FOR LOGIN vendeur1;
GO
CREATE USER gerant1 FOR LOGIN gerant1;
GO