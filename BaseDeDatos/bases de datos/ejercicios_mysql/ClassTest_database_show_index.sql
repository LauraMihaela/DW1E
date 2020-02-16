create database if not exists ClassTest charset utf8mb4 collate utf8mb4_unicode_ci;
use ClassTest;
create table if not exists student
(
idS char(5),
dniS char (9) not null,
nameS varchar (30),
study varchar (30),
ageS numeric(2,0),

constraint pk_idS primary key (idS),
constraint indxUQ_dniS unique index (dniS)
);
create table if not exists teacher
(
idT char (5),
dniT char (9) not null,
nameT varchar(30),
ageT numeric (2,0),
idS char(5),
constraint pk_idT primary key(idT),
constraint fk_student_dniS foreign key (idS) references student (idS),
constraint indxUQ_dniT unique index (dniT) 

);
show indexes from student;
show indexes from teacher;