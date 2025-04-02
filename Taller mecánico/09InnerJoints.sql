--Conectar las reparaciones a vehiculos y de vehiculos a clientes :=)


--La siguiente consulta muestra dónde estan los nexos en las tablas:

USE TallerMecánico

SELECT NIF_PK
FROM Clientes
INNER JOIN Vehículos
ON Clientes.NIF_PK = Vehículos.Propietario_FK;

SELECT Propietario_FK
FROM Vehículos
INNER JOIN Reparaciones
ON Vehículos.Matrícula_PK = Reparaciones.Matrícula_FK;

SELECT Reparación_PK
FROM Reparaciones
INNER JOIN Factura
ON Reparaciones.Reparación_PK = Factura.Reparación_FK;

--Reparaciones_PK, Matricula, Kilometraje, NIF (propiteario), Horas, Material, ImporteTotal:

USE TallerMecánico;

SELECT 
    Reparaciones.Reparación_PK,
    Vehículos.Matrícula_PK AS Matrícula,
    Vehículos.Kilometraje,
    Clientes.NIF_PK AS NIF,
    Reparaciones.Horas,
    Reparaciones.Material,
	Reparaciones.ImportetotaL

FROM Reparaciones
INNER JOIN Vehículos
    ON Reparaciones.Matrícula_FK = Vehículos.Matrícula_PK
INNER JOIN Clientes
    ON Vehículos.Propietario_FK = Clientes.NIF_PK;
