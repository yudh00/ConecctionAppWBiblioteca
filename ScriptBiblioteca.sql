--CREATE DATABASE DB_BIBLIOTECA;
--GO

--USE DB_BIBLIOTECA;
--GO

--CREATE SCHEMA BIBLIOTECA;
--GO

--CREATE TABLE BIBLIOTECA.AUTOR
--(
--  CODIGO INT PRIMARY KEY,
--  NOMBRE VARCHAR(100) NOT NULL
--);
--GO

--CREATE TABLE BIBLIOTECA.LIBRO
--(
--  CODIGO_LIBRO INT PRIMARY KEY,
--  TITULO VARCHAR(255) NOT NULL,
--  ISBN VARCHAR(20) NOT NULL,
--  PAGINAS INT NOT NULL,
--  EDITORIAL VARCHAR(100)
--);
--GO

--CREATE TABLE BIBLIOTECA.AUTOR_LIBRO
--(
--  CODIGO_AUTOR INT NOT NULL,
--  CODIGO_LIBRO INT NOT NULL,
--  PRIMARY KEY (CODIGO_AUTOR, CODIGO_LIBRO),
--  FOREIGN KEY (CODIGO_AUTOR) REFERENCES BIBLIOTECA.AUTOR(CODIGO),
--  FOREIGN KEY (CODIGO_LIBRO) REFERENCES BIBLIOTECA.LIBRO(CODIGO_LIBRO)
--);
--GO

--CREATE TABLE BIBLIOTECA.EJEMPLAR
--(
--  CODIGO_EJEMPLAR INT PRIMARY KEY,
--  CODIGO_LIBRO INT NOT NULL,
--  FOREIGN KEY (CODIGO_LIBRO) REFERENCES BIBLIOTECA.LIBRO(CODIGO_LIBRO)
--);
--GO

--CREATE TABLE BIBLIOTECA.USUARIO
--(
--  CODIGO_USUARIO INT PRIMARY KEY,
--  NOMBRE VARCHAR(100),
--  APELLIDOS VARCHAR(100),
--  TELEFONO VARCHAR(15),
--  DIRECCION VARCHAR(255),
--  CARRERA VARCHAR(100)
--);
--GO

--CREATE TABLE BIBLIOTECA.PRESTAMO
--(
--  CODIGO_USUARIO INT,
--  CODIGO_EJEMPLAR INT,
--  FECHA_PRESTAMO DATETIME NOT NULL,
--  FECHA_DEVOLUCION DATETIME NOT NULL,
--  PRIMARY KEY (CODIGO_USUARIO, CODIGO_EJEMPLAR),
--  FOREIGN KEY (CODIGO_EJEMPLAR) REFERENCES BIBLIOTECA.EJEMPLAR(CODIGO_EJEMPLAR),
--  FOREIGN KEY (CODIGO_USUARIO) REFERENCES BIBLIOTECA.USUARIO(CODIGO_USUARIO)
--);
--GO

-- Insertar datos en 'AUTOR'
--INSERT INTO BIBLIOTECA.AUTOR (CODIGO, NOMBRE) VALUES
--(1, 'Gabriel García Márquez'),
--(2, 'J.K. Rowling'),
--(3, 'George Orwell'),
--(4, 'Isabel Allende'),
--(5, 'Stephen King'),
--(6, 'Haruki Murakami'),
--(7, 'Jane Austen'),
--(8, 'Ernest Hemingway');
--GO

