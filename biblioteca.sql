-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

-- Tabla de usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ape1 VARCHAR(100) NOT NULL,
    ape2 VARCHAR(100) NOT NULL,
    rol ENUM('admin', 'registrado') DEFAULT 'registrado'
);

-- Tabla de libros
CREATE TABLE IF NOT EXISTS libros (
    ISBN VARCHAR(13) PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL
);

-- Tabla de préstamos
CREATE TABLE IF NOT EXISTS prestamos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ISBN VARCHAR(13) NOT NULL,
    fecha_desde DATE DEFAULT CURRENT_DATE,
    fecha_hasta DATE,
    FOREIGN KEY (ISBN) REFERENCES libros(ISBN)
);

-- Inserciones de ejemplo para la tabla de usuarios
INSERT INTO usuarios (nombre, ape1, ape2, rol) VALUES
('Juan', 'Pérez', 'Gómez', 'admin'),
('María', 'López', 'Fernández', 'registrado'),
('Carlos', 'Martínez', 'Ruiz', 'registrado'),
('Ana', 'García', 'Sánchez', 'registrado');

-- Inserciones de ejemplo para la tabla de libros
INSERT INTO libros (ISBN, titulo, autor) VALUES
('9780307474728', 'Cien años de soledad', 'Gabriel García Márquez'),
('9788491052069', 'Don Quijote de la Mancha', 'Miguel de Cervantes'),
('9780451524935', '1984', 'George Orwell'),
('9780307389732', 'El amor en los tiempos del cólera', 'Gabriel García Márquez'),
('9788408172175', 'La sombra del viento', 'Carlos Ruiz Zafón');

-- Inserciones de ejemplo para la tabla de préstamos
INSERT INTO prestamos (ISBN, fecha_desde, fecha_hasta) VALUES
('9780307474728', '2024-01-01', '2024-01-15'),
('9788491052069', '2024-01-05', '2024-01-20'),
('9780451524935', '2024-01-10', '2024-01-25');
