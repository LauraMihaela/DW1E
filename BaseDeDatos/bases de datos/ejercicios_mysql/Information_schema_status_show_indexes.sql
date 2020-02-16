create database if not exists codigos character set utf8mb4 collate utf8mb4_unicode_ci;
use codigos;
create table if not exists alumnos
(
dni char(9),
name_Student varchar(30),
constraint dni_Student primary key (dni)
);
use INFORMATION_SCHEMA;
SELECT TABLE_NAME,
COLUMN_NAME,
CONSTRAINT_NAME,
REFERENCED_TABLE_NAME,
REFERENCED_COLUMN_NAME
FROM KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA="clinicsante";
/*and table_name="alumnos"
and referenced_column_name is not null;*/
show table status from codigos;
show table status from clinicsante;
use clinicsante;
show indexes from staff;


