create database BD_SEMANA03
GO

use BD_SEMANA03
go


-- Tabla Marca
create table Marca 
(
	IdMarca			int primary key identity,
	NombreMarca		varchar(50)
)
go


-- Tabla Categoria
create table Categoria
(
	IdCategoria			int primary key identity,
	NombreCategoria		varchar(50)
)
go


-- Tabla Presentacion
create table Presentacion
(
	IdPresentacion			int primary key identity,
	NombrePresentacion		varchar(50)
)
go


-- Tabla Producto
create table Producto
(
	IdProducto			varchar(6) primary key,
	NombreProducto		varchar(80),
	IdMarca				int foreign key references Marca(IdMarca),
	IdCategoria			int foreign key references Categoria(IdCategoria),
	IdPresentacion		int foreign key references Presentacion(IdPresentacion),
	Proveedor			varchar(50),
	NombreContacto		varchar(50),
	PrecioCompra		decimal(8,2),
	FechaCompra			date,
	PrecioVenta			decimal(8,2),
	FechaVencimiento	date,
	Estado				bit 
)
go


-- Creando Login STORE
create login store with password ='123456789'
go


use BD_SEMANA03
go


sp_adduser store, store


SELECT * FROM Presentacion
GO

