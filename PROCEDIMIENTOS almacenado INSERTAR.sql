CREATE PROCEDURE [dbo].[Sp_Insertar_Paises]
	@IdPais char(3),
	@NombrePais VARCHAR(40)
AS
BEGIN
	INSERT INTO VENTA.Paises(IdPais,NombrePais) values (@IdPais,@NombrePais);
END
