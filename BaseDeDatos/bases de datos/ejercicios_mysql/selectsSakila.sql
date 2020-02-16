use sakila;
select payment_id,staff_id,max(amount)
from payment
group by payment_id;
select payment_id,staff_id,max(amount)
into outfile'Z:\\laura2.txt'
fields terminated by '*' optionally enclosed by '*'
lines terminated by '\n'
from payment
group by payment_id;

use dw1e;

create table if not exists dw1e.retriveData as (select payment_id,staff_id,max(amount) from sakila.payment where 1=2);
select * from dw1e.retriveData;
load data
infile 'z:\\laura2.txt'
into table dw1e.retriveData
fields terminated by '*' optionally enclosed by'"'
lines terminated by '\n';



/*get the customer_id and the greatest payment_date from customer_id group in sakila.payment*/
select customer_id,max(payment_date)
from sakila.payment
group by customer_id;
/* get the customer_id, sum amount from customer_id group in sakila.payment if the sum*amount is rithr then 150*/
select customer_id,sum(amount)
from sakila.payment
group by customer_id
having sum(amount)>=150;
/* get all fields from table sakila.rental if the day of return_date is between 3 and 5 */
select * from sakila.rental where day (return_date) between 1 and 2;
select * from sakila.rental where day (return_date) between 3 and 5;
select * from sakila.rental where day (return_date) between 1 and 2;

/*   get all felds from the sakila.lamguage table wich name ends in <h>*/
select * from sakila.language where name like '%h'
update sakila.staff set last_update ='2008-03-29 11:30:25' where staff_id=2;/* i modi */
/*  get records from sakila.staff if last_update year is greater than or egual 2007*/
select * from sakila.staff where year(last_update) >='2007';

/*   get records from sakiña.staff where the last_name begins with a capital letter, then    */
select * from sakila.staff where last_name regexp "^[A-RT-Z][a-z]*[ ^s]$";/* ^  means that begins wit that leter and $ it is finish with that leter*/

/*  get from sakila.film_text table all record which title has  tow words */
select * from sakila.film_text where title regexp '[a-zA-Z]*\s[a-zA-Z]*'; 


select(select count(active) from sakila.customer where active=1) 'Active Customer',
(select count(active) from sakila.customer where active=0) 'Inactive Customer',
(select count(*) from sakila.customer) 'Total Customer';

select(select count(active) from sakila.customer where active=1) as 'Active Customer', /*  is a subselect  */
(select count(active) from sakila.customer where active=0) as 'Inactive Customer',
(select count(*) from sakila.customer)  as 'Total Customer';

select(select count(*) from sakila.customer where active=1) as 'Active Customer', /*  is a subselect  */
(select count(*) from sakila.customer where active=0) as 'Inactive Customer',
(select count(*) from sakila.customer)  as 'Total Customer';


select customer_id from sakila.customer where last_name like 'M%';
select customer_id from sakila.customer where email like '%n'; 
select count(*) from sakila.customer where email like '%n'; /*   count record not the field*/
/*how many countries begin by C, has tow words and the first letter of the second word begin by R in sakila.country */
select count(country) from sakila.country where '[C][]';
select country_id ' how many countries begin by C, has tow words and the first letter of the second word begin by R in sakila.country' from sakila.country where country regexp '^C[a-z]*\sR[a-z]*$';
select country_id ' how many countries begin by C, has tow words and the first letter of the second word begin by R in sakila.country' from sakila.country where country regexp '^C[a-z]*R[a-z]*$';
select country_id ' how many countries begin by C, has tow words and the first letter of the second word begin by R in sakila.country', country from sakila.country where country regexp '^C[a-z]*R[a-z]*$';
select country_id ' how many countries begin by C, has tow words and the first letter of the second word begin by R in sakila.country', country from sakila.country where country regexp '^C[a-z]*R[a-z]*$';

/* get five records from sakila.customer table
that match the constraint but from the third one, excluded.The constraint is: address_id greaater or equal then 10*/
select * from sakila.customer where address_id >=10 limit 3,5;
select * from sakila.customer where address_id >=10 limit 3;
select * from sakila.customer where address_id >=10 limit 3,10;
select * from sakila.customer;

/* get records from sakila.film table 
where (rental_rate is greater than 3 and rental_duration less or equal than 5)   or
(length different than : 62,63,113,150 y 18)  */

select * from sakila.film where (rental_rate > 3 and rental_duration <=5)
or length not in (62,63,86,113,150,18) or title not in ('A%','B%');
select * from sakila.film where (rental_rate > 3 and rental_duration <=5)
or length not in (62,63,86,113,150,18) and title not in ('A%','B%');

select * from sakila.film where (rental_rate > 3 and rental_duration <=5)
or (length not in (62,63,86,113,150,18) and title not in ('ACADEMY DINOSAUR'));




select 'sfgsdfsdfsdf' as Columna;
select 120 as MyNumber;
select ( select count(*) from sakila.customer ) as MyNumber;
select 1200 as Mynumber;




