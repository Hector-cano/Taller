USE TallerMec�nico

Create table Reparaciones(
Reparaci�n_PK smallint identity(1,1) primary key,
Fecha date,
Veh�culo nvarchar(30),
Matr�cula_FK char(8),
Descripci�n NVARCHAR(300),
Material MONEY,
Horas DECIMAL(4,2),
ManoObra MONEY,
ImporteTotal MONEY,
Facturada char(2)
)