-- ******************************************************************* SIMPLES ************************************************************************************************************************************
-- 1.- Obtener una lista de todos los productos, indicando para cada uno de ellos, su idfab, idproducto,
-- descripción, precio y precio con I.V.A. incluido (es el precio anterior aumentado en un 16%). 
select * from productos;

select idfab, idproducto, descripcion, precio, (precio* 0.16)+precio
from ejercicios.productos;

select idfab, idproducto, descripcion, precio, round((precio* 0.16)+precio,2)
from ejercicios.productos;

select idfab, idproducto, descripcion, precio, precio* 0.16
from ejercicios.productos;

select idfab, idproducto, descripcion, precio,round( precio* 0.16,2) Precio_IVA
from ejercicios.productos;

select idfab, idproducto, descripcion, precio, precio* 0.16 Precio_IVA
from ejercicios.productos;


-- 2.- De cada pedido queremos saber su número de pedido, fab, producto, cantidad, precio unitario e importe. 
select * from pedidos;
select * from productos;

select numpedido,fab,producto,cant, importe/cant, importe
from ejercicios.pedidos;
select numpedido,fab,producto,cant, round(importe/cant,2), importe
from ejercicios.pedidos;

select numpedido,fab,producto,cant, round(importe/cant,2)'Precio unitario', importe
from ejercicios.pedidos;



-- 3.- Listar de cada empleado su nombre, nº de días que lleva trabajando en la empresa y su año de nacimiento 
-- (suponiendo que este año ya ha cumplido años).
select nombre,datediff(current_date(),contrato)'Dias trabajados',year
(current_date())-edad'Año nacimiento'
from ejercicios.empleados;

select nombre,datediff(current_date(),contrato)'Dias trabajados',year
(current_date(),edad)'Año nacimiento'
from ejercicios.empleados;
-- deci ASA NU MERGE!!!!!!!

select * from ejercicios.empleados;

-- 4.- Obtener la lista de los clientes ordenados por código
-- de representante asignado, visualizar todas la columnas de la tabla.
select * from ejercicios.clientes order by repclie;

-- 5.- Obtener las oficinas ordenadas por orden alfabético de región y
-- dentro de cada región por ciudad, si hay más de una oficina en la misma ciudad,
-- aparecerá primero la que tenga el número de oficina mayor.

select *from ejercicios.oficinas
order by region, ciudad, oficina desc;

-- 6.- Obtener los pedidos ordenados por fecha de pedido.
select *
from ejercicios.pedidos
order by fechapedido;

-- 7.- Listar las cuatro líneas de pedido más caras (las de mayor importe).

select *
from ejercicios.pedidos
order by importe desc limit 4;


-- 8.- Obtener las mismas columnas que en el ejercicio 2 
-- pero sacando unicamente las 5 líneas de pedido de menor precio unitario.

select numpedido,fab,producto,cant, round(importe/cant,2)'Precio unitario', importe
from ejercicios.pedidos
order by 5 limit 5;

select numpedido,fab,producto,cant, round(importe/cant,2)'Precio unitario', importe
from ejercicios.pedidos
order by 'Precio unitario' limit 5; 

-- ASA NU MERGE!!!!!
-- ascendeing is default!!!

-- 9.- Listar toda la información de los pedidos de marzo.

select *
from ejercicios.pedidos
where month(fechapedido)=3;

-- 10.- Listar los números de los empleados que tienen una oficina asignada.

select numemp
from ejercicios.empleados
where oficina is not null;

-- 11.- Listar los números de las oficinas que no tienen director.
select oficina
from ejercicios.oficinas
where dir is null;

select oficina
from ejercicios.oficinas
where dir is not null;

-- 12.- Listar los datos de las oficinas de las regiones del norte y
-- del este (tienen que aparecer primero las del norte y después las del este).

select *
from ejercicios.oficinas
where region ='norte' or region ='este'
order by region desc;

-- 13.- Listar los empleados de nombre Juan.
select *
from ejercicios.empleados
where nombre like'juan%';

select *
from ejercicios.empleados
where nombre like'juan';



-- 14.- Listar los productos cuyo idproducto acabe en x.
select *
from ejercicios.productos
where idproducto like '%x';

-- ********************************************************************** RESUMEN ***********************************************************************************

-- 1.- ¿Cuál es la cuota media y las ventas medias de todos los empleados?

select avg(cuota), avg(ventas)
from ejercicios.empleados;

select round(avg(cuota),2), round(avg(ventas),2)
from ejercicios.empleados;

