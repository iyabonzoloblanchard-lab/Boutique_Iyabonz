-- =============================================
-- Projet : Boutique_Iyabonz
-- Fichier : 07_Gerer_Droits.sql
-- But : Définir les droits sur les 5 tables
-- =============================================

USE Boutique_Iyabonz;
GO

-- ===== VENDEUR1 : Lecture seule sur les 5 tables =====
GRANT SELECT ON CATEGORIE TO vendeur1;
GRANT SELECT ON PRODUIT TO vendeur1;
GRANT SELECT ON CLIENT TO vendeur1;
GRANT SELECT ON COMMANDE TO vendeur1;
GRANT SELECT ON LIGNE_COMMANDE TO vendeur1;
GO

-- On bloque la modification sur les 5 tables
DENY INSERT, UPDATE, DELETE ON CATEGORIE TO vendeur1;
DENY INSERT, UPDATE, DELETE ON PRODUIT TO vendeur1;
DENY INSERT, UPDATE, DELETE ON CLIENT TO vendeur1;
DENY INSERT, UPDATE, DELETE ON COMMANDE TO vendeur1;
DENY INSERT, UPDATE, DELETE ON LIGNE_COMMANDE TO vendeur1;
GO

-- ===== GERANT1 : Tous les droits sur les 5 tables =====
GRANT SELECT, INSERT, UPDATE, DELETE ON CATEGORIE TO gerant1;
GRANT SELECT, INSERT, UPDATE, DELETE ON PRODUIT TO gerant1;
GRANT SELECT, INSERT, UPDATE, DELETE ON CLIENT TO gerant1;
GRANT SELECT, INSERT, UPDATE, DELETE ON COMMANDE TO gerant1;
GRANT SELECT, INSERT, UPDATE, DELETE ON LIGNE_COMMANDE TO gerant1;
GO