create database if not exists ClinicSante character set utf8mb4 collate utf8mb4_unicode_ci;
use clinicSante;
create table if not exists staff
(
/* This is our first table*/
dni char(9),
salary decimal(5,2) null, 
dateOfBirth date not null,
first_name varchar(30) not null,
sur_name varchar(30) not null,
street varchar(30) not null,
numberStreet int not null,
constraint dni_staff primary key (dni)

);
create table if not exists staff_phone
(
dni char(9),
phone varchar(15),
constraint staff_phone primary key(dni,phone),
constraint staff_phoneFK foreign key (dni) references staff(dni)

);
create table if not exists specialization
(
id_specialist char(2),
name_spe varchar(30),
dni char unique,
constraint specialization_idspecialist primary key (id_specialist),
constraint specialization_dni foreign key (dni) references staff(dni)
);
create table if not exists doctor
(
dni char(9),
specialist char(2),
dni_super char(9),
constraint doctor_dni primary key (dni),
constraint doctor_dni foreign key (dni) references staff(dni),
constraint doctor_dni_super foreign key (dni_super) references staff(dni),
constraint doctor_specialist foreign key (specialist) references specialization(id_specialist)


);
create table if not exists nurse
(
dni char(9),
dni_super char(9),
constraint nurse_dni primary key (dni),
constraint nurse_dni foreign key (dni) references staff(dni),
constraint nurse_dni_super foreign key (dni_super) references staff(dni)

);

create table if not exists doctor_nurse
(
dni_doctor char(9),
dni_nurse char(9),
constraint doctor_nurse primary key (dni_doctor,dni_nurse),
constraint doctor_nurse_dnidoctor foreign key (dni_doctor) references staff(dni),
constraint doctor_nurse_dninurse foreign key (dni_nurse) references staff(dni)
);
create table if not exists Pacient
(

id_Pacient char(4),
dni char(9) not null,
nameP varchar(30),
age int not null,

constraint idPacient primary key (id_Pacient),
constraint indxUQ unique index (dni,age),
index indxAge(age)
);
alter table clinicsante.staff add index (salary);
show indexes from staff;
show indexes from pacient;