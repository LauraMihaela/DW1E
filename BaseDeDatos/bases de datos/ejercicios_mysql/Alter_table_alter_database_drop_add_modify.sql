alter database clinicsante character set utf8mb4 collate utf8mb4_unicode_ci;
create table if not exists borrar
(
nombre varchar(20) primary key
);
alter table clinicsante.doctor character set utf8mb4 collate utf8mb4_unicode_ci; 

alter table student add column (town2 varchar(30), country varchar(30));
alter table teacher add column salary decimal(6,2);
alter table student add column town2 varchar(30);
alter table student modify town2 char(30);
show table status from classtest;
use information_schema;
select table_name,
column_name,
constraint_name,

referenced_table_name,
referenced_column_name
from key_column_usage
where table_schema="classtest";

alter table classtest.student drop column town2; 


create table if not exists classtest.borrar
(
nombre varchar(30)
);
drop table classtest.borrar;
drop table clinicsante.borrar;
drop table clinicsante.doctor;
drop table clinicsante.nurse;
drop table clinicsante.doctor_nurse;
drop table clinicsante.specialization;
drop table clinicsante.staff_phone;
drop table clinicsante.staff;

create table if not exists doctor
(
dni char(9),
specialist char(2),
dni_super char(9),
constraint doctor_dni primary key (dni),
constraint doctor_dni foreign key (dni) references staff(dni),
constraint doctor_dni_super foreign key (dni_super) references staff(dni),
constraint doctor_specialist foreign key (specialist) references specialization(id_specialist)


);
alter table clinicsante.staff modify dni char(9);
alter table clinicsante.doctor_nurse drop doctor_nurse_dnidoctor;
ALTER TABLE clinicsante.doctor_nurse DROP FOREIGN KEY `id_name_fk`;
alter table clinicsante.staff  drop primary key dni;
 


