CREATE DATABASE ikeo_bad;
USE ikeo_bad;

CREATE TABLE commande_generale (

    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Données client (répétées à chaque commande)
    nomClient VARCHAR(50),
    prenomClient VARCHAR(50),
    dateNaissanceClient DATE,
    telephoneClient VARCHAR(20),
    mailClient VARCHAR(50),
    adresseClient VARCHAR(255),
    pointFidelite INT,

    -- Données employé (répétées)
    nomEmploye VARCHAR(50),
    prenomEmploye VARCHAR(50),
    salaireEmploye DECIMAL(10,2),

    -- Données produit (répétées)
    nomProduit VARCHAR(100),
    rayonProduit VARCHAR(50),   -- texte au lieu d’une table
    fournisseurProduit VARCHAR(50),
    telephoneFournisseur VARCHAR(20),
    prixUnitaire DECIMAL(10,2),
    stockActuel INT,

    -- Données transporteur (répétées)
    nomTransporteur VARCHAR(50),
    telephoneTransporteur VARCHAR(20),

    -- Données commande
    quantite INT,
    prixTotal DECIMAL(10,2),
    dateCommande VARCHAR(50)  -- volontairement mauvais type
);
