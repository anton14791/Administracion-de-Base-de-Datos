CREATE PROCEDURE [dbo].[Sp_Eliminar_Cargos]
@IdCargo			int
as
begin
	delete from RRHH.Cargos where IdCargo=@IdCargo
end