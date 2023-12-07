-- Pais
INSERT INTO pais( nombre) VALUES
( 'El salvador');

INSERT INTO departamento VALUES
( 'Santa Ana', 1),
( 'Sonsonate', 1),
( 'Ahuachapan', 1),
('Chalatenango', 1),
( 'La Libertad', 1),
( 'San Salvador', 1),
( 'Cuscatlan', 1),
('Cabañas', 1),
('La Paz', 1),
('San Vicente', 1),
('Usulutan', 1),
('San Miguel', 1),
('Morazan', 1),
('La Union', 1);

INSERT INTO distrito VALUES
('Sonsonate', 2),
('Metapan', 1),
('San Juan Opico', 5),
('Santa Rosa de Lima', 14),
('Dulce Nombre de maria', 4);

-- Municipio
INSERT INTO municipio VALUES
('Sonsonate Centro', 1),
('Santa Ana Norte', 2),
('La Union Norte', 3),
('La libertad Centro', 3),
('Chalatenango Centro', 5);

-- Direcciones
INSERT INTO direccion VALUES
('Bo. Concepción, Dulce Nombre de María', 'Farmacias La Vida', 5),
('Bo El Calvario Cl Gral Girón No 11','Farmacia Santa María', 3),
('Bo Las Flores Av Ignacio Gómez No 8 Metapán', 'Almacén Y Libreria La Confianza',2),
('Bo El Centro Cl Paniagua No 10','Farmacia Pharma', 4),
('Cl Alberto Masferrer Y Av Oídor Ramírez De Quiñone','Almacenes Bou, S.a. De C.v.', 1);

-- Inserción 1
INSERT INTO cliente (nombre, apellido, dui, fecha_nacimiento, telefono, correo, idDireccion)
VALUES ('Juan', 'Pérez', '123456789', '1990-05-15', '555-123-45', 'juanperez@example.com', 1),
	('María', 'González', '987654321', '1985-03-20', '555-234-56', 'mariagonzalez@example.com', 2),
	('Luis', 'Martínez', '456789012', '1992-09-10', '555-345-67', 'luismartinez@example.com', 3),
	('Ana', 'López', '789012345', '1988-07-05', '555-456-78', 'analopez@example.com', 4),
	('Pedro', 'Sánchez', '234567890', '1995-12-25', '555-567-89', 'pedrosanchez@example.com', 5)

-- Inserción 1
INSERT INTO proveedor (nombreEmpresa, contactoNombre, contactoTelefono, direccion, email, notas, fechaRegistro)
VALUES ('Proveedor XYZ', 'Contacto 1', '555-123-4567', '123 Calle Principal', 'contacto1@example.com', 'Notas sobre este proveedor', '2023-09-02'),
	('ABC Distribuciones', 'Contacto 2', '555-234-5678', '456 Avenida Secundaria', 'contacto2@example.com', 'Notas sobre este proveedor', '2023-09-02'),
	('Suministros Rápidos', 'Contacto 3', '555-345-6789', '789 Calle Comercial', 'contacto3@example.com', 'Notas sobre este proveedor', '2023-09-02'),
	('Productos Importados', 'Contacto 4', '555-456-7890', '101 Avenida Principal', 'contacto4@example.com', 'Notas sobre este proveedor', '2023-09-02'),
	('Suministros Globales', 'Contacto 5', '555-567-8901', '222 Calle Secundaria', 'contacto5@example.com', 'Notas sobre este proveedor', '2023-09-02');

-- cargoEmpleado:
INSERT INTO cargoEmpleado (cargo)
VALUES ('Gerente'),
	('Supervisor de Ventas'),
	('Técnico de Laboratorio'),
	('Contador'),
	('Recepcionista');
	
-- Present_Productos:
INSERT INTO presentacionProducto (nombre)
VALUES ('Tabletas'),
	('Cápsulas'),
	('Jarabe'),
	('Ampollas'),
	('Crema');

