insert into Chercheur (NSS, Nom, dateNaiss, nationalite) VALUES (394662471,'Gaspar','2003/10/28','Portugaise');
insert into Chercheur (NSS, Nom, dateNaiss, nationalite) VALUES (602098422,'Lefebvre','2003/10/27','Française');
insert into Chercheur (NSS, Nom, dateNaiss, nationalite) VALUES (367814774,'Dumoulin','2003/6/7','Française');
insert into Chercheur (NSS, Nom, dateNaiss, nationalite) VALUES (941042869,'Petiot','2003/9/15','Française');

INSERT INTO Produit (Nprod, nomProd, prix, categorie) VALUES (1, 'lit', 500, 'meuble');
INSERT INTO Produit (Nprod, nomProd, prix, categorie) VALUES (2, 'lampe', 129, 'éclairage');
INSERT INTO Produit (Nprod, nomProd, prix, categorie) VALUES (3, 'bureau', 299, 'meuble');
INSERT INTO Produit (Nprod, nomProd, prix, categorie) VALUES (4, 'TV', 799, 'électronique');
INSERT INTO Produit (Nprod, nomProd, prix, categorie) VALUES (5, 'peluche', 19, 'cosmétique');

INSERT INTO Brevet (Nbrev, intitule, date, pays) VALUES (1, 'Brevet1', '2020-11-05', 'Etats-Unis');
INSERT INTO Brevet (Nbrev, intitule, date, pays) VALUES (2, 'Brevet2', '2020-12-04', 'Belgique');
INSERT INTO Brevet (Nbrev, intitule, date, pays) VALUES (3, 'Brevet3', '2020-09-03', 'Norvège');
INSERT INTO Brevet (Nbrev, intitule, date, pays) VALUES (4, 'Brevet4', '2020-08-02', 'Maroc');
INSERT INTO Brevet (Nbrev, intitule, date, pays) VALUES (5, 'Brevet5', '2020-07-01', 'France');

INSERT INTO Invention (Nbrev, Nprod) VALUES (1, 3);
INSERT INTO Invention (Nbrev, Nprod) VALUES (2, 5);
INSERT INTO Invention (Nbrev, Nprod) VALUES (3, 1);
INSERT INTO Invention (Nbrev, Nprod) VALUES (4, 2);
INSERT INTO Invention (Nbrev, Nprod) VALUES (5, 4);

INSERT INTO Proprietaire (Nbrev, NSS) VALUES (1, 367814774);
INSERT INTO Proprietaire (Nbrev, NSS) VALUES (2, 394662471);
INSERT INTO Proprietaire (Nbrev, NSS) VALUES (3, 602098422);
INSERT INTO Proprietaire (Nbrev, NSS) VALUES (4, 941042869);
INSERT INTO Proprietaire (Nbrev, NSS) VALUES (5, 925310067);
