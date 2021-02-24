/* CREAR BASE DE DATOS*/
create database ServiciosMentales;

/* USAR BASE DE DATOS CREADA */
use ServiciosMentales;

/* CREAR TABLA APODERADO */
CREATE TABLE Apoderado(
	idApoderado int auto_increment PRIMARY KEY,
	apoNombres varchar(100) NOT NULL,
	apoApellidos varchar(100) NOT NULL,
	apoUsuario varchar(50) NOT NULL UNIQUE,
	apoPasswd varchar(200) NOT NULL UNIQUE,
	apoCel varchar(50) UNIQUE,
	apoCelEmergencia varchar(50) UNIQUE,
	apoCorreo varchar(100) UNIQUE,
    apoEstadoCuenta char(1),
	idPaciente int default 0
);



DROP TABLE Apoderado;

ALTER TABLE Apoderado CHANGE apoCel apoCel varchar(50) UNIQUE;

CREATE TABLE Anuncio(
	idAnuncio int auto_increment PRIMARY KEY,
	anuTitulo varchar(100) NOT NULL,
	anuDescripcion varchar(200) NOT NULL,
	anuTipo varchar(50) NOT NULL,
    anuEstado varchar(50),
	idAdministrador int
);

select * from Anuncio
drop table Anuncio

UPDATE Anuncio set anuTitulo = 'F', anuDescripcion = 'FF', anuEstado = 'v' where idAnuncio = 7
UPDATE Anuncio set anuTitulo = '231456897', anuDescripcion = '456789231',anuEstado='' where idAnuncio = 3

create table Paciente(
    idPaciente int primary key auto_increment,
    pacNombres varchar(100) ,
    pacApellidos varchar(100) ,
    pacDNI char(8) unique,
    pacFechaNac date ,
    pacSexo varchar(50),
    pacDireccion varchar(200) ,
    pacReligion varchar(50) ,
    pacEstadoCivil varchar(50) ,
    pacNivelAcademico varchar(50) 
);

drop table Paciente

select * from Paciente




insert into Anuncio values (default,'Titulo 1', 'Descripion 1','Novedad','v',1);
insert into Anuncio values (default,'Titulo 2', 'Descripion 2','Novedad','v',1);
insert into Anuncio values (default,'Titulo 3', 'Descripion 3','Anuncio','v',1);
insert into Anuncio values (default,'Eren vs Colosal', 'SNK','Anuncio','v',1);
insert into Anuncio values (default,'Titulo 4', 'Descripion 4','Novedad','o',1);
insert into Anuncio values (default,'Consultas', 'Oferta 4','Novedad','o',1);
insert into Anuncio values (default,'Goku vs Vegeta', 'En Disneylandia','Novedad','o',1);

select * from Anuncio where anuTipo = 'Novedad' and anuEstado = 'v'

INSERT INTO Apoderado VALUES(default,'Miguel','Aliaga Chacon','miguel98','miguel98',
'+51 9852741963','+51 987456321',"miguel98@gmail.com","A",null)


INSERT INTO Apoderado (apoNombres, apoApellidos, apoUsuario, apoPasswd, apoCel, apoCelEmergencia,apoCorreo,apoEstadoCuenta) VALUES('Kill','Chacon','bill','bill',
'+51 985271253','+51 987669321',"bill98@gmail.com","A")


INSERT INTO Apoderado (apoNombres, apoApellidos, apoUsuario, apoPasswd, apoEstadoCuenta) VALUES('Kill','Chacon','bill','bill',"A")

select * from Apoderado

select * from Apoderado where idApoderado=3


select count(*) as find from Apoderado where apoUsuario='code' and apoPasswd='code'

insert into Paciente VALUES(default,'Victor Steven', 'Chavez Quispe','12587493','1998-10-11','M','Jr. xsas #666','Cristiano','Soltero','Secundaria completa');

select idPaciente from Apoderado where apoUsuario='code';

