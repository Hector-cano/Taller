USE TallerMec�nico

Create table Factura(
Albar�n smallint,
Factura_PK smallint primary key,
Reparaci�n_FK smallint,
Fecha date,
DatosCliente char(9),
Matr�cula char(8),
Kilometraje char (30),
Importe MONEY,
ImporteIVA MONEY,
ImporteTotal MONEY,
)