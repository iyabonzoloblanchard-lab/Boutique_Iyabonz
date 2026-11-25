-- =============================================
-- Projet : Boutique_Iyabonz
-- Fichier : 05_Creer_Logins.sql
-- But : Créer les LOGINS au niveau SERVEUR
-- =============================================

CREATE LOGIN vendeur1 WITH PASSWORD = '123456';
GO
CREATE LOGIN gerant1 WITH PASSWORD = 'gerant123';
GO