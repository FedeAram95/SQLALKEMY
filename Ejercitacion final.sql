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

--- 14-10-2021 10:10:30
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: Estudiante.Legajo
 ----- 
INSERT INTO Estudiante (legajo, nombre, apellido, carrera, fecha_nacimiento)

SELECT Legajo,Carrera FROM Estudiante;


SELECT Legajo, COUNT(carrera) FROM Estudiante;

--- 14-10-2021 11:40:34
--- SQLite
SELECT Legajo FROM Estudiante;

--- 14-10-2021 11:40:47
--- SQLite
SELECT nombre,Legajo FROM Estudiante;

--- 14-10-2021 11:45:57
--- SQLite
SELECT nombre,Legajo FROM Estudiante  WHERE (SELECT count (*) FROM Inscripcion);

--- 14-10-2021 11:46:50
--- SQLite
SELECT nombre,Legajo FROM Estudiante  WHERE (SELECT count (*) FROM Inscripcion where numero = curso_codigo);

--- 14-10-2021 12:05:20
--- SQLite
/***** ERROR ******
no such column: estudiante_legajo
 ----- 
SELECT * FROM Estudiante  INNER JOIN Curso ON estudiante_legajo=codigo;
*****/

--- 14-10-2021 12:05:48
--- SQLite
SELECT * FROM Estudiante  INNER JOIN Curso ON estudiante.Legajo=Curso.Codigo;

--- 14-10-2021 12:06:34
--- SQLite
SELECT legajo FROM Estudiante  INNER JOIN Curso ON estudiante.Legajo = Curso.Codigo;


select * from estudiante e, inscripcion i, curso c
where estudiante_legajo = e.legajo
and curso_codigo = c.codigo;

select * from estudiante e, inscripcion i, curso c
where estudiante_legajo = e.legajo
and curso_codigo = c.codigo;

--- 14-10-2021 12:10:45
--- SQLite
/***** ERROR ******

--- 14-10-2021 12:13:13
--- SQLite
select Estudiante.Legajo, Estudiante.Nombre from estudiante INNER JOIN Curso on Estudiante.Legajo=Curso.Codigo;

--- 14-10-2021 12:13:31
--- SQLite
select Estudiante.Legajo, Estudiante.Nombre, Curso.Codigo from estudiante INNER JOIN Curso on Estudiante.Legajo=Curso.Codigo;

--- 14-10-2021 12:14:45
--- SQLite
select * from Estudiante e, Curso c, Inscripcion i ;
select * from Estudiante e, Curso c, Inscripcion i where e.Legajo = i.ESTUDIANTE_Legajo;

--- 14-10-2021 12:20:25
--- SQLite
select * from Estudiante e, Inscripcion i where e.Legajo = i.ESTUDIANTE_Legajo;

--- 14-10-2021 12:21:13
--- SQLite
select estudiante_legajo, COUNT(curso_codigo) from Estudiante e, Inscripcion i where e.Legajo = i.ESTUDIANTE_Legajo;

---Consultas ejercitacion final
select estudiante_legajo,nombre, COUNT(curso_codigo) from Estudiante e, Inscripcion i where e.Legajo = i.ESTUDIANTE_Legajo;

select estudiante_legajo,nombre, apellido, COUNT(curso_codigo) from Estudiante e, Inscripcion i where e.Legajo = i.ESTUDIANTE_Legajo;

select estudiante_legajo,nombre, apellido, COUNT(curso_codigo) from Estudiante e, Inscripcion i where (e.Legajo = i.ESTUDIANTE_Legajo AND i.CURSO_CODIGO>1);

select * from Estudiante e, Inscripcion i where (e.Legajo = i.ESTUDIANTE_Legajo AND i.CURSO_CODIGO=0);

select * from Estudiante e, Inscripcion i, Profesor p where (e.Legajo = i.ESTUDIANTE_Legajo AND i.CURSO_CODIGO=p.Apellido Like '%PEREZ');

select * from Estudiante e, Inscripcion i, Profesor p where (e.Legajo = i.ESTUDIANTE_Legajo AND i.CURSO_CODIGO=p.Apellido Like '%PEREZ''%PAZ');

SELECT codigo, numero, id, legajo FROM Curso i, Inscripcion i, Profesor p, Estudiante e;

