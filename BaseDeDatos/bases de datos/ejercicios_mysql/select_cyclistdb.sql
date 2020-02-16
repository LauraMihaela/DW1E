select * from people;
select * from races;
select * from phone_people;
select * from cyclest_team;
select * from  cyclest;
select * from manager;
select * from staff;
select * from participate;
select id,dorsal from cyclist;
select id,dorsal from cyclist where dorsal > 100;
select id,dorsal from cyclist where dorsal between 10 and 110;
select id,dorsal from cyclist where dorsal > 500;
select id as ID_Cyclist,dorsal as 'Cyclist dorsal' from cyclist where dorsal<200;

select count(id) 'Number of Cyclest' from cyclist;
select id from cyclist;

select salary from people;
select * from people where salary > 2000 limit 1; 
select * from people where salary > 2000 limit 2; 
select * from people where salary < 2000 limit 3;
select * from people where (name_people like 'John2' and salary >2100 ) and id<>'p0001';
select * from people where (name_people ='John2' and salary >2100 ) and id<>'p0001';
select * from people where (name_people like 'John2' and salary >2100 ) or id<>'p0001';
select * from people;
select * from people where gender like 'female' and salary < 2000;
select * from people where gender like 'female' and salary > 2000;
select count(*) from people where gender like 'female' and salary > 2000;
select count(*) from people where gender like 'female' and salary < 2000;

select gender, dateOfBirth from people where gender like 'female';
select gender, year(dateOfBirth) from people where gender like 'female';
select gender, day(dateOfBirth) from people where gender like 'female';
select gender, hour(dateOfBirth) from people where gender like 'female';
