USE TallerMec�nico

Create table Clientes(
NIF_PK char(9) primary key,
Nombre nvarchar(50),
Apellido1 nvarchar(50),
Apellido2 nvarchar(50),
Direcci�n nvarchar(100),
Poblaci�n nvarchar(50),
CP char(5),
Tel�fono char(11),
Correo nvarchar(50)
)