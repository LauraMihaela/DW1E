insert into people 
values('p0001','12345687M','John1','Travolta',2500.67,'Male','1990-04-12','john1@pepe.es'),
('p0002','22345678M','John2','Travolta',2400.67,1,'1991-04-12','john2@pepe.es'),
('p0003','32345678M','John3','Travolta',1500.67,'Female','1992-04-12','john3@pepe.es'),
('p0004','42345678M','John4','Travolta',500.67,'2','1993-04-12','john4@pepe.es'),
('p0005','52345678M','John5','Travolta',1100.67,'1','1994-04-12','john5@pepe.es');

insert into races 
values
('r0001','2010-03-11','Valencia','Terragona'),
('r0002','2010-03-11','Terragona','Lerida'),
('r0003','2010-03-11','Lerida','Burgos'),
('r0004','2010-03-11','Burgos','Salamanca'),
('r0005','2010-03-11','Salamanca','Madrid');

insert into phone_people
values
('p0001','2342423424'),
('p0001','5556666666'),
('p0002','9999923424'),
('p0003','9898923424'),
('p0003','1145651244'),
('p0004','1111923424'),
('p0004','1145651111'),
('p0005','1111955424'),
('p0005','1145666111');

insert into cyclest_team
values
('t0001','MoviStar','España',20),
('t0002','Oliva','España',20),
('t0003','Kas','España',20),
('t0004','Oliveti','España',20),
('t0005','Dw1e','España',20);

insert into cyclist
values
('p0001',120,'t0002'),
('p0002',100,'t0001'),
('p0003',90,'t0003');

insert into manager
values
('p0004','t0003');

insert into staff
values
('p0005','driver','t0001');

insert into participate
values
('p0001','r0002'),
('p0002','r0001'),
('p0002','r0002'),
('p0003','r0004'),
('p0003','r0005'),
('p0004','r0001'),
('p0005','r0001'),
('p0005','r0002'),
('p0005','r0004');
select * from manager;