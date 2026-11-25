-- =============================================
-- Projet : Boutique_Iyabonz
-- Fichier : 03_Inserer_Donnees.sql
-- But : Insérer les données de test dans les 5 tables
-- =============================================

USE Boutique_Iyabonz;
GO

-- Catégories
INSERT INTO CATEGORIE (nom_categorie, description) VALUES
('Informatique', 'Ordinateurs et accessoires'),
('Mode', 'Vêtements et accessoires'),
('Beauté', 'Produits de beauté');

-- Clients
INSERT INTO CLIENT (nom, prenom, email, telephone) VALUES
('BLANCHARD', 'IYA BONZOLO', 'iya.bonzolo@mail.com', '0600000000'),
('DIALLO', 'Mamadou', 'mamadou@mail.com', '0611111111');

-- Produits
INSERT INTO PRODUIT (nom_produit, prix, stock, id_categorie) VALUES
('Ordinateur portable', 899.99, 10, 1),
('T-shirt', 19.99, 50, 2),
('Crème visage', 29.99, 30, 3);

-- Commandes
INSERT INTO COMMANDE (date_commande, id_client) VALUES
('2026-11-24', 1),
('2026-11-24', 2);

-- Lignes de commande
INSERT INTO LIGNE_COMMANDE (quantite, id_commande, id_produit) VALUES
(1, 1, 1),  -- IYA BONZOLO achète 1 ordinateur
(2, 1, 2),  -- + 2 T-shirts
(1, 2, 3);  -- Mamadou achète 1 crème
Go