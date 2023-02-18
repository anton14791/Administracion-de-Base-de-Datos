create trigger TG_CATEGORIAS_INSERT on COMPRA.Categoria
for insert
as
	insert Bitacora
	(
		NombreTabla		, Evento	, 
		Fecha			, Usuario	,
		Terminal
	)
	select 
		'COMPRA.Categoria',
		'INSERTAR',
		GETDATE(),
		SYSTEM_USER,
		HOST_NAME()
	from INSERTED;