select round(avg(cuota),2) 'AVG Cuota', round(avg(ventas),2)'AVG Ventas'
from ejercicios.empleados;

-- 2.- Hallar el importe medio de pedidos, el importe total de pedidos y 
-- el precio medio de venta (el precio de venta es el precio unitario en cada pedido).

select avg(importe), sum(importe), avg(round(importe/cant,2))
from ejercicios.pedidos;
-- no es bien;

select round(avg(importe),2)'Import Avg', round(sum(importe),2) 'Total Import',
 round(avg(importe/cant),2) 'Unit Price AVG'
from ejercicios.pedidos;




-- 3.- Hallar el precio medio de los productos del fabricante ACI.
select round(avg(precio),2) 'AVG price for ACI'
from ejercicios.productos
where idfab like 'ACI';

-- 4.- ¿Cuál es el importe total de los pedidos realizados por el empleado Vicente Pantalla?

select round(sum(ventas),2) 'Total Sales for Mr.Pantalla'
from ejercicios.empleados
where nombre like 'Vicente Pantalla';

-- 5.- Hallar en qué fecha se realizó el primer pedido
-- (suponiendo que en la tabla de pedidos tenemos todos los pedidos realizados hasta la fecha).

select fechapedido
from ejercicios.pedidos
order by fechapedido asc limit 1;

select fechapedido
from ejercicios.pedidos
order by fechapedido limit 1;

-- asc is default

-- 6.- Hallar cuántos pedidos hay de más de 25000 ptas.
select sum(productos)'Products over 2.500' 
from ejercicios.pedidos
where importe > 2500;

-- no con sum

select count(*)'Products over 2.500' 
from ejercicios.pedidos
where importe > 2500;

-- 7.- Listar cuántos empleados están asignados a cada oficina, 
-- indicar el número de oficina y cuántos hay asignados.

select count(*),oficina
from ejercicios.oficinas
group by oficina
order by oficina;

select oficina, count(*) 'Employees Number'
from ejercicios.oficinas
group by oficina
order by oficina;

select oficina, count(*) 'Employees Number'
from ejercicios.empleados
group by oficina
order by oficina;

select * from empleados;

-- ofice 11 1 employee, ofice 12, one employee

-- 8.- Para cada empleado, obtener su número, nombre, 
-- e importe vendido por ese empleado a cada cliente indicando el número de cliente.

select e.numemp,nombre,sum(e.ventas),ce.numclie
from empleados e
join clientes_empleados ce
on empleados.numemp = clientes_empleados.numemp
group by numclie
order by numemp;
-- nu merge cu denumirea intreaga a tabelei;

select e.numemp,nombre,sum(e.ventas),ce.numclie
from empleados e
join clientes_empleados ce
on e.numemp = ce.numemp
group by numclie
order by numemp;

select e.numemp,nombre,sum(e.ventas),ce.numclie
from empleados e
join clientes_empleados ce
on e.numemp = ce.numemp
group by numclie
order by numemp;

-- !!! trebuie sa fie group by numclie pt ca altfel suma o face pe total tabela, iar asa le separa


select e.numemp,nombre,sum(e.ventas),ce.numclie
from empleados e
join clientes_empleados ce
on e.numemp=ce.numemp
group by numclie
order by numemp;

-- ponemos aleas e, ce... pt ca altfel calculatorul nu intelege pt ca avem aceleasi 
-- informatii in ambele tabele

-- e  represent empleados;

select e.numemp,nombre,sum(e.ventas),ce.numclie
from empleados e
join clientes_empleados ce
on e.numemp=ce.numemp
group by numemp
order by numemp;

select e.numemp,e.nombre,sum(e.ventas),ce.numclie
from empleados e
inner join clientes_empleados ce
on e.numemp=ce.numemp
group by e.numemp,ce.numemp;

select e.numemp,e.nombre,e.ventas,c.repclie
from empleados e
inner join clientes c
on e.numemp=c.repclie;
-- TRABAJO CON 2 TABELAS INNER JOIN
select e.numemp,e.nombre,e.ventas,c.numclie
from empleados e
inner join clientes c
on e.numemp=c.repclie
order by e.numemp;


select * from clientes_empleados;


-- 9.- Para cada empleado cuyos pedidos suman más de 30.000€, hallar su importe medio de pedidos. 
-- En el resultado indicar el número de empleado y su importe medio de pedidos.
select numemp, round(avg(ventas),2)'Ventas Average', format(avg(ventas),2)'ventas  formated' /* se convierte into string*/
from ejercicios.empleados
group by numemp
having sum(ventas) >30000;

