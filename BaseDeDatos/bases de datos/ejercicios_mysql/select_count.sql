use dw1e;
create table if not exists pruebaOrden
(
id char(2) primary key,
last_nameCustomer varchar(30),
first_nameCustomer varchar(30),
amount decimal(7,2)

);
insert into pruebaOrden values
('a1','Smith','Alfons',12356.12),
('a2','Smith','Xafier',1235),
('a3','Smith','Alexander',125),
('a4','Smith','Zacarias',566.50),
('a5','Ruiz','Nieves',154.50);

select * 
from pruebaOrden
 order  by last_nameCustomer desc,first_nameCustomer desc;


select count(*) 
from dw1e.pruebaorden
 where last_nameCustomer like 's%h' and 
 first_nameCustomer like '%s' and
 amount > 2000;
 select * 
 from dw1e.pruebaorden 
 group by last_nameCustomer;
  select id,last_nameCustomer,avg(amount)  
  from dw1e.pruebaorden 
  group by last_nameCustomer;
  select id,last_nameCustomer,avg(amount)
  from dw1e.pruebaorden;
  select id,last_nameCustomer,avg(amount)
  from dw1e.pruebaorden
  group by last_nameCustomer
  having sum(amount) >2000 and avg(amount) >2000;