Create Procedure Facturar
	@Numero_reparaci�n smallint
AS

	-- Declaramos las variables:
	DECLARE @Reparaci�n_PK smallint;
	DECLARE @Matr�cula char(8);
	DECLARE @Kilometraje char(30);
	DECLARE @NIF char(9);
	DECLARE @Horas decimal(4,2);
	DECLARE @Material money;
	DECLARE @ImporteTotal money;

	-- Declaramos la variable para la Fecha de la factura
	DECLARE @Fecha date;

	-- Establecemos la fecha para la factura
	SET @Fecha = getdate();

	-- Aqu� vamos a obtener los datos para insertar en la tabla Factura
	-- Usamos SELECT para obtener los datos
	SELECT 
		@Reparaci�n_PK = Reparaciones.Reparaci�n_PK,
		@Matr�cula = Veh�culos.Matr�cula_PK,
		@Kilometraje = Veh�culos.Kilometraje,
		@NIF = Clientes.NIF_PK,
		@Horas = Reparaciones.Horas,
		@Material = Reparaciones.Material,
		@ImporteTotal = Reparaciones.ImporteTotal
	FROM Reparaciones
	INNER JOIN Veh�culos
		ON Reparaciones.Matr�cula_FK = Veh�culos.Matr�cula_PK
	INNER JOIN Clientes
		ON Veh�culos.Propietario_FK = Clientes.NIF_PK
	WHERE Reparaciones.Reparaci�n_PK = @Numero_reparaci�n; -- Aqu� especifico el Reparaci�n_PK 

	-- Insertamos los valores obtenidos en la tabla Factura
	INSERT INTO Factura (Factura_PK, Reparaci�n_FK, Fecha, DatosCliente, Matr�cula, Kilometraje, Importe, ImporteIVA, ImporteTotal)
	VALUES (
		(SELECT ISNULL(MAX(Factura_PK), 0) + 1 FROM Factura),  -- Generamos un nuevo Factura_PK
		@Reparaci�n_PK,
		@Fecha,
		@NIF,
		@Matr�cula,
		@Kilometraje,
		@ImporteTotal,  -- El importe sin IVA
		@ImporteTotal * 0.21,  -- Calculamos el IVA sobre el importe total (21%)
		@ImporteTotal + (@ImporteTotal * 0.21)  -- O tambien sirve * 1.21 (directo). Importe total con IVA (sumando el IVA al importe original)
	);