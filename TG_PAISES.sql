create trigger TG_PAISES_INSERT on VENTA.Paises
for insert
as
	insert Bitacora
	(
		NombreTabla		, Evento	, 
		Fecha			, Usuario	,
		Terminal
	)
	select 
		'VENTA.Paises',
		'INSERTAR',
		GETDATE(),
		SYSTEM_USER,
		HOST_NAME()
	from INSERTED;
