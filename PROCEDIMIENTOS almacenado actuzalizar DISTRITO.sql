create procedure [dbo].[Sp_Actualizar_Distritos]

@IdDistrito			int,
@NomDistrito		varchar(50)
as
begin
	update RRHH.Distritos set NomDistrito=@NomDistrito where IdDistrito=@IdDistrito 
end