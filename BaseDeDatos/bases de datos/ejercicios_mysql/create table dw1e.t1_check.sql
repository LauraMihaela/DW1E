create table dw1e.t1

(
check (c1>c2),
c1 int check (c1>c2),
c2 int check (c2>10),
c3 int check (c3<100),
constraint c1_nonzero check (c1<>0),
check (c1>c3)
);
create table dw1e.t2
(
c1 int,
c2 int,
c3 int
);


insert into dw1e.t1 values (10,10,100);
rename table dw1e.t1 to dw1e.checkTable;
show create table dw1e.t2;
alter table dw1e.t2 change c3 col03
alter table dw1e.t1 to dw1e.checkTable;
alter table dw1e.checkTable change c1 col01;





alter table dw1e change c3 col03 int;

insert into dw1e.t2 (col01,col03) values (100,'Domingo'),(200,100.67,'jueve'),(400,123.45,'viernes');
insert into dw1e.t1 values (120,10,90);
select * from dw1e.t2;
set sql_safe_updates=0;
update dw1e.t2 set col03='lunes' where col01=100 or col01=120;
