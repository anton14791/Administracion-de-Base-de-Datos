create login Login_Prueba WITH PASSWORD='123456',
						  DEFAULT_DATABASE= master,
						  CHECK_EXPIRATION= OFF,
						  CHECK_POLICY= OFF
GO

select * from Cliente


insert into Cliente(Apellidos, Nombres, DNI, Direccion, 
            FechNac, NroCel1, NroCel2, NroCel3)
values ('Carranza','Maria','66856985','Mi casa','1990-12-31',
       '968545556','','')
update Cliente set Apellidos ='Martinez' where IdCliente=4
delete from Cliente where IdCliente=4


-- CREAR LOGIN
create login Anton WITH PASSWORD='123456789',
						  DEFAULT_DATABASE= BD_SEMANA01,
						  CHECK_EXPIRATION= OFF,
						  CHECK_POLICY= OFF
GO

-- CREAR USUARIO
create user Anton FOR LOGIN Anton
			      WITH DEFAULT_SCHEMA= dbo
GO

use BD_SEMANA01
grant select to Anton

