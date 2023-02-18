create procedure Sp_Actualizar_Pais
@IdPais			char(3),
@NombrePais		varchar(40)
as
begin
	update VENTA.Paises set NombrePais=@NombrePais where IdPais=@IdPais
end