-- 9.- Para cada empleado cuyos pedidos suman más de 30.000€, hallar su importe medio de pedidos.
-- En el resultado indicar el número de empleado y su importe medio de pedidos.

select numemp, round(avg(ventas),2)'Ventas Average'
from ejercicios.empleados
group by numemp
having sum(ventas) >30000;

select numemp, round(avg(ventas),2)'Ventas Average', format(avg(ventas),2) +100 'ventas  formated'
from ejercicios.empleados
group by numemp
having sum(ventas) >30000;

-- format transforma in string;

select numemp, round(avg(ventas),2)+100 'Ventas Average', format(avg(ventas),2) 'ventas  formated'
from ejercicios.empleados
group by numemp
having sum(ventas) >30000;

select numemp,format( round(avg(ventas),2)+100,2) 'Ventas Average', format(avg(ventas),2) 'ventas  formated'
from ejercicios.empleados
group by numemp
having sum(ventas) >30000;

select numemp,concat(format( round(avg(ventas),2)+100,2),'€') 'Ventas Average',
 format(avg(ventas),2) 'ventas  formated'
from ejercicios.empleados
group by numemp
having sum(ventas) >30000;

select numemp, concat('Rodrigo',' DW1E'),concat(format( round(avg(ventas),2)+100,2),'€') 'Ventas Average', 
format(avg(ventas),2) 'ventas  formated'
from ejercicios.empleados
group by numemp
having sum(ventas) >30000;

-- 10.- Listar de cada producto, su descripción, precio y cantidad total pedidaproductos, 
-- incluyendo sólo los productos cuya cantidad total pedida sea superior al 75% del stock; 
-- y ordenado por cantidad total pedida.


-- 11.- Saber cuántas oficinas tienen empleados con ventas superiores a su cuota, 
-- no queremos saber cuales sino cuántas hay.

select count( distinct oficina)
from ejercicios.empleados
where ventas > cuota;

select count( oficina)
from ejercicios.empleados
where ventas > cuota;

select  oficina, ventas, cuota
from ejercicios.empleados
where ventas > cuota;

select  distinct count( oficina)
from ejercicios.empleados
where ventas > cuota;
-- NU ASA!!!!! DISTINCT SE PUNE IN INTERIOR LA COUNT
select count( distinct oficina)
from ejercicios.empleados
where ventas > cuota;

-- ATENTIE CU DISTINCT EXEMPLE !!!
select  distinct oficina
from ejercicios.empleados
where ventas > cuota;

select oficina
from ejercicios.empleados
where ventas > cuota;


-- 12) what aRE  the oficinas que hay en valencia , alicante y Badajoz.

select * from oficinas;

select oficina, ciudad
from ejercicios.oficinas
where ciudad like 'Valencia' or ciudad like 'Alicante' or ciudad like 'Badajoz';

select oficina, ciudad
from ejercicios.oficinas
where ciudad in ('Valencia', 'Alicante', 'Badajoz');

-- trabajo con alias!!!!!

select o.oficina, ciudad 'Town'
from ejercicios.oficinas o
where o.ciudad in('Valencia', 'Alicante', 'Badajoz');

select oficina, ciudad
from ejercicios.oficinas
where ciudad not in('Valencia','Alicante','Badajoz');



select nombre, contrato
from ejercicios.empleados
where  year(contrato) <1987;


-- trabajo con alias!!!

select empleados.nombre, empleados.contrato
from ejercicios.empleados
where  year(contrato) >1987;


select nombre
from ejercicios.clientes
where repclie >100;



select numclie,nombre,repclie
from ejercicios.clientes
where repclie >'100';

select numclie,nombre,repclie
from ejercicios.clientes
where repclie >105;


-- pedidos,
-- codigo, numpedido, fechapedido
-- if day fechapedido <15 &&   month fechapedido >3;

select codigo,numpedido, fechapedido
from ejercicios.pedidos
where day (fechapedido)<15 and month(fechapedido) >3;

select concat(codigo,numpedido)'Codido + NumPedido', fechapedido 'Fecha Pedido'
from ejercicios.pedidos
where day (fechapedido)<15 and month(fechapedido) >3;

select concat(codigo,'  ' , numpedido)'Codido + NumPedido', fechapedido 'Fecha Pedido'
from ejercicios.pedidos
where day (fechapedido)<15 and month(fechapedido) >3;

