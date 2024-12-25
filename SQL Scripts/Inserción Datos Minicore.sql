use MiniCore

INSERT INTO Departamento (NombreDepartamento)
VALUES 
('IT'),
('Desarrollo'),
('Diseño'),
('Marketing'),
('Recursos Humanos'),
('Ventas');


INSERT INTO Empleado (NombreEmpleado)
VALUES 
('Carlos Sanchez'),
('María López'),
('Pedro Alvarez'),
('Lucía García'),
('Ana Torres');


INSERT INTO Gastos (Fecha, Descripcion, Monto, IdEmpleado, IdDepartamento)
VALUES
('2024-01-05', 'Compra de licencias de software', 250.00, 1, 1), -- IT
('2024-01-10', 'Rediseño de página web', 500.00, 3, 3), -- Diseño
('2024-01-15', 'Campaña publicitaria', 750.00, 4, 4), -- Marketing
('2024-01-20', 'Reparación de servidores', 300.00, 1, 1), -- IT
('2024-01-25', 'Capacitación en nuevas tecnologías', 200.00, 2, 2), -- Desarrollo
('2024-01-28', 'Diseño de logotipo', 400.00, 3, 3), -- Diseño
('2024-02-01', 'Optimización SEO', 600.00, 4, 4); -- Marketing
