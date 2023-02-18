create trigger TG_PRODCUTOS_INSERT on COMPRA.Producto
for insert
as
	insert Bitacora
	(
		NombreTabla		, Evento	, 
		Fecha			, Usuario	,
		Terminal
	)
	select 
		'COMPRA.Producto',
		'INSERTAR',
		GETDATE(),
		SYSTEM_USER,
		HOST_NAME()
	from INSERTED;
