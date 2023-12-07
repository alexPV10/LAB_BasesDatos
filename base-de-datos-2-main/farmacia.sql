create database farmacia;
use farmacia;

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


CREATE TABLE proveedor (
    id int PRIMARY KEY IDENTITY(1,1),
    nombreEmpresa VARCHAR(100) NOT NULL,
    contactoNombre VARCHAR(50),
    contactoTelefono VARCHAR(20),
    direccion VARCHAR(200) NOT NULL,
    email VARCHAR(100),
    notas TEXT,
    fechaRegistro DATE NOT NULL
);

create table producto(
	id int primary key identity(1,1),
	nombre varchar(50) not null, 
	descripcion varchar(100) not null, 
	precio float not null, 
	fechaVencimiento date not null, 
	stockActual int not null,
        stockMinimo int not null,
        fechaUltimaCompra date,
        fechaUltimaVenta date,
        instrucciones varchar(200),
	idPrecentacion int not null,
	foreign key (idPrecentacion) references presentacionProducto(id)
);

CREATE TABLE productosProveedor (
    id INT PRIMARY KEY IDENTITY(1,1),
    idProveedor INT NOT NULL,
    idProducto INT NOT NULL,
    FOREIGN KEY (idProveedor) REFERENCES proveedor(id),
    FOREIGN KEY (idProducto) REFERENCES producto(id)
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

CREATE TABLE venta (
    id INT PRIMARY KEY IDENTITY(1,1),
    fechaVenta DATE NOT NULL,
    idCliente INT NOT NULL,
    total FLOAT NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES cliente(id)
);

CREATE TABLE detalleVenta (
    id INT PRIMARY KEY IDENTITY(1,1),
    idVenta INT NOT NULL,
    idProducto INT NOT NULL,
    cantidad INT NOT NULL,
    precioUnitario FLOAT NOT NULL,
    FOREIGN KEY (idVenta) REFERENCES venta(id),
    FOREIGN KEY (idProducto) REFERENCES producto(id)
);

create table Usuarios(
    Id int primary key identity(1, 1),	
    IdEmpleado int not null,
    IdRol int not null,
    Usuario varchar(60) not null,
    Clave varchar(60) not null,

);

create table Roles(
	IdRol int primary key identity(1, 1),
    NombreRol varchar(60) not null
);

create table AsignacionRolesOpciones(
	IdAsignacionRol int primary key identity(1, 1),
    IdRol int not null,
    IdOpcion int not null
);

create table Opciones(
	IdOpcion int primary key identity(1, 1),
    NombreOpcion varchar(60) not null
);


alter table Usuarios add foreign key (IdEmpleado) references Empleado(Id);
alter table Usuarios add foreign key (IdRol) references Roles(IdRol);
alter table AsignacionRolesOpciones add foreign key (IdRol) references Roles(IdRol);
alter table AsignacionRolesOpciones add foreign key (IdOpcion) references Opciones(IdOpcion);


