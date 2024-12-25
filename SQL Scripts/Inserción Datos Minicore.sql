use MiniCore

INSERT INTO Departamento (NombreDepartamento)
VALUES 
('IT'),
('Desarrollo'),
('Dise�o'),
('Marketing'),
('Recursos Humanos'),
('Ventas');


INSERT INTO Empleado (NombreEmpleado)
VALUES 
('Carlos Sanchez'),
('Mar�a L�pez'),
('Pedro Alvarez'),
('Luc�a Garc�a'),
('Ana Torres');


INSERT INTO Gastos (Fecha, Descripcion, Monto, IdEmpleado, IdDepartamento)
VALUES
('2024-01-05', 'Compra de licencias de software', 250.00, 1, 1), -- IT
('2024-01-10', 'Redise�o de p�gina web', 500.00, 3, 3), -- Dise�o
('2024-01-15', 'Campa�a publicitaria', 750.00, 4, 4), -- Marketing
('2024-01-20', 'Reparaci�n de servidores', 300.00, 1, 1), -- IT
('2024-01-25', 'Capacitaci�n en nuevas tecnolog�as', 200.00, 2, 2), -- Desarrollo
('2024-01-28', 'Dise�o de logotipo', 400.00, 3, 3), -- Dise�o
('2024-02-01', 'Optimizaci�n SEO', 600.00, 4, 4); -- Marketing