select concat(codigo,'**' , numpedido)'Codido + NumPedido', fechapedido 'Fecha Pedido'
from ejercicios.pedidos
where day (fechapedido)<15 and month(fechapedido) >3;

select * from ejercicios.pedidos;

select rep 'Employee-id', count(numpedido),'Purchase Number'
from ejercicios.pedidos
group by rep
order by rep;


select rep 'Employee-id', numpedido,'Purchase Number'
from ejercicios.pedidos
group by rep
order by rep;









-- ************************************************************** MULTITABLA *********************************************************************************
-- 1 Listar las oficinas del este indicando para cada una de ellas su número, ciudad, números y nombres de sus empleados. Hacer una versión en la que aparecen sólo las que tienen empleados, y hacer otra en las que aparezcan las oficinas del este que no tienen empleados.

-- 1.1		Oficinas del este con empleados:

select o.oficina, o.ciudad,e.numemp,e.nombre
from oficinas o
inner join empleados e
on o.oficina=e.oficina
where o.region like 'este';

select * from oficinas;

-- 1.2		Oficinas del este incluyendo las que no tienen director:

select o.oficina, o.ciudad,e.numemp,e.nombre
from oficinas o
right join empleados e
on o.oficina=e.oficina
where o.region like 'este' or (o.region like 'este' and o.dir is null);


select o.oficina, o.ciudad,e.numemp,e.nombre
from oficinas o
inner join empleados e
on o.oficina=e.oficina
where o.region like 'este' or (o.region like 'este' and o.dir is null);
-- se foloseste LEFT JOIN

select o.oficina, o.ciudad,e.numemp,e.nombre
from oficinas o
left join empleados e
on o.oficina=e.oficina
where o.region like 'este' ;

-- ex pe pag 4

-- right
select * from empleados;
-- left
select * from  oficinas;


-- 1.3		Oficinas de cualquier región incluyendo las que no tienen empleados:
-- and here appears all the info from left one and the record that is maching with the relation 
select o.oficina, o.ciudad,e.numemp,e.nombre
from oficinas o
left join empleados e
on o.oficina=e.oficina;

-- is appears if oficina is equal con oficina
select o.oficina, o.ciudad,e.numemp,e.nombre
from oficinas o
inner join empleados e
on o.oficina=e.oficina;




-- 1.4		Oficinas de cualquier región que no tienen empleados:

-- 2 Listar los pedidos mostrando su número, importe, nombre del cliente,
--  y el límite de crédito del cliente correspondiente (todos los pedidos tienen cliente y representante).

select p.codigo, p.importe, c.nombre, c.limitecredito
from pedidos p
inner join clientes c
on p.rep=c.repclie;

-- 3 Listar los datos de cada uno de los empleados, la ciudad y región en donde trabaja.
 
-- 4 Listar las oficinas con objetivo superior a 600.000€ indicando para cada una de ellas el nombre de su director.

-- 5 Listar los pedidos superiores a 25.000€, incluyendo el nombre del empleado que tomó el pedido y el nombre del cliente que lo solicitó.

-- 6 Hallar los empleados que realizaron su primer pedido el mismo día en que fueron contratados.

-- 7 Listar los empleados con una cuota superior a la de su jefe; para cada empleado sacar sus datos y el número, nombre y cuota de su jefe.

-- 8 Listar los códigos de los empleados que tienen una línea de pedido superior a 10.000 o que tengan una cuota inferior a 10.000.

-- ************************************************************** SUBCONSULTAS *********************************************************************************

-- 1.- Listar los nombres de los clientes que tienen asignado el representante Alvaro Jaumes (suponiendo que no pueden haber representantes con el mismo nombre).

-- 2.- Listar los vendedores (numemp, nombre, y nº de oficina) que trabajan en oficinas "buenas" (las que tienen ventas superiores a su objetivo).

-- 3.- Listar los vendedores que no trabajan en oficinas dirigidas por el empleado 108.

-- 4.- Listar los productos (idfab, idproducto y descripción) para los cuales no se ha recibido ningún pedido de 25000 o más.

-- 5.- Listar los clientes asignados a Ana Bustamante que no han remitido un pedido superior a 3000€.

-- 6.- Listar las oficinas en donde haya un vendedor cuyas ventas representen más del 55% del objetivo de su oficina.

-- 7.- Listar las oficinas en donde todos los vendedores tienen ventas que superan al 50% del objetivo de la oficina.

-- 8.- Listar las oficinas que tengan un objetivo mayor que la suma de las cuotas de sus vendedores.