create trigger TG_CARGOS_INSERT on RRHH.Cargos
for insert
as
	insert Bitacora
	(
		NombreTabla		, Evento	, 
		Fecha			, Usuario	,
		Terminal
	)
	select 
		'RRHH.Cargos',
		'INSERTAR',
		GETDATE(),
		SYSTEM_USER,
		HOST_NAME()
	from INSERTED;

	SET LANGUAGE ESPAÑOL
