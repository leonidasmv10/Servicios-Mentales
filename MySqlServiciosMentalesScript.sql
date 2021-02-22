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
    anuEstado char(1) NOT NULL,
	idAdministrador int
);

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

insert into Anuncio values (default,'Titulo 1', 'Descripion 1','Novedad','v',1);
insert into Anuncio values (default,'Titulo 2', 'Descripion 2','Novedad','v',1);
insert into Anuncio values (default,'Titulo 3', 'Descripion 3','Anuncio','v',1);
insert into Anuncio values (default,'Titulo 4', 'Descripion 4','Novedad','o',1);
insert into Anuncio values (default,'Consultas', 'Oferta 4','Novedad','o',1);
insert into Anuncio values (default,'Goku vs Vegeta', 'En Disneylandia','Novedad','o',1);

select * from Anuncio

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

insert into Cita(citFecha,citHorario,citMotivo,citEstado) values('2000-01-01','03:00 PM - 05:00 PM','Consulta','Reservado');
insert into Cita(citFecha,citHorario,citMotivo,citEstado) values('2000-01-01','03:00 PM - 05:00 PM','Consulta','Reservado N');
insert into Cita(citFecha,citHorario,citMotivo,citEstado) values('2000-01-01','03:00 PM - 05:00 PM','Consulta','Atendido');


insert into Cita(citMotivo,citFecha,citEstado,citEstado,idDoctor) values('2000-01-01','03:00 PM - 05:00 PM','Consulta','Atendido');

select * from Cita where idPaciente = 7

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

select * from Administrador;

select count(*) from Administrador where admUsuario='admin' and admPasswd='admin';

select * from Administrador where admUsuario='admin';


CREATE TABLE Profesional(
	idProfesional int auto_increment PRIMARY KEY,
    proNombres varchar(100) not null,
    proApellidos varchar(100) not null,
    proFechaNac date not null,
    proDNI char(8) not null unique,
    proSexo char(1) not null,
    proDireccion varchar(100) not null,
    proCorreo varchar(100) not null unique,
    proCel varchar(100) not null,
    proUsuario varchar(100) not null unique,
    proPasswd varchar(200) not null unique,
    proCMP varchar(100) not null unique,
    proEstadoCuenta char(1) not null
);

insert into Profesional VALUES(default,'Frank','Frank','1998-11-10','12366678','M',
'Jr. unjiron #666','uncorreo@gmail.com','951741852','frank','frank','123123','A');

select * from Profesional;

select count(*) from Profesional where proUsuario='frank' and proPasswd='frank'

select * from Profesional where proUsuario='frank'



CREATE TABLE Trabajador(
	idTrabajador int auto_increment PRIMARY KEY,
	traNombres varchar(100) not null,
	traApellidos varchar(100) Not null,
	traDNI char(8) not null,
	traFechaNac date Not null,
	traSexo char(1)  not null,
	traDireccion varchar(200) not NULL,
	traCorreo varchar(100) not NULL unique,
	traCel varchar(50) NOT NULL UNIQUE,
	traUsuario varchar(50) UNIQUE NOT NULL,
	traPasswd varchar(200) NOT NULL,
	traEstadoCuenta char(1) NOT NULL
);

insert into Trabajador VALUES(default,'Fredo','Godofredo','12345678','1998-11-10','M',
'Jr. unjiron #666','uncorreo@gmail.com','951741852','fredo','fredo','A');

select * from Trabajador;



select count(*) from Trabajador where traUsuario='%s' and traPasswd='%s';

select * from Trabajador 
    
    
CREATE TABLE Historia(
    idHistoria int auto_increment PRIMARY KEY,
    hisMotivo varchar](200) ,
    idCita int ,
    hisObservacion varchar(200) ,
    hisDescripcionvarchar(200) ,
    hisExamenes varchar(200) ,
    hisDiagnostico varchar(200) ,
    hisTratamiento varchar(200) 
);
 
