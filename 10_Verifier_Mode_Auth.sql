-- =============================================
-- Projet : Boutique_Iyabonz
-- Fichier : 10_Verifier_Mode_Auth_Et_Reactivation.sql
-- =============================================

-- 1 = Windows uniquement, 0 = Mode Mixte (c'est bon)
SELECT SERVERPROPERTY('IsIntegratedSecurityOnly') AS Mode_Auth;
GO

ALTER LOGIN vendeur1 ENABLE;
GO
ALTER LOGIN gerant1 WITH PASSWORD = 'gerant123';
GO
ALTER LOGIN vendeur1 WITH PASSWORD = '123456' UNLOCK;
GO