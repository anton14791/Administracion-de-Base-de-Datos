create table Bitacora 
(
	Id	int identity,
	NombreTabla	varchar(30),
	Evento	varchar(30),
	Fecha	datetime,
	Usuario	varchar(30),
	Terminal	varchar(30),
	constraint pk_bitacora primary key (Id)
)

