
PROJET : Boutique_Iyabonz
GESTION DES DROITS D'ACCÈS - SQL SERVER


AUTEUR : Iyabonz
DATE : 25/11/2026
OUTIL : SQL Server Management Studio (SSMS)
SERVEUR : localhost\SQLEXPRESS
BASE : Boutique_Iyabonz

1. CONTENU DU DOSSIER

01_Creer_Base.sql
02_Creer_Tables.sql
03_Inserer_Donnees.sql
04_Requetes_Metier.sql
05_Creer_Logins.sql
06_Creer_Users.sql
07_Gerer_Droits.sql
08_Verifier_Utilisateurs.sql
09_Verifier_Droits.sql
10_Verifier_Mode_Auth.sql
11_Tester_Droits_Vendeur.sql
12_Tester_Droits_Gerant.sql

2. LES 5 TABLES

- CATEGORIE
- PRODUIT
- CLIENT
- COMMANDE
- LIGNE_COMMANDE

3. LES UTILISATEURS

ADMIN :
Login : IYA\lyabo
Authentification : Windows
Droits : Peut tout faire sur le serveur (CREATE DATABASE)

VENDEUR :
Login : vendeur1
Mot de passe : 123456
Droits : SELECT uniquement sur les 5 tables
         DENY INSERT, UPDATE, DELETE

GÉRANT :
Login : gerant1
Mot de passe : gerant123
Droits : SELECT, INSERT, UPDATE, DELETE sur les 5 tables

4. ORDRE D'EXÉCUTION (TRÈS IMPORTANT)

Étape 1 : Se connecter en ADMIN (IYA\lyabo)
          Exécuter 01 à 06 dans l'ordre.
          Ne jamais sauter un fichier.

Étape 2 : Toujours en ADMIN
          Exécuter 07_Gerer_Droits.sql
          Exécuter 08, 09, 10 pour vérifier.

Étape 3 : Se déconnecter de l'ADMIN
          Se reconnecter en vendeur1 / 123456
          Exécuter 11_Tester_Droits_Vendeur.sql
          Résultat attendu : SEUL SELECT marche,
          INSERT / UPDATE / DELETE = Erreur refusée

Étape 4 : Se déconnecter de vendeur1
          Se reconnecter en gerant1 / gerant123
          Exécuter 12_Tester_Droits_Gerant.sql
          Résultat attendu : TOUT marche, aucune erreur.

5. RÈGLES EN ENTREPRISE

- Ne jamais tester les droits en étant connecté en ADMIN.
- Ne jamais exécuter 01_Creer_Base en PROD, la base existe déjà.
- Toujours faire un BACKUP avant de modifier les droits.
- En entreprise, ce dossier est versionné avec Git.

FIN DU README