UPDATE Apoderado set apoCel = '231456897', apoCelEmergencia = '456789231', apoCorreo='qwaeqwe@asdqwe.com', idPaciente=1 where idApoderado=1;

select * from Paciente

select * from Paciente where pacDNI = '78199102'

select * from Paciente where idPaciente = (select idPaciente from Cita where idCita = 14)

select idPaciente from Apoderado where apoUsuario = 'code'

update Paciente set pacNombres='', pacApellidos='', pacDNI='',pacFechaNac='', pacSexo='',
pacDireccion='',pacReligion='',pacEstadoCivil='',pacNivelAcademico='' where 

select * join 

SELECT *
FROM Paciente p
INNER JOIN Apoderado a
ON p.idPaciente = a.idPaciente

UPDATE Paciente p
        INNER JOIN
    Apoderado a ON p.idPaciente = a.idPaciente
SET 
p.pacNombres='Luis', p.pacApellidos='Ye', p.pacDNI='78199101',p.pacFechaNac='2021-12-02', p.pacSexo='FE',
p.pacDireccion='AV',p.pacReligion='D',p.pacEstadoCivil='D',p.pacNivelAcademico='D',a.apoCel='123456',a.apoCelEmergencia='987',a.apoCorreo='yordym.200@com'
WHERE a.idApoderado=1

CREATE TABLE Cita(
    idCita int auto_increment PRIMARY KEY,
    citMotivo varchar(200) ,
    citFecha date ,
    citEstado varchar(50) ,
    citMontoTotal decimal(8, 2) ,
    idDoctor int ,
    idPaciente int ,
    citHorario varchar(50) 
);

drop table Cita


select * from Paciente

select * from Cita

select * from Profesional

select * from Profesional where idProfesional = (select idCita from Cita where idPaciente = 7)

SELECT idCita,proNombres,citFecha,citHorario,citMotivo,citEstado
FROM Profesional 
INNER JOIN Cita 
ON 1 = Cita.idCita 

select 
idCita,
(select proNombres from Profesional where idProfesional=idDoctor) as proNombres,
citFecha,citHorario,citMotivo,citEstado
from Cita where idPaciente = 7


insert into Cita(citFecha,citHorario,citMotivo,citEstado) values('2000-01-01','03:00 PM - 05:00 PM','Consulta','Reservado');
insert into Cita(citFecha,citHorario,citMotivo,citEstado) values('2000-01-01','03:00 PM - 05:00 PM','Consulta','Reservado N');
insert into Cita(citFecha,citHorario,citMotivo,citEstado) values('2000-01-01','03:00 PM - 05:00 PM','Consulta','Atendido');


insert into Cita(citMotivo,citFecha,citEstado,citEstado,idDoctor) values('2000-01-01','03:00 PM - 05:00 PM','Consulta','Atendido');

select * from Cita where idPaciente = 7
(select idDoctor from Cita where idPaciente = 7)



update Cita set idDoctor = 1 where idCita=1

update Cita set idDoctor = 1 where idCita=1

select * from Cita where idDoctor = 1 and citEstado!='Reservado N'

select * from Cita where idDoctor = 1

select * from Cita




insert into Cita(citMotivo,citFecha,citEstado,idDoctor,idPaciente,citHorario) values('Consulta','2000-01-01','Reservado',1,7,'03:00 PM - 05:00 PM');


CREATE TABLE Administrador(
	idAdministrador int auto_increment PRIMARY KEY,
	admUsuario varchar(50) NOT NULL UNIQUE,
	admPasswd varchar(200) NOT NULL UNIQUE
);

insert into Administrador VALUES(default,'admin','admin');
insert into Administrador VALUES(default,'qweqwe','qweqwe');

drop table Administrador

select * from Administrador;

select count(*) from Administrador where admUsuario='admin' and admPasswd='admin';

select * from Administrador where admUsuario='admin';


