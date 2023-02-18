select * from RRHH.Cargos

select * from Bitacora

insert into RRHH.Cargos
(
	DesCargo
)
values
('Contador2')

DELETE FROM RRHH.Cargos

delete from Bitacora




select * from RRHH.Distritos

select * from Bitacora

insert into RRHH.Distritos
(
	IdDistrito,
	NomDistrito
)
values
(2,'Barranco')






select * from VENTA.Paises

select * from Bitacora

insert into VENTA.Paises
(
	IdPais,
	NombrePais
)
values
(2,'Argentina')







select * from VENTA.Clientes

select * from Bitacora

insert into VENTA.Clientes
(
	IdCliente,
	NomCliente,
	DirCliente,
	IdPais,
	FonoCliente
)
values
(3,'Javier','Lima',1,'987654321')



select * from COMPRA.Proveedores

select * from Bitacora

insert into COMPRA.Proveedores
(
	IdProveedor,
	NOMProveedor,
	DirProveedor,
	NomContacto,
	CargoCantacto,
	IdPais,
	FonoProveedor,
	FaxProveedor
)
values
(1,'Don Pepe','Lima','Miguel','Gerente',1,'714586985','666396')









select * from COMPRA.Producto

select * from Bitacora

insert into COMPRA.Producto
(
	IdProducto,
	NOmProducto,
	IdProveedor,
	IdCategoria,
	CantxUnidad,
	PrecioUnidad,
	UniExistencia,
	UniEnPedido
)
values
(1,'Leche',1,1,'20 u','25','10','5')



select * from COMPRA.Categoria