create database BD_SEMANA01
go

create table Cliente
(
	IdCliente int identity,
	Apellidos varchar(50),
	Nombres varchar(50),
	DNI char(8),
	Direccion text,
	FechNac date,
	NroCel1 varchar(15),
	NroCel2 varchar(15),
	NroCel3 varchar(15),
	primary key(IdCliente)
)
go


insert into Cliente(Apellidos, Nombres, DNI, Direccion, 
            FechNac, NroCel1, NroCel2, NroCel3)
values ('Camacho Salhua','Daniel','70395970','Mi casa','1990-12-31',
       '968545556','','')

select * from Cliente