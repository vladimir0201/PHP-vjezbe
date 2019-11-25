drop database if exists dlmodul;
create database dlmodul default character set utf8;
use dlmodul;
create table polaznik(
sifra       int not null primary key auto_increment,
pasword     varchar(50) not null,
ime         varchar(25) not null,
prezime     varchar(25) not null,
oibtvrtke   int,
oibpolaznika int,
edukacija   varchar(100),
video       varchar(150),
pisani      varchar(150),
emailtvrtke varchar(150),
emailpolaznika varchar(150),
narucitelj varchar(150),
telefon     int not null,
spoznaja    varchar(150),
statusp     boolean,
tvrtka      varchar(150),
adresatvrtke varchar(150),
adresapolaznika varchar(150),
uspjesnost boolean
);

create table edukacija(
    sifra int not null primary key auto_increment,
    vrsta varchar(50) not null,
    naziv  varchar(50) not null,
    sati int,
    cijena int,
    vrijediod datetime,
    vrijedido datetime,
    mjesto varchar(50) not null,
    brojpolaznika int,
    video varchar(150),
    pisani varchar(150)
);

create table video(
    sifra int not null primary key auto_increment,
    naziv varchar(150) not null,
    link varchar(150) not null,
    statusv boolean,
    sifrav varchar(10) not null,
    vrijediod datetime,
    vrijedido datetime
);

create table pisani(
    sifra int not null primary key auto_increment,
    naziv varchar(150) not null,
    hiperveza varchar(150) not null,
    statusv boolean,
    sifrap varchar(10) not null,
    vrijediod datetime,
    vrijedido datetime
); 

create table edukacijapolaznik(
    edukacija int,
    polaznik INT
);

create table videoedukacija(
    edukacija int,
    video INT
);

create table videopolaznik(
    polaznik int,
    video INT
);

create table pisanipolaznik(
    polaznik int,
    pisani INT
);

alter table edukacijapolaznik add foreign key (edukacija) references edukacija(sifra);
alter table edukacijapolaznik add foreign key (polaznik) references polaznik(sifra);
alter table videoedukacija add foreign key (edukacija) references edukacija(sifra);
alter table videoedukacija add foreign key (video) references video(sifra);
alter table videopolaznik add foreign key (video) references video(sifra);
alter table videopolaznik add foreign key (polaznik) references polaznik(sifra);
alter table pisanipolaznik add foreign key (pisani) references pisani(sifra);
alter table pisanipolaznik add foreign key (polaznik) references polaznik(sifra);

insert into edukacija (sifra,vrsta,naziv,sati,vrijediod,vrijedido,mjesto,brojpolaznika,video,pisani)
values (null,'seminar','Osnove marketinga',8,'2019-12-15 08:00:00','2019-12-15 15:00:00','Zagreb',15,null,null);

insert into edukacija (sifra,vrsta,naziv,sati,vrijediod,vrijedido,mjesto,brojpolaznika,video,pisani)
values (null,'akademija','Holistčki marketing',50,'2019-12-15 08:00:00','2019-12-15 15:00:00','Rijeka',15,'Prvi modul',null);

insert into edukacija (sifra,vrsta,naziv,sati,vrijediod,vrijedido,mjesto,brojpolaznika,video,pisani)
values (null,'jednodnevna edukacija','Troškovno računovodstvo',8,'2019-12-15 08:00:00','2019-12-15 15:00:00','Split',15,null,null);



