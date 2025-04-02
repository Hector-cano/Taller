USE TallerMecánico

Create table Clientes(
NIF_PK char(9) primary key,
Nombre nvarchar(50),
Apellido1 nvarchar(50),
Apellido2 nvarchar(50),
Dirección nvarchar(100),
Población nvarchar(50),
CP char(5),
Teléfono char(11),
Correo nvarchar(50)
)