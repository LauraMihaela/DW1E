create database if not exists healthyVet charset utf8mb4 collate utf8mb4_unicode_ci;
use healthyVet;
create table if not exists Staff
(
staffID char(5),
dni char (9),
name varchar (40),
surname varchar(40),
dateOfBirth date,
age int,
email varchar (40),
jobCategory enum ('Veterinarian','Assistant','Office_clerk'),
salary decimal (6.2),
constraint pk_saff primary key(staffID),
constraint uq_staff_dni unique(dni) 


);
create table if not exists phonesStaff
(
phoneS varchar(15),
staffID char (5),
constraint pk_phoneStaff primary key(phoneS,staffID),
constraint fk_phoneStaff_staffID foreign key(staffID) references Staff(staffID)

);
create table if not exists clinics
(
clinicID char(5),
town varchar (40),
street varchar (40),
number int,
constraint pk_clinics primary key (clinicID)

);

create table if not exists phoneClinic
(
phoneC varchar(15),
clinicID char(5),
constraint pk_phoneClinic primary key (phoneC,clinicID),
constraint fk_phoneClinic foreign key(clinicID) references clinics(clinicID)
);


create table if not exists veterinarian
(
staffID_V char(5),
specialization enum('cat','dog','others'),
clinicID char(5),
constraint pk_veterinarian primary key(staffID_V),
constraint fk_veterinarian_StaffID foreign key(staffID_V) references staff(staffID),
constraint fk_veterinarian_clinicID foreign key(clinicID) references clinics (clinicID)

);
create table if not exists assistant
(
staffID_A char(5),
constraint pk_assistant primary key (staffID_A),
constraint fk_assistant foreign key (staffID_A) references staff(staffID)
);
create table if not exists veterinarian_assistant
(
staffID_V char(5),
staffID_A char(5),
constraint pk_veterinarian_assistant primary key (staffID_V,staffID_A),
constraint fk_veterinarian_assistant_V foreign key(staffID_V) references veterinarian(staffID_V),
constraint fk_veterinarian_assistant_A foreign key(staffID_A) references assistant(staffID_A)
);
create table if not exists office_clerk
(
staffID char(5),
clinicID char(5),
constraint pk_office_clerk primary key (staffID),
constraint fk_office_clerk_staffID foreign key (staffID) references staff(staffID),
constraint fk_office_clerk_ClinicID foreign key(clinicID) references clinics(clinicID)
);
create table if not exists assistant_clinics
(
staffID_A char(5),
clinicID char (5),
constraint pk_assistant_clinics primary key (staffID_A,clinicID),
constraint fk_assistant_clinics_staffID foreign key (staffID_A) references assistant(staffID_A),
constraint fk_assistant_clinics_clinicID foreign key (clinicID) references clinics(clinicID)
);
insert into staff values
('sta01','12345678l','Gorge','Harrison','2019-12-01','25','gh@gmail.com','Veterinarian',2555.50),
('sta02','22345678l','Mary','Michael','2019-11-01','27','mm@gmail.com','Veterinarian',2555.50),
('sta03','32345678l','John','Clery','2019-10-01','28','jc@gmail.com','Veterinarian',2555.50);
insert into phonesStaff values
('12345612','sta01'),
('12345612','sta02'),
('22345612','sta03');
insert into clinics values
('cli01','London','Chiperfield',2),
('cli02','Birmingham','Chiperfield',3),
('cli03','Madrid','Alcor',5);
insert into phoneClinic values
('12345678','cli01'),
('12345688','cli02'),
('12345998','cli03');
insert into veterinarian values
('sta01','cat','cli01'),
('sta02','dog','cli01'),
('sta03','cat','cli03');
 insert into assistant values
 ('sta01'),
 ('sta02'),
 ('sta03');
 insert into veterinarian_assistant values
('sta01','sta02'),
 ('sta02','sta03'),
 ('sta03','sta01');
 TRUNCATE TABLE veterinarian_assistant; 
 TRUNCATE TABLE assistant;
 insert into office_clerk values
 ('sta01','cli01'),
  ('sta02','cli02'),
   ('sta03','cli03');
    insert into assistant_clinics values
    ('sta01','cli01'),
  ('sta02','cli02'),
   ('sta03','cli03');
   
   
use sakila;
select film_id,title from sakila.film 



