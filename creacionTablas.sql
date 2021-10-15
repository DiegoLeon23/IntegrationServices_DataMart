CREATE DATABASE ExamFinal
use ExamFinal

CREATE TABLE CLIENTE(
	ID int,
	nombre varchar(45),
	ap_paterno varchar(50),
	documento varchar(50),
	FECHA_INGRESO varchar(20),
	TIPO_CLIENTE varchar(20),
	fecnac date
)

CREATE TABLE PRODUCTO(
	[Codigo Nacional] varchar(7),
	nombre_Producto varchar(100),
	precio decimal(10,2),
	precioiva decimal(10,2),
	stock int,
	estado BIT
)

CREATE TABLE TIENDA(
	id int,
	ciudad varchar(20),
	direccion varchar(30),
	estado_local BIT
)

CREATE TABLE VENDEDOR(
	id_vendedor int,
	nombre varchar(45),
	apellido varchar(45),
	tipo_doc varchar(45),
	estado_vend BIT,
	tienda int
)

CREATE TABLE VENTA(
	id_venta int,
	producto varchar(45),
	fecha date,
	cantidad int,
	pago varchar(50),
	descuento decimal(10,2),
	cliente int,
	vendedor int
)

