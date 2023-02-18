create procedure [dbo].[Sp_Actualizar_Categoria]

@IdCategoria			int,
@NombreCategoria		varchar(40),
@Descripcion			text
as
begin
	update COMPRA.Categoria set NombreCategoria=@NombreCategoria, Descripcion=@Descripcion where Idcategoria=@IdCategoria
end