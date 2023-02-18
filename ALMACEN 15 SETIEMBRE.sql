CREATE DATABASE BD_ALMACEN
GO

create table Categoria
(
	IdCategoria		int identity primary key,
	NomCategoria	varchar(50)
)
go

create login almacen1 WITH PASSWORD='123456789',
					  DEFAULT_DATABASE= BD_ALMACEN,
					  CHECK_EXPIRATION= OFF,
					  CHECK_POLICY= OFF
GO

create user almacen1 FOR LOGIN almacen1
				      WITH DEFAULT_SCHEMA= dbo
GO

use BD_ALMACEN 
grant select to almacen1


create login almacen2 WITH PASSWORD='123456789',
					  DEFAULT_DATABASE= BD_ALMACEN,
					  CHECK_EXPIRATION= OFF,
					  CHECK_POLICY= OFF
GO

create user almacen2 FOR LOGIN almacen2
				      WITH DEFAULT_SCHEMA= dbo
GO

use BD_ALMACEN 
GRANT CREATE TABLE TO almacen2

set language español