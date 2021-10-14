--- 13-10-2021 10:30:05
--- SQLite
CREATE TABLE Curso (
Id_Curso INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(40) NOT NULL,
Descripcion VARCHAR(40),
Turno VARCHAR(40) NOT NULL
);

--- 13-10-2021 10:32:58
--- SQLite
/***** ERROR ******
table Curso already exists
 ----- 
CREATE TABLE Curso (
Id_Curso INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(40) NOT NULL,
Descripcion VARCHAR(40),
Turno VARCHAR(40) NOT NULL
);

ALTER TABLE Curso ADD Cupo INT;
*****/

--- 13-10-2021 10:33:12
--- SQLite


ALTER TABLE Curso ADD Cupo INT;

--- 13-10-2021 10:36:31
--- SQLite
INSERT INTO Curso (id_curso,nombre, descripcion,turno,cupo)
VALUES (101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35);

--- 13-10-2021 10:37:45
--- SQLite
INSERT INTO Curso (id_curso,nombre, descripcion,turno,cupo)
VALUES (102, 'Matemática Discreta','','Tarde',30);

--- 13-10-2021 10:39:09
--- SQLite
/***** ERROR ******
NOT NULL constraint failed: Curso.Nombre
 ----- 
INSERT INTO Curso (id_curso,nombre, descripcion,turno,cupo)
VALUES (102, NULL ,'','Tarde',30);
*****/

--- 13-10-2021 10:39:43
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: Curso.Id_Curso
 ----- 
INSERT INTO Curso (id_curso,nombre, descripcion,turno,cupo)
VALUES (102, 'IDREPETIDO' ,'','Tarde',30);
*****/

--- 13-10-2021 10:40:39
--- SQLite
UPDATE Curso
  SET cupo='25';

--- 13-10-2021 10:42:34
--- SQLite
delete from Curso
  where nombre='Algoritmos';

--- 14-10-2021 09:09:16
--- SQLite
CREATE TABLE Curso (
  Codigo INT PRIMARY KEY,
  Nombre VARCHAR(40),
  Descripcion VARCHAR(40),
  Cupo int,
  Turno VARCHAR(40));

--- 14-10-2021 09:10:15
--- SQLite
CREATE TABLE Profesor (
  Id INT PRIMARY KEY,
  Nombre VARCHAR(40),
  Apellido VARCHAR(40),
  Salario FLOAT,
  Fecha_Nacimiento DATE);

--- 14-10-2021 09:11:02
--- SQLite
CREATE TABLE Estudiante (
  Legajo INT PRIMARY KEY,
  Nombre VARCHAR(40),
  Apellido VARCHAR(40),
  Carrera VARCHAR(40),
  Fecha_Nacimiento DATE);

--- 14-10-2021 09:31:31
--- SQLite
CREATE TABLE Inscripcion (
  Numero INT PRIMARY KEY,
  Fecha_Hora TIMESTAMP);

--- 14-10-2021 09:39:05
--- SQLite
ALTER TABLE Curso ADD Profesor_Id INT;

--- 14-10-2021 09:39:36
--- SQLite
ALTER TABLE Inscripcion ADD CURSO_CODIGO INT;

--- 14-10-2021 09:39:50
--- SQLite
ALTER TABLE Inscripcion ADD ESTUDIANTE_Legajo INT;

--- 14-10-2021 09:52:47
--- SQLite
INSERT INTO Curso (codigo, nombre, descripcion, cupo, turno, profesor_id)
VALUES (101,'Algoritmos', 'Algoritmos y estructuras de datos',20, 'Mañana',1);

INSERT INTO Curso (codigo, nombre, descripcion, cupo, turno, profesor_id)
VALUES (102,'Matematica Discreta', NULL ,20, 'Tarde',2);

--- 14-10-2021 09:54:52
--- SQLite
INSERT INTO Curso (codigo, nombre, descripcion, cupo, turno, profesor_id)
VALUES (103,'Programacion Java ', 'POO en Java' ,35	, 'Noche',4);

--- 14-10-2021 09:55:32
--- SQLite
INSERT INTO Curso (codigo, nombre, descripcion, cupo, turno, profesor_id)
VALUES (104,'Programacion Web ', NULL , 35	, 'Noche',5);

--- 14-10-2021 09:56:08
--- SQLite
INSERT INTO Curso (codigo, nombre, descripcion, cupo, turno, profesor_id)
VALUES (105,'Programacion C# ', '.NET' , 30	, 'Noche',6);

--- 14-10-2021 09:58:15
--- SQLite
INSERT INTO Profesor (id, nombre, apellido, fecha_nacimiento, salario)
VALUES (1,'Juan', 'Perez' , '1990-06-06',55000);

--- 14-10-2021 09:58:58
--- SQLite
INSERT INTO Profesor (id, nombre, apellido, fecha_nacimiento, salario)
VALUES (2,'Maria Emilia', 'Paz' , '1984-07-15',72000);

--- 14-10-2021 09:59:43
--- SQLite
INSERT INTO Profesor (id, nombre, apellido, fecha_nacimiento, salario)
VALUES (3,'Martin', 'Correa' , '1987-12-07',63000);

--- 14-10-2021 10:00:54
--- SQLite
INSERT INTO Profesor (id, nombre, apellido, fecha_nacimiento, salario)
VALUES (4,'Lucia', 'Diaz' , '1991-02-24',45000);

--- 14-10-2021 10:01:29
--- SQLite
INSERT INTO Profesor (id, nombre, apellido, fecha_nacimiento, salario)
VALUES (5,'Raul', 'Martinez' , '1980-10-15',85000);

--- 14-10-2021 10:07:35
--- SQLite
INSERT INTO Estudiante (legajo, nombre, apellido, carrera, fecha_nacimiento)
VALUES (41258,'Federico', 'Gomez' , 'Mecanica','1995-10-25');

--- 14-10-2021 10:07:56
--- SQLite
INSERT INTO Estudiante (legajo, nombre, apellido, carrera, fecha_nacimiento)
VALUES (68570,'Federico', 'Rios' , 'sistema','1995-10-29');
