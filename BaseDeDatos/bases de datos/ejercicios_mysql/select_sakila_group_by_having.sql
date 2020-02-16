use sakila;
select * from country;
select * from country limit 3,5;
select * from country limit 3;

select last_name,first_name from actor;
select concat(last_name,',',first_name)'Full Name' from actor;
/*select concat(last_name,',',first_name) Full_Name from actor;*/
/*
1 COUNT
2 SUM
3 AVG (LA MEDIA)
4 MIN
5 MAX

****************************/
select * from actor;
select count(*) from actor;
select count(*) from actor where first_name like 'John';
select sum(amount) 'Total amount' from payment where amount > 3;
select amount from payment where amount > 3;
select amount 'Total amount' from payment where amount > 3;
select sum(amount) 'Total amount' from payment ;
select sum(amount) 'Total amount' from payment where amount > 0;
select avg(amount) 'Amount Average' from payment where amount >4;
select avg(amount) 'Amount Average' from payment 
where amount >4 and amount <6;
select min(amount) 'Minimum amount' from payment;
select min(amount) 'Minimum amount' from payment where amount >2;
select max(amount) 'Maximum amount' from payment where amount >2;
select max(amount) 'Maximum amount' from payment where amount <6;
select max(amount) 'Maximum amount' from payment where amount >6;

select last_name,first_name from customer order by last_name asc;
/* es default valure asc**/
select last_name,first_name from customer order by last_name,first_name;
insert into customer (customer_id,store_id,last_name,first_name,addres_id) values (12345,123,'ADAM','ALFONS',12345);
create table if not exists pruebaOrden
(
id char(2) ,
last_nameCustomer varchar(30),
first_nameCustomer varchar(30),
amount decimal(6,2),
constraint pk_pruebaOrden primary key(id) 
);
insert into pruebaOrden values
('aa','Smith','Alfons',1235.12),
('ab','Smith','Xafier',1235),
('ac','Smith','Alexander',125),
('ad','Smith','Zacarias',566.50),
('ae','Ruiz','Nieves',154.50);

select * from pruebaOrden order by last_nameCustomer desc,first_nameCustomer desc;

select  rental_id, avg (amount) 'Avrage Amount'
 from payment
 group by rental_id;
 select rental_id from payment order by rental_id;
 select rental_id,amount from payment order by rental_id;
 select count(rental_id) from payment group by rental_id having count (rental_id)>1 ;/*??????**/
select last_nameCustomer, sum(amount)
from pruebaOrden
group by last_nameCustomer
/*where sum(amont) > 4000;// nu se folosec¡ste where **/
having sum(amount) > 4000 or sum(amount) < 6000;

select last_nameCustomer,sum(amount)
from pruebaorden
group by last_nameCustomer
/*where sum(amont) > 4000;// nu se folosec¡ste where  ci having pt ca o agregate function sum(amount)**/
having sum(amount) > 1500 or sum(amount) < 4000;

select last_nameCustomer, sum(amount)
from pruebaOrden
group by last_nameCustomer
/*where sum(amont) > 4000;// nu se folosec¡ste where **/
having sum(amount) > 1500 or sum(amount) < 4000;


select last_nameCustomer,sum(amount)
from pruebaOrden
group by last_nameCustomer like 'Zacarias'
/*where sum(amont) > 4000;// nu se folosec¡ste where  ci having pt ca o agregate function sum(amount)**/
having sum(amount) > 1500 or sum(amount) < 4000;