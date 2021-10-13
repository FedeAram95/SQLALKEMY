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

