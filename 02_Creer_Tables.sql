
-- 02_Creer_Tables.sql
-- =============================================
-- Projet : Boutique_Iyabonz
-- Fichier : 02_Creer_Tables.sql
-- But : Créer les 5 tables avec les relations
-- =============================================

USE Boutique_Iyabonz;
GO

CREATE TABLE CATEGORIE (
    id_categorie INT PRIMARY KEY,
    nom_categorie VARCHAR(100)
);
GO

CREATE TABLE PRODUIT (
    id_produit INT PRIMARY KEY,
    nom_produit VARCHAR(100),
    prix DECIMAL(10,2),
    stock INT,
    id_categorie INT FOREIGN KEY REFERENCES CATEGORIE(id_categorie)
);
GO

CREATE TABLE CLIENT (
    id_client INT PRIMARY KEY,
    nom_client VARCHAR(100),
    telephone VARCHAR(20)
);
GO

CREATE TABLE COMMANDE (
    id_commande INT PRIMARY KEY,
    date_commande DATE,
    id_client INT FOREIGN KEY REFERENCES CLIENT(id_client)
);
GO

CREATE TABLE LIGNE_COMMANDE (
    id_ligne INT PRIMARY KEY,
    id_commande INT FOREIGN KEY REFERENCES COMMANDE(id_commande),
    id_produit INT FOREIGN KEY REFERENCES PRODUIT(id_produit),
    quantite INT
);
GO