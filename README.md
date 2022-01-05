# SQL-Innovative-Products
Description

## Connect to the database
Link : https://phpmyadmin.alwaysdata.com/ <br>
User : 253973_jaffal <br>
Password : jaffal123

## Exercice
### [Part A](https://github.com/CodingFactory-Repos/SQL-Innovative-Products/tree/main/PartA)
#### [Step 1](https://github.com/CodingFactory-Repos/SQL-Innovative-Products/tree/main/PartA/Step1)
##### Table Chercheur
```sql
create table Chercheur(
    NSS         int          not null       primary key,
    Nom         varchar(255) null,
    dateNaiss   date         null,
    nationalite varchar(255) null
);
```

##### Table Produit
```sql
create table Produit(
    Nprod     int auto_increment        primary key,
    nomProd   varchar(255) null,
    prix      int          null,
    categorie varchar(255) null
);
```

##### Table Brevet
```sql
create table Brevet(
    Nbrev    int auto_increment         primary key,
    intitule varchar(255) null,
    date     date         null,
    pays     varchar(255) null
);
```

##### Table Invention
```sql
create table Invention(
    Nbrev int not null,
    Nprod int not null,
    primary key (Nbrev, Nprod),
    constraint Invention_Brevet_Nbrev_fk
        foreign key (Nbrev) references Brevet (Nbrev),
    constraint Invention_Produit_Nprod_fk
        foreign key (Nprod) references Produit (Nprod)
);
```

##### Table Proprietaire
```sql
create table Proprietaire(
    Nbrev int not null,
    NSS   int not null,
    primary key (Nbrev, NSS),
    constraint Proprietaire_Brevet_Nbrev_fk
        foreign key (Nbrev) references Brevet (Nbrev),
    constraint Proprietaire_Chercheur_NSS_fk
        foreign key (NSS) references Chercheur (NSS)
);
```

#### [Step 2](https://github.com/CodingFactory-Repos/SQL-Innovative-Products/tree/main/PartA/Step2)
##### Table Chercheur
```sql
insert into Chercheur (NSS, Nom, dateNaiss, nationalite) VALUES (394662471,'Gaspar','2003/10/28','Portugaise');
insert into Chercheur (NSS, Nom, dateNaiss, nationalite) VALUES (602098422,'Lefebvre','2003/10/27','Française');
insert into Chercheur (NSS, Nom, dateNaiss, nationalite) VALUES (367814774,'Dumoulin','2003/6/7','Française');
insert into Chercheur (NSS, Nom, dateNaiss, nationalite) VALUES (941042869,'Petiot','2003/9/15','Française');
```
