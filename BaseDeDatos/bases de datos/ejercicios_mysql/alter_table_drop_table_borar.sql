alter table student add column town2 varchar(30);

alter table classtest.student drop column town2;



create table if not exists classtest.borrar
(
nombre varchar(30)
);
drop table classtest.borrar;
set sql_safe_update=0;
insert into classtest.student values ('aa123','12345671x','Purificación','Mathematics',34,'Madrid','Spain'),
('aa124','12345677x','Pepe','Mathematics',43,'Sevilla','Spain');

insert into classtest.teacher values('tt123','7894561t','Pedro',45,'aa123',20,20);
update clastest.student set study='Mathematics',age=43 where idS='aa124' ;
update classtest.student set age=age+2 where idS='aa123';
delete from classtest.student where idS='aa124';

alter table classtest.teacher drop foreign key fk_Student_dniS;
truncate classtest.student;
truncate classtest.teacher;
show create table classtest.teacher;
drop table classtest.teacher;
select*from classtest.student;
select*from classtest.teacher;
