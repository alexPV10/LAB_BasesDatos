/*Creacion de base de datos */ 
create database farmacia;
use farmacia;


/* Creacion de tablas*/ 
create table pais(
	id int primary key identity(1,1),
	nombre varchar(50) not null,
);

create table departamento(
	id int primary key identity(1,1),
	nombre varchar(50) not null, 
	idPais int not null, 
	foreign key (idPais) references pais(id)
);

create table distrito(
	id int primary key identity(1,1),
	nombre varchar(50) not null, 
	idDepartamento int not null,
	foreign key (idDepartamento) references departamento(id),
);

create table municipio(
	id int primary key identity(1,1),
	nombre varchar(50) not null,
	idDistrito int not null,
	foreign key (idDistrito) references distrito(id),
);

create table direccion(
	id int primary key identity(1,1),
	linea1 varchar(100) not null, 
	linea2 varchar(100) not null,
	idMunicipio int not null,
	foreign key (idMunicipio) references municipio(id),
);

create table cargoEmpleado(
	id int primary key identity(1,1),
	cargo varchar(50) not null, 
);

create table empleado(
	id int primary key identity(1,1),
	nombres varchar(50) not null, 
	apellidos varchar(50) not null, 
	dui varchar(10) not null, 
	iss varchar(20) not null, 
	fecha_nacimiento date not null, 
	telefono varchar(10) not null,
	correo varchar(50) not null,
	idDireccion int not null, 
	idCargo int not null, 
	foreign key (idDireccion) references direccion(id),
	foreign key (idCargo) references cargoEmpleado(id)
);

create table presentacionProducto(
	id int primary key identity(1,1),
	nombre varchar(50) not null,
);

create table laboratorio(
	id int primary key identity(1,1),
	NIF varchar(20) not null, 
	nombres varchar(50) not null, 
	descripcion varchar(100) not null, 
	correo varchar(50) not null,
	telefono varchar(15) not null,
	idDireccion int not null, 
	foreign key (idDireccion) references direccion(id)
);

create table categoria(
	id int primary key identity(1,1),
	nombre varchar(50) not null, 
);

create table producto(
	id int primary key identity(1,1),
	nombre varchar(50) not null, 
	descripcion varchar(100) not null, 
	precio float not null, 
	fechaVencimiento date not null, 
	idPrecentacion int not null, 
	idCategoria int not null, 
	foreign key (idPrecentacion) references presentacionProducto(id),
	foreign key (idCategoria) references categoria(id)
);

create table detalleLaboratorio(
	id int primary key identity(1,1),
	idLaboratorio int not null, 
	idProducto int not null,
	foreign key (idLaboratorio) references laboratorio(id),
	foreign key (idProducto) references producto(id)
);

create table cliente(
	id int primary key identity(1,1),
	nombre varchar(50) not null, 
	apellido varchar(50) not null, 
	dui varchar(10) not null, 
	fecha_nacimiento date not null, 
	telefono varchar(10) not null,
	correo varchar(50) not null,
	idDireccion int not null, 
	foreign key (idDireccion) references direccion(id)
);

create table venta(
	id int primary key identity(1,1),
	fechaFacturacion date not null, 
	telefono varchar(10) not null,
	correo varchar(50) not null,
	numeroProductos int not null,
	precioProductos float not null,
	totalVenta float not null,
	idCliente int not null, 
	foreign key (idCliente) references cliente(id)
);

create table detalleVenta(
	id int primary key identity(1,1) not null,
	idProducto int not null, 
	idVenta int not null,
	foreign key (idProducto) references producto(id),
	foreign key (idVenta) references venta(id)
);