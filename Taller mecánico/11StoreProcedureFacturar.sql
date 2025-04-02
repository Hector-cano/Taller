Create Procedure Facturar
	@Numero_reparación smallint
AS

	-- Declaramos las variables:
	DECLARE @Reparación_PK smallint;
	DECLARE @Matrícula char(8);
	DECLARE @Kilometraje char(30);
	DECLARE @NIF char(9);
	DECLARE @Horas decimal(4,2);
	DECLARE @Material money;
	DECLARE @ImporteTotal money;

	-- Declaramos la variable para la Fecha de la factura
	DECLARE @Fecha date;

	-- Establecemos la fecha para la factura
	SET @Fecha = getdate();

	-- Aquí vamos a obtener los datos para insertar en la tabla Factura
	-- Usamos SELECT para obtener los datos
	SELECT 
		@Reparación_PK = Reparaciones.Reparación_PK,
		@Matrícula = Vehículos.Matrícula_PK,
		@Kilometraje = Vehículos.Kilometraje,
		@NIF = Clientes.NIF_PK,
		@Horas = Reparaciones.Horas,
		@Material = Reparaciones.Material,
		@ImporteTotal = Reparaciones.ImporteTotal
	FROM Reparaciones
	INNER JOIN Vehículos
		ON Reparaciones.Matrícula_FK = Vehículos.Matrícula_PK
	INNER JOIN Clientes
		ON Vehículos.Propietario_FK = Clientes.NIF_PK
	WHERE Reparaciones.Reparación_PK = @Numero_reparación; -- Aquí especifico el Reparación_PK 

	-- Insertamos los valores obtenidos en la tabla Factura
	INSERT INTO Factura (Factura_PK, Reparación_FK, Fecha, DatosCliente, Matrícula, Kilometraje, Importe, ImporteIVA, ImporteTotal)
	VALUES (
		(SELECT ISNULL(MAX(Factura_PK), 0) + 1 FROM Factura),  -- Generamos un nuevo Factura_PK
		@Reparación_PK,
		@Fecha,
		@NIF,
		@Matrícula,
		@Kilometraje,
		@ImporteTotal,  -- El importe sin IVA
		@ImporteTotal * 0.21,  -- Calculamos el IVA sobre el importe total (21%)
		@ImporteTotal + (@ImporteTotal * 0.21)  -- O tambien sirve * 1.21 (directo). Importe total con IVA (sumando el IVA al importe original)
	);