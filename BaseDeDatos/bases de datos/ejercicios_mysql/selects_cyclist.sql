-- all team names. i want to see name, director
select nomequipo, director
from cyclist.equipo;

-- all team names, director if director begins by M

select nomequipo,director
from cyclist.equipo
where director like 'M%';

select nomequipo,director
from cyclist.equipo
where director = 'M%';
-- con = nu merge!!!
-- 3) every dorsal with the cyclest name for teams diferent then 
-- Dorsal, cyclist name and team name for team different than Artiach and Banesto

select dorsal, nombre,nomequipo
from cyclist.ciclista
where NOMEQUIPO not like 'Artiach' and 'Banesto';
-- NOOOOO

select dorsal, nombre,nomequipo
from cyclist.ciclista
where nomequipo != 'Artiach' and nomequipo !=  'Banesto';

select dorsal, nombre,nomequipo
from cyclist.ciclista
where nomequipo not in ('Artiach','Banesto');

-- 4) i want to list all the winners (the dorrsal of the winners) (that have more than) of stages   with more than 180 km

select dorsal,kms
from cyclist.etapa
where kms>180
order by dorsal;

-- 5) like select 4 with no repeated dorsals

select dorsal,kms
from cyclist.etapa
where kms>180
group by dorsal
order by dorsal;

-- (dar si a mea e corecta)

select distinct dorsal,kms
from cyclist.etapa
where kms>180
order by dorsal;

select distinct dorsal
from cyclist.etapa
where kms>180
order by dorsal;
-- asta e corect!!!
-- DE REPETAT DISTINCT SI DE INTELES SELECTIA ASTA

-- 6) I whant  list the stage number and height of mountain passes if the height is greater than 2000

select numetapa, altura
from cyclist.puerto
where altura > 2000;

-- 7) List passes name and stage number of the stage with the maximum slope

select nombrepuerto, numetapa, pendiente
from cyclist.puerto
order by pendiente desc limit 1;

select nombrepuerto, numetapa, max(pendiente)
from cyclist.puerto;

-- 8) I want to know what is the Maillot color for tipo: Mas sufrido

select color, tipo
from cyclist.maillot
where tipo like 'Mas sufrido';
-- 9) i want to knou what is the tipo that has the biges price 

select tipo, max(premio)
from cyclist.maillot;

-- 10)  List salida, llegada, kms for the stage which longest distance

select salida, llegada, max(kms)
from cyclist.etapa;
-- ***************************************** tow tables ********************
-- 11) i whant to know stage numbers( IS WHAT WE CALL NUMETAPA) in which dorsal 2 has won. List dorsal, cyclist name and stage number

select e.dorsal, nombre,numetapa
from cyclist.ciclista e
inner join cyclist.etapa d
on e.dorsal= d.dorsal
where e. dorsal = 2;
-- !! important sa punem sus e.dorsal sa nu  fie mesaj de " column 'dorsal' in field list is ambiguous


select e.dorsal, nombre,numetapa
from cyclist.ciclista e
inner join cyclist.etapa d
using (dorsal)
where e. dorsal = 2;

-- !!!! UTILIZAM USING!!!!


-- 12) what is the stage number that has the most / biggest slope (piendiente)
-- Stage number with the biggest BIGGEST slope.List stage number and slope

select numetapa, max(pendiente), kms
from cyclist. etapa e
inner join cyclist.puerto p
using (numetapa);

select numetapa, max(pendiente)
from cyclist. etapa e
inner join cyclist.puerto p
on e.numetapa = p.numetapa;
-- ???? no funciona???

-- 13) what is tha name of tha cyclest who won the stage in biggest categoria( IS VARCHAR 1 !!)

-- in cazul asta, schimbam pregunta
-- who are the cyclest name who won stages with categoria = e

select nombre, numetapa,categoria
from cyclist.ciclista e
inner join cyclist.puerto p
using(dorsal)
where categoria like 'E';

-- 14) Cyclist name , team name ,maillot color of the  cyclist who won stage nummber 9;


select nombre, nomequipo, color
 from ciclista e
inner join cyclist.etapa p
using (dorsal)
inner join cyclist.lleva l
using (dorsal)
inner join cyclist.maillot m
using (codigo)
where p.numetapa=9; 


select nombre, nomequipo, color
 from cyclist.ciclista c
inner join cyclist.etapa e
using (dorsal)
inner join cyclist.lleva l
using (numetapa)
inner join cyclist.maillot m
using (codigo)
where e.numetapa=9; 

select * 
from cyclist.lleva
where numetapa =9;

select * 
from cyclist.ciclista c
inner join cyclist.etapa e
using (dorsal)
where numetapa=9;

