CREATE PROCEDURE Sp_Eliminar_Pais
@IdPais			char(3)
as
begin
	delete from VENTA.Paises where IdPais=@IdPais
end