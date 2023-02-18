CREATE PROCEDURE [dbo].[Sp_Eliminar_Distritos]
@IdDistrito			int
as
begin
	delete from RRHH.Distritos where IdDistrito=@IdDistrito
end