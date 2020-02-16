select * from sakila.actor;


set sql_safe_update=0;/***********noooo**************/
update dw1e.actorsfromsakila set last_name="Eugenio" where first_name="Eugenio";/***********noooo**************/
create table if not exists dw1e.actorsFromSakila
as (select * from sakila.actor where actor_id between 10 and 20);
select * from dw1e.actorsfromsakila;

create table if not exists dw1e.actorsNoData
as (select actor_id,first_name,last_name from sakila.actor where 1=2);
select * from dw1e.actorsNoData;

select all actor_id,last_name from sakila.actor;
select  top 3 actor_id from sakila.actor order by desc;/***********noooo**************/
select  * from dw1e.actorsfromsakila;
select  distinct from dw1e.actorsfromsakila;/***********noooo**************/
select  distinct * from dw1e.actorsfromsakila;
select  distinct last_name from dw1e.actorsfromsakila;
select  distinctrow * from dw1e.actorsfromsakila;
select  distinctrow last_name from dw1e.actorsfromsakila;

insert into dw1e.actorsfromsakila values
(21,'Eugenio','Lòpez','2019-01-01'),
(22,'Eugenio','Lòpez','2018-01-01'),
(21,'Eugenio','Lòpez','2019-01-01');

insert into dw1e.actorsfromsakila values
(21,'Eugenio','Eugenio','2019-01-01');/***********noooo**************/

select * from dw1e.actorsfromsakila where first_name like 'c%';
select * from dw1e.actorsfromsakila where first_name like '%a';
select * from dw1e.actorsfromsakila where first_name like 'u%a';

select * from sakila.actor;
select * from sakila.actor where first_name like 'c______n';/*****underscore es un caracter*********/
select * from sakila.actor where first_name like 'c_____n';
select distinct first_name from sakila.actor where first_name like 'c_____n';
select distinct first_name from sakila.actor where first_name like '__t%e_';
select distinct first_name from sakila.actor where first_name like '__t%e_' and last_name like '%son';
select distinct first_name,last_name from sakila.actor where first_name like '__t%e_' and last_name like '%son';
select * from sakila.inventory where last_update is null;
select * from sakila.inventory where last_update is not null;