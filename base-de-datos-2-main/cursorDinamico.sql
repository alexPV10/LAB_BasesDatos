 
DECLARE @FechaInicio DATE
DECLARE @FechaFin DATE

SET @FechaInicio = '2023-07-01'
SET @FechaFin = '2023-07-31'


DECLARE @Nombre VARCHAR(50)
DECLARE @Apellido VARCHAR(50)
DECLARE @FechaVenta DATE

DECLARE CursorDinamico CURSOR DYNAMIC FOR
SELECT c.nombre, c.apellido, v.fechaVenta
	FROM cliente c
		INNER JOIN venta v ON c.id = v.idCliente
	WHERE v.fechaVenta >= @FechaInicio
		  AND v.fechaVenta <= @FechaFin
	ORDER BY c.nombre

OPEN CursorDinamico 
FETCH NEXT FROM CursorDinamico INTO @Nombre, @Apellido, @FechaVenta

WHILE @@FETCH_STATUS = 0
BEGIN 
    PRINT @Nombre + ' ' + @Apellido + ' ' + CAST(@FechaVenta AS VARCHAR(50)) 
    FETCH NEXT FROM CursorDinamico INTO @Nombre, @Apellido, @FechaVenta
END

CLOSE CursorDinamico
DEALLOCATE CursorDinamico


 