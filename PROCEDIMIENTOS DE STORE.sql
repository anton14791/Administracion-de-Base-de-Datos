select * from Marca

select * from Categoria

select * from Presentacion

-- Insertar Marcas
insert into Marca
(NombreMarca) 
values 
('Inka Kola')
update Marca set NombreMarca= 'Inca Cola'
where IdMarca=12
delete from Marca
where IdMarca=12
GO


-- Procedimiento MARCA
create procedure Sp_Operaciones_Marca
@opcion				varchar(5)='OPC1',
@NombreMarca		varchar(50)='',
@IdMarca			int=0
as
begin
	if @opcion='OPC1' -- LISTAR
	begin
		select * from Marca
	end
	else if @opcion='OPC2' -- INSERTAR
	begin
		insert into Marca (NombreMarca) values (@NombreMarca)
	end
	else if @opcion='OPC3' -- ACTUALIZAR
	begin
		update Marca set NombreMarca=@NombreMarca where IdMarca=@IdMarca
	end
	else -- ELIMINAR
	begin
		delete from Marca where IdMarca=@IdMarca
	end
end

execute store.Sp_Operaciones_Marca 'OPC1','Sprite',11
go


-- Procedimiento CATEGORIA
create procedure Sp_Operaciones_Categoria
@opcion					varchar(5)='OPC1',
@NombreCategoria		varchar(50)='',
@IdCategoria			int=0
as
begin
	if @opcion='OPC1' -- LISTAR
	begin
		select * from Categoria
	end
	else if @opcion='OPC2' -- INSERTAR
	begin
		insert into Categoria(NombreCategoria) values (@NombreCategoria)
	end
	else if @opcion='OPC3' -- ACTUALIZAR
	begin
		update Categoria set NombreCategoria=@NombreCategoria where IdCategoria=@IdCategoria
	end
	else -- ELIMINAR
	begin
		delete from Categoria where IdCategoria=@IdCategoria
	end
end

GO

-- Procedimiento PRESENTACION
create procedure Sp_Operaciones_Presentacion
@opcion					varchar(5)='OPC1',
@NombrePresentacion		varchar(50)='',
@IdPresentacion			int=0
as
begin
	if @opcion='OPC1' -- LISTAR
	begin
		select * from Presentacion
	end
	else if @opcion='OPC2' -- INSERTAR
	begin
		insert into Presentacion(NombrePresentacion) values (@NombrePresentacion)
	end
	else if @opcion='OPC3' -- ACTUALIZAR
	begin
		update Presentacion set NombrePresentacion=@NombrePresentacion where IdPresentacion=@IdPresentacion
	end
	else -- ELIMINAR
	begin
		delete from Marca where @IdPresentacion=@IdPresentacion
	end
end