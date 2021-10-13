--- 13-10-2021 15:53:21
--- MariaDB
CREATE TABLE persona(
  id INT,
  nombre VARCHAR(40)
  );

--- 13-10-2021 15:54:15
--- MariaDB
/***** ERROR ******
ER_PARSE_ERROR (conn=841, no: 1064, SQLState: 42000) You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TO persona (id, nombre)
VALUES(1, 'Fede')' at line 1
sql: INSERT TO persona (id, nombre)
VALUES(1, 'Fede'); - parameters:[]
 ----- 
INSERT TO persona (id, nombre)
VALUES(1, 'Fede');
*****/

--- 13-10-2021 17:04:56
--- MariaDB
INSERT INTO persona (id,nombre)
VALUES (1,'Fede');

--- 13-10-2021 17:05:03
--- MariaDB
INSERT INTO persona (id,nombre)
VALUES (3,'Fede');

--- 13-10-2021 17:05:07
--- MariaDB
INSERT INTO persona (id,nombre)
VALUES (8,'Fede');

--- 13-10-2021 17:05:14
--- MariaDB
INSERT INTO persona (id,nombre)
VALUES (22,'Carlos');

--- 13-10-2021 17:05:21
--- MariaDB
INSERT INTO persona (id,nombre)
VALUES (223,'Eric');

--- 13-10-2021 17:05:34
--- MariaDB
INSERT INTO persona (id,nombre)
VALUES (6,'Juan');

--- 13-10-2021 17:06:02
--- MariaDB
SELECT * FROM persona;

--- 13-10-2021 17:07:16
--- MariaDB
 alter table persona
  add primary key (id);

--- 13-10-2021 17:07:38
--- MariaDB
SELECT * FROM persona;

