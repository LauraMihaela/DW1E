create database if not exists cyclistdb character set utf8mb4 collate utf8mb4_unicode_ci;

use cyclistdb;
create table if not exists races
(     
idrace char(5),
date_raced date,
start_point varchar(30),
end_point varchar(30),
constraint pk_races primary key (idrace)
);

create table if not exists people
(
id char(5),
dni char(9) unique,
name_people varchar(30),
surname varchar(30),
salary decimal(6,2),
gender enum("Male","Female","Other"),
dateOfBirth date,
email varchar(30),
constraint pk_people primary key (id)


);
create table if not exists phone_people
(
id char(5),
phoneNumber varchar(15),
constraint pk_phone primary key (id,phoneNumber),
constraint fk_id_phone foreign key(id) references people(id)

);
create table if not exists cyclest_team
(
idNumber char(5),
name_team varchar(30),
country varchar(30),
number_cyclest int,
constraint pk_cyclestTeam primary key(idNumber)

);
create table if not exists cyclist
(
id char(5),
dorsal int,
idCyclestTeam char(5),
constraint pk_cyclest primary key (id),
constraint fk_cyclest foreign key(id) references people (id),
constraint fk_cyclest_Team foreign key(idCyclestTeam) references cyclest_team (idNumber)


);

create table if not exists manager
(
id char(5),
idCyclestTeam char(5),
constraint pk_manager primary key (id),
constraint fk_manager foreign key(id) references people(id),
constraint fk_manager_Team foreign key(idCyclestTeam) references cyclest_team (idNumber)


);
create table if not exists staff
(
id char(5),
jobfunction varchar(30),
idCyclestTeam char(5),
constraint pk_staff primary key (id),
constraint fk_staff foreign key(id) references people(id),
constraint fk_staff_Team foreign key(idCyclestTeam) references cyclest_team (idNumber)


);


create table if not exists participate
(
id char(5),
idrace char(5),
constraint pk_R_participate primary key(id,idrace),
constraint fk_R_participate_id foreign key(id) references people(id),
constraint fk_R_participate_idraces foreign key(idrace) references races(idrace)
);



