
#Alan Rene Lopez Lucas 
create database DBEjercicio1M;

use DBEjercicio1M;

create table Areas(
	codigoArea int not null,
	nombreArea VARCHAR(45) not null,
    PRIMARY KEY PK_codigoArea (codigoArea)
);

create table Cargos(
	codigoCargo int not null,
	nombreCargo VARCHAR(45) not null,
    PRIMARY KEY PK_codigCargo (codigoCargo)
);

create table ResponsableTurno(
	codigoResponsableTurno int not null,
    nombreResponsableTurno VARCHAR(45) not null,
    apellidoResponsableTurno VARCHAR(45) not null,
    codigoArea int not null,
    codigoCargo int not null,
    PRIMARY KEY PK_codigoResponsableTurno (codigoResponsableTurno),
    
    CONSTRAINT FK_ResponsableTurno_Areas FOREIGN KEY (codigoArea) REFERENCES Areas(codigoArea),
	CONSTRAINT FK_ResponsableTurno_Cargos FOREIGN KEY (codigoCargo) REFERENCES Cargos(codigoCargo)
);

-- Agregar --

insert into Areas (codigoArea, nombreArea)
values (1, 'Pediatria');
insert into Areas (codigoArea, nombreArea)
values (2, 'Oftalmologia');
insert into Areas (codigoArea, nombreArea)
values (3, 'Cardiologia');
insert into Areas (codigoArea, nombreArea)
values (4, 'Geral');
insert into Areas (codigoArea, nombreArea)
values (5, 'Dermatologia');

-- Agregar --

insert into Cargos (codigoCargo, nombreCargo)
values (1, 'Enfermero');
insert into Cargos (codigoCargo, nombreCargo)
values (2, 'Doctor');
insert into Cargos (codigoCargo, nombreCargo)
values (3, 'Practicante');
insert into Cargos (codigoCargo, nombreCargo)
values (4, 'Especialista');
insert into Cargos (codigoCargo, nombreCargo)
values (5, 'Ayudante');

-- Agregar --
insert into ResponsableTurno (codigoResponsableTurno, nombreResponsableTurno, apellidoResponsableTurno, codigoArea, codigoCargo)
values (1, 'Daniel','Rojo',1,1);
insert into ResponsableTurno (codigoResponsableTurno, nombreResponsableTurno, apellidoResponsableTurno, codigoArea, codigoCargo)
values (2, 'Augusto','Perez',2,2);
insert into ResponsableTurno (codigoResponsableTurno, nombreResponsableTurno, apellidoResponsableTurno, codigoArea, codigoCargo)
values (3, 'Antonio','Hains',3,3);
insert into ResponsableTurno (codigoResponsableTurno, nombreResponsableTurno, apellidoResponsableTurno, codigoArea, codigoCargo)
values (4, 'Facundo','Domingo',4,4);
insert into ResponsableTurno (codigoResponsableTurno, nombreResponsableTurno, apellidoResponsableTurno, codigoArea, codigoCargo)
values (5, 'Saul','Mañanero',5,5);

-- LISTAR --
select
	A.codigoArea,
    A.nombreArea
    from Areas A;
    
select
	C.codigoCargo,
    C.nombreCargo
    from Cargos C;
    
select
	R.codigoResponsableTurno,
    R.nombreResponsableTurno,
    R.apellidoResponsableTurno,
    R.codigoArea,
    R.codigoCargo
    from ResponsableTurno R;
-- ---Buscar----
select
	A.codigoArea,
    A.nombreArea
    from Areas A where codigoArea = 1;
    
select
	C.codigoCargo,
    C.nombreCargo
    from Cargos C where codigoCargo = 2;
    
select
	R.codigoResponsableTurno,
    R.nombreResponsableTurno,
    R.apellidoResponsableTurno,
    R.codigoArea,
    R.codigoCargo
    from ResponsableTurno R where codigoResponsableTurno = 4;
    
-- ---update---

alter table Areas add TelefonoArea varchar(8);

update Areas 
	set telefonoArea = '58963201'
		where codigoArea = 1;
        
update Areas 
	set telefonoArea = '48952255'
		where codigoArea = 2;
        
update Areas 
	set telefonoArea = '35664472'
		where codigoArea = 3;
        
update Areas 
	set telefonoArea = '44887599'
		where codigoArea = 4;
        
update Areas 
	set telefonoArea = '42315502'
		where codigoArea = 5;
        
select * from Areas;

-- ------delete-------

delete from ResponsableTurno where codigoResponsableTurno = 4;
delete from Areas where codigoArea = 4;
delete from Cargos where codigoCargo = 4;

	


