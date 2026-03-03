CREATE DATABASE ikeo_non_normalise;
USE ikeo_non_normalise;

CREATE TABLE commande_globale (
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- Informations commande
    numero_commande VARCHAR(50),
    date_commande DATE,
    statut_commande VARCHAR(50),
    montant_total DECIMAL(10,2),

    -- Informations client (répétées à chaque ligne)
    nom_client VARCHAR(100),
    prenom_client VARCHAR(100),
    email_client VARCHAR(150),
    telephone_client VARCHAR(20),
    adresse_client VARCHAR(255),
    ville_client VARCHAR(100),
    code_postal_client VARCHAR(10),

    -- Informations produit (répétées)
    nom_produit VARCHAR(100),
    description_produit TEXT,
    prix_unitaire DECIMAL(10,2),
    categorie_produit VARCHAR(100),

    -- Fournisseur du produit
    nom_fournisseur VARCHAR(100),
    telephone_fournisseur VARCHAR(20),
    pays_fournisseur VARCHAR(100),

    -- Magasin
    nom_magasin VARCHAR(100),
    ville_magasin VARCHAR(100),
    responsable_magasin VARCHAR(100),

    -- Détails ligne commande
    quantite INT,
    prix_ligne DECIMAL(10,2)
);
