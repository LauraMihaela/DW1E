select * from sakila.actor;
select * from sakila.actor where actor_id>=180 and actor_id<=200;
select actor_id,last_update from sakila.actor where actor_id>=190 and actor_id<=200;
select actor_id,last_update from sakila.actor where actor_id between 190 and 200;
select customer_id,amount,payment_date
from sakila.payment
where amount>4.01;
select amount from sakila.payment;
select * from sakila.inventory;
select inventory_id,store_id
from sakila.inventory
where store_id=2;
select payment_date from sakila.payment;
select customer_id,payment_date from sakila.payment
where payment_date>'2005-05-31' and payment_date<'2005-07-01';
select customer_id,payment_date from sakila.payment
where month(payment_date)=6;
select customer_id,payment_date from sakila.payment
where hour(payment_date)=15;
select customer_id,payment_date from sakila.payment
where hour(payment_date)=15 and minute(payment_date)>20;