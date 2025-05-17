CREATE DATABASE GestionEntreprise;
USE GestionEntreprise;
CREATE TABLE etat (
    idEtat INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL UNIQUE,
    type ENUM('Fédéral', 'Républicain', 'Monarchique') NOT NULL,
    pays VARCHAR(50) NOT NULL,
    budget DECIMAL(15,2) CHECK (budget >= 0),
    politique_economique TEXT,
    impots DECIMAL(15,2),
    CONSTRAINT PK_Etat PRIMARY KEY (idEtat)
);

CREATE TABLE Compagnie (
    idCompagnie INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL UNIQUE,
    adresse VARCHAR(255) NOT NULL,
    telephone VARCHAR(20) UNIQUE,
    email VARCHAR(100) UNIQUE CHECK (email LIKE '%@%'),
    idEtat INT NOT NULL,
    CONSTRAINT PK_Compagnie PRIMARY KEY (idCompagnie),
    CONSTRAINT FK_Compagnie_Etat FOREIGN KEY (idEtat) 
        REFERENCES Etat(idEtat) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE Employe (
    idEmploye INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    poste ENUM('RH', 'Livreur', 'Technicien', 'Agent Financier') NOT NULL,
    salaire DECIMAL(10,2) CHECK (salaire > 0),
    idCompagnie INT NOT NULL,
    CONSTRAINT PK_Employe PRIMARY KEY (idEmploye),
    CONSTRAINT FK_Employe_Compagnie FOREIGN KEY (idCompagnie) 
        REFERENCES Compagnie(idCompagnie) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE RH (
    idEmploye INT NOT NULL,
    responsabilites TEXT NOT NULL,
    CONSTRAINT PK_RH PRIMARY KEY (idEmploye),
    CONSTRAINT FK_RH_Employe FOREIGN KEY (idEmploye) 
        REFERENCES Employe(idEmploye) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Livreur (
    idEmploye INT NOT NULL,
    vehicule VARCHAR(50) NOT NULL,
    zone_de_livraison VARCHAR(100) NOT NULL,
    CONSTRAINT PK_Livreur PRIMARY KEY (idEmploye),
    CONSTRAINT FK_Livreur_Employe FOREIGN KEY (idEmploye) 
        REFERENCES Employe(idEmploye) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Technicien (
    idEmploye INT NOT NULL,
    specialite VARCHAR(100) NOT NULL,
    niveau_competence ENUM('Débutant', 'Intermédiaire', 'Expert') NOT NULL,
    CONSTRAINT PK_Technicien PRIMARY KEY (idEmploye),
    CONSTRAINT FK_Technicien_Employe FOREIGN KEY (idEmploye) 
        REFERENCES Employe(idEmploye) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE AgentFinancier (
    idEmploye INT NOT NULL,
    domaine VARCHAR(100) NOT NULL,
    budget_gere DECIMAL(15,2) CHECK (budget_gere >= 0),
    CONSTRAINT PK_AgentFinancier PRIMARY KEY (idEmploye),
    CONSTRAINT FK_AgentFinancier_Employe FOREIGN KEY (idEmploye) 
        REFERENCES Employe(idEmploye) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE Produit (
    idProduit INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    description TEXT,
    prix DECIMAL(10,2) NOT NULL CHECK (prix >= 0),
    idCompagnie INT NOT NULL,
    stock int,
    CONSTRAINT PK_Produit PRIMARY KEY (idProduit),
    CONSTRAINT FK_Produit_Compagnie FOREIGN KEY (idCompagnie) 
        REFERENCES Compagnie(idCompagnie) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE Assurance (
    idAssurance INT NOT NULL AUTO_INCREMENT,
    type ENUM('Produit', 'Employé') NOT NULL,
    couverture TEXT NOT NULL,
    cout DECIMAL(10,2) NOT NULL CHECK (cout >= 0),
    idCompagnie INT NOT NULL,
    CONSTRAINT PK_Assurance PRIMARY KEY (idAssurance),
    CONSTRAINT FK_Assurance_Compagnie FOREIGN KEY (idCompagnie) 
        REFERENCES Compagnie(idCompagnie) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE Client (
    idClient INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    telephone VARCHAR(20) UNIQUE,
    email VARCHAR(100) UNIQUE CHECK (email LIKE '%@%'),
    CONSTRAINT PK_Client PRIMARY KEY (idClient)
);
CREATE TABLE Commande (
    idCommande INT NOT NULL AUTO_INCREMENT,
    dateCommande DATE NOT NULL,
    statut ENUM('En cours', 'Livrée', 'Annulée') NOT NULL DEFAULT 'En cours',
    idClient INT NOT NULL,
    idCompagnie INT NOT NULL,
    CONSTRAINT PK_Commande PRIMARY KEY (idCommande),
    CONSTRAINT FK_Commande_Client FOREIGN KEY (idClient) 
        REFERENCES Client(idClient) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_Commande_Compagnie FOREIGN KEY (idCompagnie) 
        REFERENCES Compagnie(idCompagnie) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE LigneCommande (
    idLigneCommande INT NOT NULL AUTO_INCREMENT,
    idCommande INT NOT NULL,
    idProduit INT NOT NULL,
    quantite INT NOT NULL CHECK (quantite > 0),
    prixUnitaire DECIMAL(10,2) NOT NULL CHECK (prixUnitaire >= 0),
    CONSTRAINT PK_LigneCommande PRIMARY KEY (idLigneCommande),
    CONSTRAINT FK_LigneCommande_Commande FOREIGN KEY (idCommande) 
        REFERENCES Commande(idCommande) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_LigneCommande_Produit FOREIGN KEY (idProduit) 
        REFERENCES Produit(idProduit) ON DELETE CASCADE ON UPDATE CASCADE
);

alter table lignecommande
add column id_livreur int ;

alter table lignecommande 
add constraint fk_livreur foreign key(id_livreur) references livreur(idEmploye)
use
 select * from commande;
 