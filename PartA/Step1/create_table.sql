create table Chercheur(
    NSS         int          not null       primary key,
    Nom         varchar(255) null,
    dateNaiss   date         null,
    nationalite varchar(255) null
);


create table Produit(
    Nprod     int auto_increment        primary key,
    nomProd   varchar(255) null,
    prix      int          null,
    categorie varchar(255) null
);

create table Brevet(
    Nbrev    int auto_increment         primary key,
    intitule varchar(255) null,
    date     date         null,
    pays     varchar(255) null
);

create table Invention(
    Nbrev int not null,
    Nprod int not null,
    primary key (Nbrev, Nprod),
    constraint Invention_Brevet_Nbrev_fk
        foreign key (Nbrev) references Brevet (Nbrev),
    constraint Invention_Produit_Nprod_fk
        foreign key (Nprod) references Produit (Nprod)
);

create table Proprietaire(
    Nbrev int not null,
    NSS   int not null,
    primary key (Nbrev, NSS),
    constraint Proprietaire_Brevet_Nbrev_fk
        foreign key (Nbrev) references Brevet (Nbrev),
    constraint Proprietaire_Chercheur_NSS_fk
        foreign key (NSS) references Chercheur (NSS)
);

