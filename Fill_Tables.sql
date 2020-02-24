
/*Remplissage de la table de caution*/
INSERT INTO Caution
(nbDvd,caution)
VALUES
(1,2);
INSERT INTO Caution
(nbDvd,caution)
VALUES
(2,4);
INSERT INTO Caution
(nbDvd,caution)
VALUES
(3,6);
INSERT INTO Caution
(nbDvd,caution)
VALUES
(4,8);
INSERT INTO Caution
(nbDvd,caution)
VALUES
(5,10);
INSERT INTO Caution
(nbDvd,caution)
VALUES
(6,12);
INSERT INTO Caution
(nbDvd,caution)
VALUES
(7,14);
INSERT INTO Caution
(nbDvd,caution)
VALUES
(8,16);

/* Création des clients*/
INSERT INTO clients(
idClient,prenom,nom,telephone,abonnement,nbEmprunt,caution)
VALUES
('jdoe01','John','Doe','(450) 555-5555', 1,4,(SELECT caution FROM Caution WHERE nbDvd=4));
INSERT INTO clients(
idClient,nom,prenom,telephone,abonnement,nbEmprunt,caution)
VALUES
('bman01','Bat','Man','(450) 555-5554', 1,4,(SELECT caution FROM Caution WHERE nbDvd=4));
INSERT INTO clients(
idClient,nom,prenom,telephone,abonnement,nbEmprunt,caution)
VALUES
('came01','Captain','America','(450) 555-5552', 1,4,(SELECT caution FROM Caution WHERE nbDvd=4));
INSERT INTO clients(
idClient,nom,prenom,telephone,abonnement,nbEmprunt,caution)
VALUES
('sman01','Spider','Man','(450) 555-5551', 1,4,(SELECT caution FROM Caution WHERE nbDvd=4));
INSERT INTO clients(
idClient,nom,prenom,telephone,abonnement,nbEmprunt,caution)
VALUES
('sman02','Super','Man','(450) 555-5550', 1,4,(SELECT caution FROM Caution WHERE nbDvd=4));
INSERT INTO clients(
idClient,nom,prenom,telephone,abonnement,nbEmprunt,caution)
VALUES
('tsta02','Tony','Stark','(450) 555-5549', 1,4,(SELECT caution FROM Caution WHERE nbDvd=4));

/*Création de genres*/

INSERT INTO Genre
(genre,publique)
VALUES
('Horreur','13+');
INSERT INTO Genre
(genre,publique)
VALUES
('Action','13+');
INSERT INTO Genre
(genre,publique)
VALUES
('Comédie','G');
INSERT INTO Genre
(genre,publique)
VALUES
('Animation','G');
INSERT INTO Genre
(genre,publique)
VALUES
('Adulte','18+');
INSERT INTO Genre
(genre,publique)
VALUES
('Thriller','8+');

/*Création d'acteurs*/
INSERT INTO Acteur
(idActeur,prenom,nom)
VALUES
('apac01','Al','Paccino');
INSERT INTO Acteur
(idActeur,prenom,nom)
VALUES
('ncag01','Nicolas','Cage');
INSERT INTO Acteur
(idActeur,prenom,nom)
VALUES
('rren01','Ryan','Reynolds');
INSERT INTO Acteur
(idActeur,prenom,nom)
VALUES
('rgos01','Ryan','Gosling');
INSERT INTO Acteur
(idActeur,prenom,nom)
VALUES
('jani01','Jennifer','Aniston');

/*Création de réalisateur*/
INSERT INTO Realisateur
(idRealisateur,prenom,nom)
VALUES
('qtar01','Quentin','Tarantino');
INSERT INTO Realisateur
(idRealisateur,prenom,nom)
VALUES
('sspi01','Steven','Spielberg');
INSERT INTO Realisateur
(idRealisateur,prenom,nom)
VALUES
('ceas01','Clint','Eastwood');
INSERT INTO Realisateur
(idRealisateur,prenom,nom)
VALUES
('ahit01','Alfred','Hitchcock');
INSERT INTO Realisateur
(idRealisateur,prenom,nom)
VALUES
('gluc01','George','Lucas');

/*Création de adresses clients*/
INSERT INTO adresse
(noCivil,rue,ville,codePostal,idClient)
VALUES
(222,'Rue Sherbrook','Montréal','H5N 4RT',(SELECT idClient FROM Clients WHERE(idClient='jdoe01')));
INSERT INTO adresse
(noCivil,rue,ville,codePostal,idClient)
VALUES
(223,'Rue Papineau','Montréal','H6N 4RT',(SELECT idClient FROM Clients WHERE(idClient='bman01')));
INSERT INTO adresse
(noCivil,rue,ville,codePostal,idClient)
VALUES
(2212,'Rue Repentigny','Montréal','F6H 4RT',(SELECT idClient FROM Clients WHERE(idClient='came01')));
INSERT INTO adresse
(noCivil,rue,ville,codePostal,idClient)
VALUES
(2,'Avenue Papillon','Saint Nul-Part','O0O 0O0',(SELECT idClient FROM Clients WHERE(idClient='sman01')));
INSERT INTO adresse
(noCivil,rue,ville,codePostal,idClient)
VALUES
(666,'Boul. Styx','Chambly','G6Q 2B5',(SELECT idClient FROM Clients WHERE(idClient='sman02')));
INSERT INTO adresse
(noCivil,rue,ville,codePostal,idClient)
VALUES
(123525463,'Rue Petite','Saint Clinclin','L1L 1L1',(SELECT idClient FROM Clients WHERE(idClient='tsta02')));