CREATE TABLE Profesional(
	idProfesional int auto_increment PRIMARY KEY,
    proNombres varchar(100) not null,
    proApellidos varchar(100) not null,
    proFechaNac date not null,
    proDNI char(8) not null unique,
    proSexo varchar(20) not null,
    proDireccion varchar(100) not null,
    proCorreo varchar(100) not null unique,
    proCel varchar(100) not null,
    proUsuario varchar(100) not null unique,
    proPasswd varchar(200) not null unique,
    proCMP varchar(100) not null unique,
    proEstadoCuenta varchar(20) not null
);

DROP TABLE Profesional

insert into Profesional VALUES(default,'Frank','Frank','1998-11-10','12366678','M','Jr. unjiron #666','uncorreo@gmail.com','951741852','frank','frank','123123','A');

select * from Profesional;

select count(*) from Profesional where proUsuario='frank' and proPasswd='frank'

select * from Profesional where proUsuario='frank'



CREATE TABLE Trabajador(
	idTrabajador int auto_increment PRIMARY KEY,
	traNombres varchar(100) not null,
	traApellidos varchar(100) Not null,
	traDNI char(8) not null,
	traFechaNac date Not null,
	traSexo varchar(20) not null,
	traDireccion varchar(200) not NULL,
	traCorreo varchar(100) not NULL unique,
	traCel varchar(50) NOT NULL UNIQUE,
	traUsuario varchar(50) UNIQUE NOT NULL,
	traPasswd varchar(200) NOT NULL,
	traEstadoCuenta varchar(20) NOT NULL
);

DROP TABLE Trabajador

insert into Trabajador VALUES(default,'Fredo','Godofredo','12345678','1998-11-10','M','Jr. unjiron #666','uncorreo@gmail.com','951741852','fredo','fredo','A');

select * from Trabajador;





select count(*) from Trabajador where traUsuario='%s' and traPasswd='%s';

select * from Trabajador 
    
    
CREATE TABLE Historia(
    idHistoria int auto_increment PRIMARY KEY,
    hisMotivo varchar(200),
    idCita int,
    hisObservacion varchar(200),
    hisDescripcion varchar(200),
    hisExamenes varchar(200),
    hisDiagnostico varchar(200),
    hisTratamiento varchar(200) 
);

DROP TABLE Historia

insert into Historia values(default,'No sé',1,'Ni idea','Ni idea','NULL','NO se','F')

select * from Historia

CREATE TABLE Pago(
	idPago int auto_increment PRIMARY KEY,
	idCita int NULL,
	pagEstado varchar(50) NULL,
	pagImagen varchar(50) NULL,
	idCajero int NULL,
	pagFecha date NULL
);

DROP TABLE PAGO

insert into Pago values(default,1,"Pendiente","C//Image.png",0,'1998-11-10')
select * from Pago

CREATE TABLE DetallePago(
    idDetallePago int auto_increment PRIMARY KEY,
    idCita int NULL,
    detServicio varchar(100) NULL,
    detMonto int NULL
);

DROP table DetallePago

insert into DetallePago values(default,1,"Consulta",100)

select * from DetallePago 
select * from Cita 

select idCita from Cita order by idCita desc limit 1;
 
 
select idCita from Cita order by idCita desc limit 1;

select * from DetallePago where idCita = 13

select * from Cita

select 
Pago.idCita ,pacNombres,pacApellidos,pacDni,pagFecha,citHorario,citMotivo,pagEstado
 from Pago join Cita on Pago.idCita = Cita.idCita join Paciente on Cita.idPaciente=Paciente.idPaciente


select * from Paciente

select * from Pago where idPago = 1

select * from Pago join Cita on Pago.idCita = Cita.idCita join Paciente on Cita.idPaciente=Paciente.idPaciente join DetallePago on DetallePago.idCita=Cita.idCita

select * from Cita join Paciente on Cita.idPaciente = Paciente.idPaciente where Cita.idCita = 2

select * from Paciente where idPaciente = (select idPaciente from Cita where idCita = 2)

update Cita set citEstado = 'Confirmado' where idCita=