select nombre, nomequipo, color
 from cyclist.ciclista c
inner join cyclist.etapa e
using (dorsal)
inner join cyclist.lleva l
on e.numetapa=l.numetapa
inner join cyclist.maillot m
using (codigo)
where e.numetapa=9; 


select c.nombre, c.nomequipo, m.color
 from cyclist.ciclista c
inner join cyclist.etapa e
using (dorsal)
inner join cyclist.lleva l
on e.dorsal=l.dorsal
inner join cyclist.maillot m
on l.codigo like m.codigo
where e.numetapa=9; 

-- codigo es varchar de asta flosim like, con = nu este corect si asa ramane rezultatul final
-- 15) what are nuembre de puerto all tha cyclest mallot code empty import table from
-- 15) Passe names of all the cyclist who dressed maillot code MGE
select p.nombrepuerto, l.codigo
from cyclist.puerto p
inner join cyclist.lleva l
on p.dorsal = l.dorsal
where l.codigo like 'MGE';

select distinct p.nombrepuerto, l.codigo
from cyclist.puerto p
inner join cyclist.lleva l
on p.dorsal = l.dorsal
where l.codigo like 'MGE';

--  !!!!!!!!!!!!!DISTINCT 

-- 16) CYCLIST NAME , stage number for the cyclist who won more than tow stages
select c.nombre, e.numetapa
from cyclist.ciclista c
inner join cyclist.etapa e
using(dorsal)
group by c.nombre
having count(*) >1;

-- intr un group se foloseste having!!!


select c.nombre, e.numetapa
from cyclist.ciclista c
inner join cyclist.etapa e
using(dorsal);
-- group by c.nombre
-- having count(*) >1;

-- LEFT AND RIGHT INNER JOIN

-- 17) Dorsal and name of every ciclista and ciclistas that won stages

select dorsal, nombre,numetapa
from cyclist.ciclista e
left outer join cyclist.etapa d
using(dorsal);
-- the first is the left one 
-- the second is the right one

-- 18) i whant to see all the information i have in ETAPA table

-- Dorsal and name of every ciclista and Director if ciclista is less than 30 years old

select dorsal, nombre,edad, director
from cyclist.ciclista e
left outer join cyclist.equipo d
using (nomequipo)
where edad < 30;
-- DAR NU FUNCTIONEAZA BINE

select edad
from cyclist.ciclista;

select dorsal, nombre,edad, director
from cyclist.ciclista e
left outer join cyclist.equipo d
using (nomequipo);

select dorsal, nombre, edad,director 
from cyclist.ciclista e
left outer join cyclist.equipo d
using (nomequipo);
-- ASA RAMANE

-- 19) Every nombre puerto and the numetapas this pass mountain belongs to

select nombrepuerto, numetapa, nombre
from cyclist.puerto e
left  outer join cyclist.ciclista a
using (dorsal);

-- 20) Nombre Equipo, Director and the ciclista number that there is in each equipo

select distinct nomequipo, director, nombre
from cyclist.equipo 
right outer join cyclist.ciclista
using(nomequipo)
group by nomequipo;

select distinct c.nomequipo, director, count(nombre) "Cyclisy number"
from cyclist.equipo e
right outer join cyclist.ciclista c
using(nomequipo)
group by e.nomequipo;

-- 21) what is the codigo of the maillot green?
select color, codigo
from cyclist.maillot
where color like 'verde';
 
 -- 22) ciclista with dorsal = 1, has participated in a stage with categoria 1  pass mountain 
 select nombre, dorsal, categoria
 from cyclist.ciclista
 left join cyclist.puerto
 using(dorsal)
 where categoria like "1" and dorsal =1;
 
 select nombre, dorsal, categoria
 from cyclist.ciclista
 inner join cyclist.puerto
 using(dorsal)
 where categoria like "1" and dorsal =1;
 
 -- 23) i whant to know every equipo that has ciclistat with mor than 35 years;
 -- 23) Every Equipo with  ciclista that are older than 35 years
 
 select nomequipo, edad
 from cyclist.equipo e
 left outer join cyclist.ciclista d
 using (nomequipo)
 where d.edad >35;
 
 -- 24) i whant to know i
 -- 24) are there stages where start point is the same as end point? How many?
 select count(llegada)
 from cyclist.etapa
 where llegada like salida;
 
  select salida, llegada
 from cyclist.etapa
 where llegada like salida;

-- 25) Pedro Delgado kms >  200

select nombre, kms
from cyclist.ciclista as c
inner join cyclist.etapa as e
using (dorsal)
where kms > =200 and nombre like 'Pedro Delgado';

select nombre, kms
from cyclist.ciclista as c
inner join cyclist.etapa as e
using (dorsal);



 










