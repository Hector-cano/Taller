USE TallerMec�nico;
go
insert into Reparaciones( Fecha, Veh�culo, Matr�cula_FK, Descripci�n, Material, Horas, ManoObra, ImporteTotal, Facturada)
values
(convert(date,'01/04/2025',105), 'Seat Le�n', '6541-BDG', 'Cambio de pastillas de freno delanteras y ajuste de frenos.', 120, 0.5, 25, 145, 'No'),
(convert(date,'01/04/2025',105), 'Volkswagen Golf', '9238-FJL', 'Reemplazo de la bomba de agua y revisi�n del sistema de refrigeraci�n', 250, 0.5, 25, 275, 'No'),
(convert(date,'01/04/2025',105), 'Seat Le�n', '6541-BDG', 'Sustituci�n de la correa de distribuci�n y revisi�n de los tensores', 350 , 0.5, 25, 375, 'No'),
(convert(date,'01/04/2025',105), 'Volkswagen Golf', '9238-FJL', 'Reparaci�n de la suspensi�n delantera y sustituci�n de amortiguadores', 180, 0.5, 25, 205, 'No')