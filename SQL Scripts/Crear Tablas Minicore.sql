use MiniCore

-- Crear tabla Departamento
CREATE TABLE Departamento (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    NombreDepartamento NVARCHAR(100) NOT NULL
);

-- Crear tabla Empleado
CREATE TABLE Empleado (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    NombreEmpleado NVARCHAR(100) NOT NULL
);

-- Crear tabla Gastos
CREATE TABLE Gastos (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Fecha DATETIME NOT NULL,
    Descripcion NVARCHAR(255) NOT NULL,
    Monto DECIMAL(10, 2) NOT NULL,
    IdEmpleado INT NOT NULL,
    IdDepartamento INT NOT NULL,
    FOREIGN KEY (IdEmpleado) REFERENCES Empleado(Id),
    FOREIGN KEY (IdDepartamento) REFERENCES Departamento(Id)
);
