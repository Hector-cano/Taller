--Conectar las reparaciones a vehiculos y de vehiculos a clientes :=)


--La siguiente consulta muestra d�nde estan los nexos en las tablas:

USE TallerMec�nico

SELECT NIF_PK
FROM Clientes
INNER JOIN Veh�culos
ON Clientes.NIF_PK = Veh�culos.Propietario_FK;

SELECT Propietario_FK
FROM Veh�culos
INNER JOIN Reparaciones
ON Veh�culos.Matr�cula_PK = Reparaciones.Matr�cula_FK;

SELECT Reparaci�n_PK
FROM Reparaciones
INNER JOIN Factura
ON Reparaciones.Reparaci�n_PK = Factura.Reparaci�n_FK;

--Reparaciones_PK, Matricula, Kilometraje, NIF (propiteario), Horas, Material, ImporteTotal:

USE TallerMec�nico;

SELECT 
    Reparaciones.Reparaci�n_PK,
    Veh�culos.Matr�cula_PK AS Matr�cula,
    Veh�culos.Kilometraje,
    Clientes.NIF_PK AS NIF,
    Reparaciones.Horas,
    Reparaciones.Material,
	Reparaciones.ImportetotaL

FROM Reparaciones
INNER JOIN Veh�culos
    ON Reparaciones.Matr�cula_FK = Veh�culos.Matr�cula_PK
INNER JOIN Clientes
    ON Veh�culos.Propietario_FK = Clientes.NIF_PK;
