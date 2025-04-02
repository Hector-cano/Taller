USE TallerMecánico;
go
insert into Reparaciones( Fecha, Vehículo, Matrícula_FK, Descripción, Material, Horas, ManoObra, ImporteTotal, Facturada)
values
(convert(date,'01/04/2025',105), 'Seat León', '6541-BDG', 'Cambio de pastillas de freno delanteras y ajuste de frenos.', 120, 0.5, 25, 145, 'No'),
(convert(date,'01/04/2025',105), 'Volkswagen Golf', '9238-FJL', 'Reemplazo de la bomba de agua y revisión del sistema de refrigeración', 250, 0.5, 25, 275, 'No'),
(convert(date,'01/04/2025',105), 'Seat León', '6541-BDG', 'Sustitución de la correa de distribución y revisión de los tensores', 350 , 0.5, 25, 375, 'No'),
(convert(date,'01/04/2025',105), 'Volkswagen Golf', '9238-FJL', 'Reparación de la suspensión delantera y sustitución de amortiguadores', 180, 0.5, 25, 205, 'No')