---- Insertar datos en 'LIBRO'
--INSERT INTO BIBLIOTECA.LIBRO (CODIGO_LIBRO, TITULO, ISBN, PAGINAS, EDITORIAL) VALUES
--(101, 'Cien Años de Soledad', '978-8439716388', 471, 'Editorial Sudamericana'),
--(102, 'Harry Potter y la Piedra Filosofal', '978-8478884452', 223, 'Salamandra'),
--(103, '1984', '978-0451524935', 328, 'Secker and Warburg'),
--(104, 'La Casa de los Espíritus', '978-8401352836', 448, 'Plaza & Janés'),
--(105, 'It', '978-1501142970', 1138, 'Viking Press'),
--(106, 'Kafka en la Orilla', '978-8483835036', 608, 'Tusquets Editores'),
--(107, 'Orgullo y Prejuicio', '978-0141439518', 432, 'Penguin Books'),
--(108, 'El Viejo y el Mar', '978-8499897677', 132, 'Debolsillo'),
--(109, 'El Resplandor', '978-0385121675', 447, 'DoubleDay'),
--(110, 'La Metamorfosis', '978-8491052273', 96, 'Penguin Clásicos'),
--(111, 'El Alquimista', '978-0061122415', 208, 'HarperCollins'),
--(112, 'El Amor en los Tiempos del Cólera', '978-8497592451', 348, 'Penguin Random House'),
--(113, 'Las Aventuras de Tom Sawyer', '978-8491052426', 274, 'Penguin Clásicos'),
--(114, 'Matar a un Ruiseñor', '978-0060935467', 281, 'J.B. Lippincott Company'),
--(115, 'Fahrenheit 451', '978-1451673319', 158, 'Simon & Schuster');
--GO

---- Insertar datos en 'AUTOR_LIBRO'
--INSERT INTO BIBLIOTECA.AUTOR_LIBRO (CODIGO_AUTOR, CODIGO_LIBRO) VALUES
--(1, 101),
--(2, 102),
--(3, 103),
--(4, 104),
--(5, 105),
--(6, 106),
--(7, 107),
--(8, 108),
--(5, 109),
--(3, 110),
--(6, 111),
--(1, 112),
--(5, 113),
--(8, 114),
--(3, 115);
--GO

---- Insertar datos en 'EJEMPLAR'
--INSERT INTO BIBLIOTECA.EJEMPLAR (CODIGO_EJEMPLAR, CODIGO_LIBRO) VALUES
--(1001, 101),
--(1002, 101),
--(1003, 102),
--(1004, 102),
--(1005, 103),
--(1006, 103),
--(1007, 104),
--(1008, 104),
--(1009, 105),
--(1010, 105),
--(1011, 106),
--(1012, 106),
--(1013, 107),
--(1014, 107),
--(1015, 108);
--GO

---- Insertar datos en 'USUARIO'
--INSERT INTO BIBLIOTECA.USUARIO (CODIGO_USUARIO, NOMBRE, APELLIDOS, TELEFONO, DIRECCION, CARRERA) VALUES
--(2001, 'Juan', 'Pérez', '987654321', 'Calle Falsa 123, Ciudad', 'Literatura'),
--(2002, 'Ana', 'Martínez', '123456789', 'Avenida Siempre Viva 456, Ciudad', 'Historia'),
--(2003, 'Luis', 'Gómez', '234567890', 'Diagonal 789, Ciudad', 'Filosofía'),
--(2004, 'Sofía', 'López', '345678901', 'Pasaje 101, Ciudad', 'Biología'),
--(2005, 'Carlos', 'Fernández', '456789012', 'Carretera 202, Ciudad', 'Medicina'),
--(2006, 'Lucía', 'García', '567890123', 'Boulevard 303, Ciudad', 'Ingeniería'),
--(2007, 'Marcos', 'Ruiz', '678901234', 'Callejón 404, Ciudad', 'Matemáticas'),
--(2008, 'Isabel', 'Morales', '789012345', 'Alameda 505, Ciudad', 'Física');
--GO

---- Insertar datos en 'PRESTAMO'
--INSERT INTO BIBLIOTECA.PRESTAMO (CODIGO_USUARIO, CODIGO_EJEMPLAR, FECHA_PRESTAMO, FECHA_DEVOLUCION) VALUES
--(2001, 1001, '2023-01-01 10:00:00', '2023-01-15 10:00:00'),
--(2002, 1003, '2023-01-02 10:00:00', '2023-01-16 10:00:00'),
--(2003, 1005, '2023-01-03 10:00:00', '2023-01-17 10:00:00'),
--(2004, 1007, '2023-01-04 10:00:00', '2023-01-18 10:00:00'),
--(2005, 1009, '2023-01-05 10:00:00', '2023-01-19 10:00:00'),
--(2006, 1011, '2023-01-06 10:00:00', '2023-01-20 10:00:00'),
--(2007, 1013, '2023-01-07 10:00:00', '2023-01-21 10:00:00'),
--(2008, 1015, '2023-01-08 10:00:00', '2023-01-22 10:00:00');
--GO

