CREATE DATABASE BD_SEMANA03
GO

USE BD_SEMANA03
GO
--
CREATE TABLE Marca(IdMarca		INT PRIMARY KEY IDENTITY,
				   NomMarca		VARCHAR(50))
GO
--
CREATE TABLE Categoria(IdCategoria INT PRIMARY KEY IDENTITY,
					   NomCategoria	VARCHAR(50))
GO
--
CREATE TABLE Presentacion(IdPresentacion	INT PRIMARY KEY IDENTITY,
						  NomPresentacion	VARCHAR(50))
--
CREATE TABLE Producto(IdProducto		VARCHAR(6) PRIMARY KEY,
					  NomProducto		VARCHAR(80),
					  IdMarcar			INT FOREIGN KEY REFERENCES Marca(IdMarca),
					  IdCategoria		INT FOREIGN KEY REFERENCES Categoria(IdCategoria),
					  IdPresentacion	INT FOREIGN KEY REFERENCES Presentacion(IdPresentacion),
					  Proveedor			VARCHAR(50),
					  NomContacto		VARCHAR(50),
					  PreCompra			DECIMAL(8,2),
					  FechCompra		DATE,
					  PreVenta			DECIMAL(8,2),
					  FechVencimiento	DATE,
					  Estado			BIT)
GO