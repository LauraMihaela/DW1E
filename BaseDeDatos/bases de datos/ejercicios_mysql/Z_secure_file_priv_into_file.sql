use sakila;
select payment_id,staff_id,amount
from payment;
select payment_id,staff_id,max(amount)
from payment;
select payment_id,staff_id,max(amount)
from payment
group by payment_id;
SHOW VARIABLES LIKE "secure_file_priv";
select payment_id,staff_id,max(amount)
into outfile'C:\\laura2.txt'
fields terminated by '*' optionally enclosed by '"'
lines terminated by '\n'
from payment
group by payment_id;
-- nu merge cu C, trebuie sa fac partitia cu Z--
use dw1e;

create table if not exists dw1e.retriveData as (select payment_id,staff_id,max(amount) from sakila.payment where 1=2);
select * from dw1e.retriveData;
load data
infile 'z:\\laura2.txt'
into table dw1e.retriveData
fields terminated by '*' optionally enclosed by'"'
lines terminated by '\n';