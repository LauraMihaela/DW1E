/*1*/
select film_id, title,max(length)
from sakila.film; 
  /* (from)  this will be executate first */
  /*2*/
  select film_id,title,length
   from sakila.film
  order by length desc, title limit 10;
  
  /*3*/
  select film_id,title,rental_duration,replacement_cost
  from sakila.film
  where (replacement_cost between 20 and 25) and (rental_duration >=5);
  /*4*/
  select film_id, title, rental_duration, sum(replacement_cost) /*(4)*/
  from sakila.film /* (1)*/
  group by rental_duration   /*( 2)*/
  having sum(replacement_cost) >4000; /* (3)*/
  /* having es el where bay bot group by */
  
   select film_id, title, rental_duration, sum(replacement_cost) Sum_Replacement /*(4)*/
  from sakila.film /* (1)*/
  group by rental_duration   /*( 2)*/
  having sum(replacement_cost) >4000; /* (3)*/
  /* having es el where bay bot group by */
  
  select customer_id, first_name, last_name
  from sakila.customer
  where last_name regexp '^B[A-R]*\TT$';
   select customer_id, first_name, last_name
  from sakila.customer
    where last_name regexp '^B[A-R]*\T{2}$';
    select customer_id, first_name, last_name
  from sakila.customer
    where last_name regexp '^B[^A-R]*0{2}KS$';
    select customer_id, first_name, last_name
  from sakila.customer
    where last_name regexp '^.[^A-R]*$';
    
    
    sakila.payment
    show customer_id, amout average
    grouing by customer_id if amount average greater than 100
    
    select customer_id,avg(amount)
    from sakila.payment
    group by customer_id
    having avg(amount) > 5;
    
  
  
  
