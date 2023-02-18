CREATE PROCEDURE [dbo].[Sp_Eliminar_Categoria]
@IdCategoria			int
as
begin
	delete from COMPRA.Categoria where Idcategoria=@IdCategoria
end