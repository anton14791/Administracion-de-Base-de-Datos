create trigger TG_DISTRITOS_INSERT on RRHH.Distritos
for insert
as
	insert Bitacora
	(
		NombreTabla		, Evento	, 
		Fecha			, Usuario	,
		Terminal
	)
	select 
		'RRHH.Distritos',
		'INSERTAR',
		GETDATE(),
		SYSTEM_USER,
		HOST_NAME()
	from INSERTED;