-- laboratorios 
INSERT INTO laboratorio (NIF, nombres, descripcion, correo, telefono, idDireccion)
VALUES ('1234567890', 'Laboratorio A', 'Laboratorio de pruebas A', 'laba@ejemplo.com', '123-456-7890', 1),
	('9876543210', 'Laboratorio B', 'Laboratorio de pruebas B', 'labb@ejemplo.com', '987-654-32', 2),
	('4567890123', 'Laboratorio C', 'Laboratorio de pruebas C', 'labc@ejemplo.com', '456-789-01', 3),
	('7890123456', 'Laboratorio D', 'Laboratorio de pruebas D', 'labd@ejemplo.com', '789-012-34', 4),
	('2345678901', 'Laboratorio E', 'Laboratorio de pruebas E', 'labe@ejemplo.com', '234-567-89', 5);

-- EMPLEADO
INSERT INTO empleado (nombres, apellidos, dui, iss, fecha_nacimiento, telefono, correo, idDireccion, idCargo)
VALUES ('Juan', 'Pérez', '1234567890', 'ISS12345', '1990-05-15', '78901234', 'juan.perez@email.com', 1, 1),
	 ('María', 'López', '0987654321', 'ISS54321', '1985-12-10', '98765432', 'maria.lopez@email.com', 2, 2),
	 ('Pedro', 'García', '1122334455', 'ISS67890', '1992-08-20', '66778899', 'pedro.garcia@email.com', 3, 3),
	 ('Ana', 'Rodríguez', '9988776655', 'ISS54321', '1988-03-05', '55443322', 'ana.rodriguez@email.com', 4, 4),
	 ('Carlos', 'Martínez', '7766554433', 'ISS98765', '1995-11-30', '66778855', 'carlos.martinez@email.com', 5, 5);

-- PRODUCTOS 
INSERT INTO producto (nombre, descripcion, precio, fechaVencimiento, stockActual, stockMinimo, fechaUltimaCompra, fechaUltimaVenta, instrucciones, idPrecentacion)
VALUES ('Aspirina', 'Alivio rápido para el dolor de cabeza', 5.99, '2023-12-31', 100, 10, '2023-05-15', NULL, 'Tomar con agua', 1),
		('Amoxicilina', 'Antibiótico de amplio espectro', 12.99, '2024-06-30', 50, 5, '2023-04-20', NULL, 'Tomar después de las comidas', 2),
		('Omeprazol', 'Alivio de acidez estomacal', 8.49, '2023-11-30', 75, 7, '2023-03-10', NULL, 'Tomar antes del desayuno', 3),
		('Paracetamol', 'Analgésico y antipirético', 4.99, '2023-10-15', 200, 20, '2023-02-05', NULL, 'Tomar con comida', 1),
		('Ibuprofeno', 'Antiinflamatorio y analgésico', 6.99, '2024-01-31', 80, 8, '2023-05-25', NULL, 'Tomar con leche', 2);

-- DETALLE VENTA
INSERT INTO venta(fechaVenta, idCliente, total)
VALUES ('2024-06-11',1,25),
       ('2022-07-08',2,30),
       ('2020-6-11', 2, 1);

-- DETALLE FACTURA
INSERT INTO detalleVenta(idVenta,idProducto,cantidad,precioUnitario)
VALUES(2, 1, 1, 5.99),
	(2,1,2,12.99),
	(2,1,3,8.99),
	(2,1,4,4.99),
	(2,1,5,6.99),
	(2,1,1,7.00);

-- DETALLE LABORATORIO
INSERT INTO detalleLaboratorio(idLaboratorio, idProducto)
VALUES (1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5);

-- PRODUCTO PROVEEDOR
INSERT INTO productosProveedor(idProveedor, idProducto)
VALUES (1, 2),
	(1, 3),
	(1, 1),
	(1, 4),
	(1, 5);




