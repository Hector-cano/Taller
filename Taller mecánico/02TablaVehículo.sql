USE TallerMecánico

Create table Vehículos(
Matrícula_PK char(8) primary key,
Marca nvarchar(30),
Modelo nvarchar(30),
AñoMatriculación char(4),
Kilometraje char (30),
TipoCombustible nvarchar(30),
TipoCambio char(30),
Potencia char(10),
Propietario_FK char(9)
)