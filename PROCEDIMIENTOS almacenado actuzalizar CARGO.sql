create procedure [dbo].[Sp_Actualizar_Cargos]
@IdCargo		int,
@DesCargo		varchar(40)
as
begin
	update RRHH.Cargos set DesCargo=@DesCargo where IdCargo=@IdCargo
end