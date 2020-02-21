DROP TABLE Film_Acteur;
DROP TABLE Emprunte;
DROP TABLE Dvd;
DROP TABLE Adresse;
DROP TABLE Facture;
DROP TABLE Clients;
DROP TABLE Film;
DROP TABLE Genre;
DROP TABLE Realisateur;
DROP TABLE Acteur;
DROP TABLE Boutique;
DROP TABLE Caution;

CREATE TABLE Caution(
nbDvd INTEGER NOT NULL,
caution INTEGER NOT NULL,
PRIMARY KEY (nbDvd)
);

CREATE TABLE Boutique(
idBoutique varchar(255) NOT NULL,
adresse varchar(255),
telephone varchar(255)NOT NULL,
PRIMARY KEY (idboutique)
);

CREATE TABLE Acteur(
idActeur varchar(255) NOT NULL,
nom varchar(255) NOT NULL,
prenom varchar(255) NOT NULL,
PRIMARY KEY (idActeur)
);

CREATE TABLE Realisateur(
idRealisateur varchar(255) NOT NULL,
nom varchar(255) NOT NULL,
prenom varchar(255) NOT NULL,
PRIMARY KEY (idRealisateur)
);

CREATE TABLE Genre(
genre varchar(255) NOT NULL,
publique varchar(255) NOT NULL,
PRIMARY KEY (genre)
);

CREATE TABLE Film(
nom varchar(255) NOT NULL,
duree INTEGER NOT NULL,
genre varchar(255) NOT NULL,
idRealisateur varchar(255) NOT NULL,
PRIMARY KEY (nom),
FOREIGN KEY(genre) REFERENCES Genre,
FOREIGN KEY (idRealisateur) REFERENCES Realisateur
);

CREATE TABLE Clients(
idClient varchar(255) NOT NULL,
nom varchar(255) NOT NULL,
prenom varchar(255) NOT NULL,
telephone varchar(255) NOT NULL,
abonnement INTEGER NOT NULL,
nbEmprunt INTEGER NOT NULL,
nbDvd INTEGER NOT NULL,
PRIMARY KEY (idClient),
FOREIGN KEY (nbDvd) REFERENCES Caution
);

CREATE TABLE Facture(
idFacture varchar(255) NOT NULL,
dateEmission date NOT NULL,
idClient varchar(255) NOT NULL,
PRIMARY KEY (idFacture),
FOREIGN KEY (idClient) REFERENCES Clients
);

CREATE TABLE Adresse(
noCivil INTEGER NOT NULL,
rue varchar(255) NOT NULL,
ville varchar(255) NOT NULL,
codePostal varchar(255) NOT NULL,
idClient varchar(255) NOT NULL,
FOREIGN KEY (idClient) REFERENCES Clients,
PRIMARY KEY (idClient)
);

CREATE TABLE Dvd(
idDvd varchar(255) NOT NULL,
nbEmprunte INTEGER DEFAULT 0 NOT NULL,
miseEnService date NOT NULL,
etat varchar(255) NOT NULL,
idBoutique varchar(255) NOT NULL,
nom varchar(255) NOT NULL,
PRIMARY KEY (idDvd),
FOREIGN KEY (idBoutique) REFERENCES Boutique,
FOREIGN KEY (nom) REFERENCES Film
);

CREATE TABLE Emprunte (
note real ,
dateRetour date,
dateEmprunt date NOT NULL,
idDvd varchar(255) NOT NULL,
idClient varchar(255) NOT NULL,
FOREIGN KEY (idDvd) REFERENCES Dvd,
FOREIGN KEY (idClient) REFERENCES Clients,
PRIMARY KEY (idDvd, idClient)
);

CREATE TABLE Film_Acteur(
NOM varchar(255) NOT NULL,
idActeur varchar(255) NOT NULL,
FOREIGN KEY (nom) REFERENCES Film,
FOREIGN KEY (idActeur) REFERENCES Acteur,
PRIMARY KEY (nom, idActeur)
);