/*Création des boutique*/
INSERT INTO Boutique
(idBoutique,telephone)
VALUES
('bout001','(514) 555-0096');
INSERT INTO Boutique
(idBoutique,telephone)
VALUES
('bout002','(514) 555-0094');
INSERT INTO Boutique
(idBoutique,telephone)
VALUES
('bout003','(514) 555-0092');
INSERT INTO Boutique
(idBoutique,telephone)
VALUES
('bout004','(514) 555-0091');
INSERT INTO Boutique
(idBoutique,telephone)
VALUES
('bout005','(514) 555-0036');


/*Création adresse boutique*/
INSERT INTO adresse
(noCivil,rue,ville,codePostal,idBoutique)
VALUES
(1,'Rue St-Antoine','Montréal','H1N 2RT',(SELECT idBoutique FROM Boutique WHERE(idBoutique='bout001')));
INSERT INTO adresse
(noCivil,rue,ville,codePostal,idBoutique)
VALUES
(1234,'Rue Perdue','Kekpart','H1N 1RT',(SELECT idBoutique FROM Boutique WHERE(idBoutique='bout002')));
INSERT INTO adresse
(noCivil,rue,ville,codePostal,idBoutique)
VALUES
(4321,'Rue Plindtrou','Montréal','R7Q 3G6',(SELECT idBoutique FROM Boutique WHERE(idBoutique='bout003')));
INSERT INTO adresse
(noCivil,rue,ville,codePostal,idBoutique)
VALUES
(5646,'Rue Sherbrook','Montréal','H5N 5F6',(SELECT idBoutique FROM Boutique WHERE(idBoutique='bout004')));
INSERT INTO adresse
(noCivil,rue,ville,codePostal,idBoutique)
VALUES
(846,'Rue Ste-Catherine','Montréal','8W9 5S4',(SELECT idBoutique FROM Boutique WHERE(idBoutique='bout005')));

/*Création de films*/
INSERT INTO film
(nom,duree,genre,idRealisateur)
VALUES
('Spiderman',126,(SELECT genre FROM Genre WHERE (genre='Action')),(SELECT idRealisateur FROM Realisateur WHERE(idRealisateur='qtar01')));
INSERT INTO film
(nom,duree,genre,idRealisateur)
VALUES
('Batman',132,(SELECT genre FROM Genre WHERE (genre='Action')),(SELECT idRealisateur FROM Realisateur WHERE(idRealisateur='sspi01')));
INSERT INTO film
(nom,duree,genre,idRealisateur)
VALUES
('La Momie',92,(SELECT genre FROM Genre WHERE (genre='Horreur')),(SELECT idRealisateur FROM Realisateur WHERE(idRealisateur='ceas01')));
INSERT INTO film
(nom,duree,genre,idRealisateur)
VALUES
('Détective Pikachu',140,(SELECT genre FROM Genre WHERE (genre='Animation')),(SELECT idRealisateur FROM Realisateur WHERE(idRealisateur='ahit01')));
INSERT INTO film
(nom,duree,genre,idRealisateur)
VALUES
('Ted',86,(SELECT genre FROM Genre WHERE (genre='Comédie')),(SELECT idRealisateur FROM Realisateur WHERE(idRealisateur='gluc01')));


/*Création des DVD*/
INSERT INTO Dvd
(idDvd,nbEmprunte,miseEnService,etat,idBoutique,nom)
VALUES
('spiderman001',0,'2020-05-12','Excellent',(SELECT idBoutique FROM Boutique WHERE(idBoutique='bout001')),(SELECT nom FROM Film WHERE(nom='Spiderman')));
INSERT INTO Dvd
(idDvd,nbEmprunte,miseEnService,etat,idBoutique,nom)
VALUES
('spiderman002',0,'2020-05-12','Excellent',(SELECT idBoutique FROM Boutique WHERE(idBoutique='bout001')),(SELECT nom FROM Film WHERE(nom='Spiderman')));
INSERT INTO Dvd
(idDvd,nbEmprunte,miseEnService,etat,idBoutique,nom)
VALUES
('spiderman003',0,'2020-05-12','Excellent',(SELECT idBoutique FROM Boutique WHERE(idBoutique='bout001')),(SELECT nom FROM Film WHERE(nom='Spiderman')));
INSERT INTO Dvd
(idDvd,nbEmprunte,miseEnService,etat,idBoutique,nom)
VALUES
('spiderman004',0,'2020-05-12','Excellent',(SELECT idBoutique FROM Boutique WHERE(idBoutique='bout001')),(SELECT nom FROM Film WHERE(nom='Spiderman')));
INSERT INTO Dvd
(idDvd,nbEmprunte,miseEnService,etat,idBoutique,nom)
VALUES
('spiderman005',0,'2020-05-12','Excellent',(SELECT idBoutique FROM Boutique WHERE(idBoutique='bout001')),(SELECT nom FROM Film WHERE(nom='Spiderman')));
