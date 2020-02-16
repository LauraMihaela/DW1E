alter table clinicsante.specialization
 modify name_spe varchar(40) default 'Surgery';
show create table clinicsante.specialization;
show create table clinicsante.driver;
create table if not exists clinicsante.driver
(
idDriver char(3),
nameDriver varchar(40),
dpt char(2) default 'd1',
constraint pk_driver primary key(idDriver)

);

