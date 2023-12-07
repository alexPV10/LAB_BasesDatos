CREATE PROCEDURE InsertarProducto
    @NombreProducto VARCHAR(50),
    @DescripcionProducto VARCHAR(100),
    @Precio FLOAT,
    @FechaVencimiento DATE,
    @StockActual INT,
    @StockMinimo INT,
    @FechaUltimaCompra DATE,
    @FechaUltimaVenta DATE,
    @Instrucciones VARCHAR(200),
    @NombrePresentacion VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @IdPresentacion INT
    DECLARE @IdProducto INT
 
    SELECT @IdPresentacion = id
    FROM presentacionProducto
    WHERE nombre = @NombrePresentacion

    IF @IdPresentacion IS NULL
    BEGIN
        INSERT INTO presentacionProducto (nombre)
        VALUES (@NombrePresentacion)

        SET @IdPresentacion = SCOPE_IDENTITY()
    END
 
    INSERT INTO producto (nombre, descripcion, precio, fechaVencimiento, stockActual, stockMinimo, fechaUltimaCompra, fechaUltimaVenta, instrucciones, idPrecentacion)
    VALUES (@NombreProducto, @DescripcionProducto, @Precio, @FechaVencimiento, @StockActual, @StockMinimo, @FechaUltimaCompra, @FechaUltimaVenta, @Instrucciones, @IdPresentacion)
END

EXEC InsertarProducto
    @NombreProducto = 'Aspirina',
    @DescripcionProducto = 'Analgésico',
    @Precio = 5.99,
    @FechaVencimiento = '2023-12-31',
    @StockActual = 100,
    @StockMinimo = 20,
    @FechaUltimaCompra = '2023-10-01',
    @FechaUltimaVenta = '2023-09-15',
    @Instrucciones = 'Tomar con agua',
    @NombrePresentacion = 'Tabletas'
