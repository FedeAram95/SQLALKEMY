--- 13-10-2021 11:31:58
--- SQLite
CREATE TABLE Profesor (
id INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(40) NOT NULL,
Apellido VARCHAR(40),
Fecha_Nacimiento DATE,
Salario INT NOT NULL
);

--- 13-10-2021 11:33:33
--- SQLite
/***** ERROR ******
near ".": syntax error
 ----- 
CREATE TABLE Curso (
Codigo INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(40) NOT NULL,
Descripcion VARCHAR(40),
Turno VARCHAR(40),
Cupo INT NOT NULL,
Profesor.id
);
*****/

--- 13-10-2021 11:34:17
--- SQLite
/***** ERROR ******
no such table: curso
 ----- 
SELECT profesor.Apellido , curso.Nombre, curso.turno

FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;
*****/

--- 13-10-2021 11:34:33
--- SQLite
CREATE TABLE Curso (
Codigo INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(40) NOT NULL,
Descripcion VARCHAR(40),
Turno VARCHAR(40),
Cupo INT NOT NULL
);

--- 13-10-2021 11:34:38
--- SQLite
/***** ERROR ******
no such column: curso.PROFESOR_id
 ----- 
SELECT profesor.Apellido , curso.Nombre, curso.turno

FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;
*****/

--- 13-10-2021 11:35:22
--- SQLite
ALTER TABLE Curso ADD Profesor id;

--- 13-10-2021 11:35:33
--- SQLite
/***** ERROR ******
no such column: curso.PROFESOR_id
 ----- 
SELECT profesor.Apellido , curso.Nombre, curso.turno

FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;
*****/

--- 13-10-2021 11:35:48
--- SQLite
/***** ERROR ******
no such column: curso.PROFESOR_id
 ----- 
SELECT profesor.Apellido , curso.Nombre, curso.turno

FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;
*****/

--- 13-10-2021 11:41:49
--- SQLite
INSERT INTO Profesor (id,nombre, apellido,fecha_nacimiento,salario)
VALUES (1, 'Juan','Perez','1990-06-06',55000);

--- 13-10-2021 11:42:27
--- SQLite
INSERT INTO Profesor (id,nombre, apellido,fecha_nacimiento,salario)
VALUES (2, 'Maria Emilia','Paz','1984-07-15',72000);

--- 13-10-2021 11:44:31
--- SQLite
/***** ERROR ******
7 values for 6 columns
 ----- 
INSERT INTO Curso (codigo,nombre, descripcion,cupo,turno,Profesor)
VALUES (101, 'Algoritmos ','Algoritmos y estructuras de datos',20,'Mañana',72000,1);
*****/

--- 13-10-2021 11:44:47
--- SQLite
INSERT INTO Curso (codigo,nombre, descripcion,cupo,turno,Profesor)
VALUES (101, 'Algoritmos ','Algoritmos y estructuras de datos',20,'Mañana',1);

--- 13-10-2021 11:45:38
--- SQLite
INSERT INTO Curso (codigo,nombre, descripcion,cupo,turno,Profesor)
VALUES (102, 'Matematicas Discretas ',NULL ,20,'Tarde',2);

--- 13-10-2021 11:45:48
--- SQLite
/***** ERROR ******
no such column: curso.PROFESOR_id
 ----- 
SELECT profesor.Apellido , curso.Nombre, curso.turno

FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;
*****/

--- 13-10-2021 11:46:08
--- SQLite
SELECT profesor.Apellido , curso.Nombre, curso.turno

FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR;

--- 13-10-2021 12:28:43
--- SQLite
/***** ERROR ******
near "ASC": syntax error
 ----- 
SELECT Profesor.Nombre,Profesor.Apellido, Profesor.Fecha_Nacimiento where Profesor.Fecha_Nacimiento ASC;
*****/

--- 13-10-2021 12:30:03
--- SQLite
SELECT Profesor.Nombre,Profesor.Apellido, Profesor.Fecha_Nacimiento from Profesor ORDER BY Profesor.Fecha_Nacimiento ASC;

--- 13-10-2021 12:41:21
--- SQLite
SELECT * from Profesor WHERE Profesor.salario>=65000;

--- 13-10-2021 12:45:28
--- SQLite
/***** ERROR ******
near "<": syntax error
 ----- 
SELECT * from Profesor WHERE Profesor.Fecha_Nacimiento>'1980-01-01' AND <'1990-01-01';
*****/

--- 13-10-2021 12:45:44
--- SQLite
SELECT * from Profesor WHERE Profesor.Fecha_Nacimiento>'1980-01-01' AND Profesor.Fecha_Nacimiento<'1990-01-01';

--- 13-10-2021 12:48:23
--- SQLite
/***** ERROR ******
near "5": syntax error
 ----- 
SELECT TOP 5 * FROM Profesor;
*****/

--- 13-10-2021 12:49:32
--- SQLite
SELECT * FROM Profesor WHERE Profesor.id<5;

--- 13-10-2021 12:51:35
--- SQLite
SELECT * FROM Profesor WHERE Profesor.Apellido like 'P%';

--- 13-10-2021 12:55:53
--- SQLite
SELECT * from Profesor WHERE Profesor.Fecha_Nacimiento>'1980-01-01' AND Profesor.Fecha_Nacimiento<'1990-01-01'and Profesor.salario>80000;

