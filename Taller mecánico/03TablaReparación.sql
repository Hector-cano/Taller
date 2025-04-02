USE TallerMecánico

Create table Reparaciones(
Reparación_PK smallint identity(1,1) primary key,
Fecha date,
Vehículo nvarchar(30),
Matrícula_FK char(8),
Descripción NVARCHAR(300),
Material MONEY,
Horas DECIMAL(4,2),
ManoObra MONEY,
ImporteTotal MONEY,
Facturada char(2)
)