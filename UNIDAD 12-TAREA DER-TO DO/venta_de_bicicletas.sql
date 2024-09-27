--tabla Clientes
create table Clientes (
	idClientes serial primary key,
	nombre_completo varchar (50) not null unique,
	email varchar (50) not null unique,
	telefono varchar (13) not null unique,
	dirección varchar (50) not null unique
);
--agregando datos a la tabla
insert into Clientes (nombre_completo,email,telefono,dirección) values ('Ricardo Rolón','rolonrdo@hotmail.com','44444333222','los alerces 305');
Select * FROM Clientes;

--tabla Bicicletas 
create table Bicicletas (
	idbicicleta integer primary key,
	Marca varchar (20) not null,
	Modelo varchar (20) not null,
	Tipo varchar (13) null,
	Precio float not null,
	Stock integer null,
	Imagen varchar (50) null,
	Descripción_general varchar (256) null
);
insert into Bicicletas (idbicicleta,Marca,Modelo,Precio) values (25,'Eclipse','35VZ2','5200');
SELECT* FROM Bicicletas

--tabla Venta
create table Venta (
	idVenta serial primary key,
	idbicicleta integer not null,
	idClientes integer not null,
	Precio_Total float not null,
	id_forma_de_pago integer not null, 
	Fecha date not null

);

insert into Venta (idbicicleta,idClientes,Precio_Total,id_forma_de_pago,Fecha) values ('25','3','5000','1','17/08/2024');
SELECT* FROM Venta;

--tabla Forma de Pago
create table Forma_de_Pago (
	id_forma_de_pago integer primary key,
	detalle varchar (20) not null

);








