CREATE DATABASE LSQL
use LSQL
CREATE TABLE TIPOSAUTOMOTORES(
auttipo int primary key, 
autnombre varchar
);
CREATE TABLE AUTOMOTORES(
autoplaca varchar primary key ,
automarca varchar (30) ,
autotipo int foreign key (autotipo) references TIPOSAUTOMOTORES(auttipo),
automodelo int ,
autopasajeros int ,
autocilindraje int ,
autonumchasis varchar (20),
);
CREATE TABLE ASEGURAMIENTO(
asecodigo int  primary key,
asefechainicio date,
asefechaexpiracion date,
asevalorasegurado int,
aseestado varchar,
asecosto int,
aseplaca varchar foreign key (aseplaca) references AUTOMOTORES(autoplaca),
);
CREATE TABLE INCIDENTES(
incicodigo int primary key,
incifecha date,
inciplaca varchar,
incilugar varchar (30),
inciantheridos int, 
incicanfatalidades int, 
incicanautosinvolucrados int,  
foreign key (inciplaca) references AUTOMOTORES(autoplaca)
);
insert into TIPOSAUTOMOTORES(auttipo, autnombre)
values 
('1', 'Automóviles'),
('2', 'Camperos'),
('3', 'Camiones')

insert into AUTOMOTORES(autoplaca, automarca, autotipo, automodelo, autopasajeros, autocilindraje, autonumchasis)
values
('FLL420', 'Chevrolet corsa', '1', '2003', '5', '1400', 'wywzzz167kk009d25'),
('DKZ820', 'Renault stepway', '1', '2008', '5', '1600', 'wywwzz157kk009d45'),
('KJG920', 'Kia sportage', '2', '2009', '7', '2000', 'wywzzz157kk09d25')

insert into ASEGURAMIENTO(asecodigo, asefechainicio, asefechaexpiracion, asevalorasegurado, aseestado, asecosto, aseplaca)
values 
('1', '2012-09-30', '2013-09-30','30000000', 'Vigente', '500000', 'FLL420'),
('2', '2012-09-27', '2013-09-27', '35000000', 'Vigente', '600000', 'DKZ820'),
('3', '2011-09-28', '2012-09-28', '50000000', 'Vigente', '800000', 'KJQ920')

insert into INCIDENTES(incicodigo, incifecha, inciplaca, incilugar, inciantheridos, incicanfatalidades, incicanautosinvolucrados)
values
('1', '2012-09-30', 'DKZ820', 'Bucaramanga', '0', '0', '2'),
('2', '2012-09-27', 'FLL420', 'Giron', '1', '0', '1'),
('3', '2011-09-28', 'FLL420', 'Bucaramanga', '1', '0', '2')