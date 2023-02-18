-- Creando base de datos
create database NEGOCIOS2021
go

-- Creando esquemas VENTA, COMPRA, RRHH
create schema VENTA authorization DBO
go

create schema COMPRA authorization DBO
go

create schema RRHH authorization DBO
go

-- Listar esquemas
select * from sys.schemas where principal_id=1

-- Creando tabla Paises en el esquema VENTA
create table VENTA.Paises 
(
	IdPais		char(3),
	NombrePais	varchar(40),
	primary key (IdPais)
)
go

-- Segunda manera de colocar llave primaria
create table VENTA.Paisess
(
	IdPais		char(3),
	NombrePais	varchar(40),
	constraint pk_paises primary key (IdPais),
	constraint fk_pais foreign key (IdPais) references VENTA.Paises(IdPais)
)
go

-- Creando tabla Categoria en el esquema COMPRA
create table COMPRA.Categoria
(
	IdCategoria			int,
	NombreCategoria		varchar(40) not null,
	Descripcion			text null,
	primary key (IdCategoria)
)
go

-- Creando tabla Clientes en el esquema VENTA
create table VENTA.Clientes
(
	IdCliente				char(5),
	NombreCliente			varchar(40),
	DireccionCliente		varchar(80),
	IdPais					char(3),
	FonoCliente				varchar(15),
	primary key (IdCliente),
	foreign key (IdPais) references VENTA.Paises(IdPais)
)
go

-- Creando tabla Proveedores en el esquema COMPRA
create table COMPRA.Proveedores
(
	IdProveedor				int,
	NombreProveedor			varchar(80),
	DireccionProveedor		varchar(100),
	NombreContacto			varchar(80),
	CargoContacto			varchar(50),
	IdPais					char(3),
	FonoProveedor			varchar(15),
	FaxProveedor			varchar(15),
	primary key (IdProveedor),
	foreign key (IdPais) references VENTA.Paises(IdPais)
)
go

-- Creando tabla Productos en el esquema COMPRA
create table COMPRA.Productos 
(
	IdProducto				int,
	NombreProducto			varchar(80),
	IdProveedor				int,
	IdCategoria				int,
	CantidadxUnidad			varchar(50),
	PrecioUnidad			decimal(10,2),
	UnidadEnExistencia		smallint,
	UnidadesEnPedido		smallint,
	primary key (IdProducto),
	foreign key (IdProveedor) references COMPRA.Proveedores(IdProveedor),
	foreign key (IdCategoria) references COMPRA.Categoria(IdCategoria),
)
go

-- Creando tabla Cargos en el esquema RRHH
create table RRHH.Cargos
(
	IdCargo					int,
	DescripcionCargo		varchar(30),
	primary key (IdCargo)
)
go

-- Creando tabla Distritos en el esquema RRHH
create table RRHH.Distritos
(
	IdDistrito			int,
	NombreDistrito		varchar(50),
	primary key (IdDistrito)
)
go

-- Creando tabla Empleados en el esquema RRHH
create table RRHH.Empleados
(
	IdEmpleado				int,
	NombreEmpleado			varchar(50),
	ApellidoEmpleado		varchar(50),
	FechaNacimiento			datetime,
	DireccionEmpleado		varchar(100),
	IdDistrito				int,
	FonoEmpleado			varchar(15),
	IdCargo					int,
	FechaContrato			datetime,
	FotoEmpleado			image,
	primary key (IdEmpleado),
	foreign key (IdDistrito) references RRHH.Distritos(IdDistrito),
	foreign key (IdCargo) references RRHH.Cargos(IdCargo)
)
go

-- Creando tabla PedidosCabe en el esquema VENTA
create table VENTA.PedidosCabe
(
	IdPedido					int,
	IdCliente					char(5),
	IdEmpleado					int,
	FechaPedido					datetime,
	FechaEntrega				datetime,
	FechaEnvio					datetime,
	EnvioPedido					char(1),
	Destinatario				varchar(60),
	DireccionDestinatario		varchar(100),
	primary key (IdPedido),
	foreign key (IdCliente) references VENTA.Clientes(IdCliente),
	foreign key (IdEmpleado) references RRHH.Empleados(IdEmpleado)
)
go

-- Creando tabla PedidosDeta en el esquema COMPRA
create table COMPRA.PedidosDeta
(
	IdPedido		int,
	IdProducto		int,
	PrecioUnidad	decimal(10,2),
	Cantidad		smallint,
	Descuento		decimal(10,2),
	foreign key (IdPedido) references VENTA.PedidosCabe(IdPedido),
	foreign key (IdProducto) references COMPRA.Productos(IdProducto)
)
go