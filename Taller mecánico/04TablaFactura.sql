USE TallerMecánico

Create table Factura(
Albarán smallint,
Factura_PK smallint primary key,
Reparación_FK smallint,
Fecha date,
DatosCliente char(9),
Matrícula char(8),
Kilometraje char (30),
Importe MONEY,
ImporteIVA MONEY,
ImporteTotal MONEY,
)