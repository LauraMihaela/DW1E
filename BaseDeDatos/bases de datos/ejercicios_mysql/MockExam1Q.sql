/*MOCK EXAM 1ST QUARTER*/
create database if not exists MockExam1Q charset utf8mb4 collate utf8mb4_unicode_ci;

use MockExam1Q;
create table if not exists Staff
(
	staffID char(5),
    dni char(9),
    nameStaff varchar(40),
    surnameStaff varchar(40),
    email varchar(40),
    jobCategory enum('Captain','Sailor','Service','Cabin_boy'),
    constraint pk_staff primary key (staffID),
    constraint uq_staff_dni unique (dni)
);

create table if not exists Boat
(
	boatNumber char(5),
    nameBoat varchar(40),
    typeBoat enum('Passenger','Cargo'),
    statusBoat enum('Sailing','Docked','Damaged'),
    constraint pk_boat primary key (boatNumber)
);

create table if not exists Tour
(
	tourID char(5),
    startPoint varchar(30),
    destinationPoint varchar(30),
    startDay datetime,
    returnDay datetime,
    numberPassengers int,
    price decimal(8,2),
    operationExpenses decimal(8,2),
    constraint pk_tour primary key (tourID)
);

create table if not exists Staff_Phone
(
	staffID char(5),
    phoneNumber char(9),
    constraint pk_Staff_Phone primary key (staffID,phoneNumber),
    constraint fk_Staff_Phone foreign key (staffID) references Staff(staffID)
    on delete cascade on update cascade
);

create table if not exists Tour_Staff
(
	staffID char(5),
    tourID char(5),
    constraint pk_Tour_Staff primary key (staffID,tourID),
    constraint fk_Tour_Staff_StaffID foreign key (staffID) references Staff(staffID)
    on delete cascade on update cascade,
    constraint fk_Tour_Staff_tourID foreign key (tourID) references Tour(tourID)
    on delete cascade on update cascade
);

create table if not exists Boat_Tour
(
	boatNumber char(5),
    tourID char(5),
    constraint pk_Boat_Tour primary key (boatNumber,tourID),
	constraint fk_Boat_Tour_boatNumber foreign key (boatNumber) references Boat(boatNumber)
    on delete cascade on update cascade,
    constraint fk_Boat_Tour_tourID foreign key (tourID) references Tour(tourID)
    on delete cascade on update cascade
);

insert into Staff values
('sta01','12345678A','Gorge','Harrilson','gh@gmail.com','Captain'),('sta02','22345678B','Mary','Báez','mb@gmail.com','Sailor'),
('sta03','32345678C','Silvie','Machon','sm@gmail.com','Sailor'),('sta04','42345678D','John','González','jg@gmail.com','Cabin_boy'),
('sta05','52345678E','Elena','Pérez','ep@gmail.com','Service'),('sta06','62345678F','Olivia','Pérez','op@gmail.com','Captain'),
('sta07','72345678G','Mary','Cohen','mc@gmail.com','Captain'),('sta08','82345678H','Silvie','Machon','sm@gmail.com','Sailor'),
('sta09','92345678I','Genevive','Turon','gt@gmail.com','Cabin_boy'),('sta10','10345678J','Gonzalo','Duque','gd@gmail.com','Sailor');

insert into boat values
('boa01','La felcha veloz','Passenger','Sailing'),
('boa02','La caricia del agua','Passenger','Docked'),
('boa03','El pirata del río','Cargo','Damaged');

insert into tour values
('tou01','Huelva','Lisboa','2019-12-01 10:00:00','2020-01-01 09:00:00',150,53.34,250.68),
('tou02','Pontevedra','La Coruña','2019-11-10 11:00:00','2019-12-01 08:00:00',190,15.34,80.68),
('tou03','Aveiro','Lisboa','2020-02-01 10:00:00','2020-02-03 09:00:00',2150,55.34,150.68),
('tou04','Huelva','Lisboa','2019-12-01 10:00:00','2020-01-01 09:00:00',150,53.34,250.68),
('tou05','Lisboa','Portugal','2019-12-01 10:00:00','2020-01-01 09:00:00',150,53.34,250.68),
('tou06','Huelva','Cádiz','2019-12-01 10:00:00','2020-01-01 09:00:00',150,53.34,250.68),
('tou07','Cádiz','Portugal','2019-12-01 10:00:00','2020-01-01 09:00:00',150,53.34,250.68),
('tou08','La Coruña','Monte Gordo','2019-12-01 10:00:00','2020-01-01 09:00:00',150,53.34,250.68),
('tou09','Huelva','Málaga','2020-03-01 10:00:00','2020-03-02 09:00:00',150,53.34,250.68),
('tou10','Málag','Huelva','2020-12-01 10:00:00','2021-01-01 09:00:00',150,53.34,250.68);

insert into Staff_Phone values
('sta01','111111111'),
('sta01','622222221'),
('sta02','222222222'),
('sta03','333333333'),
('sta04','444444444'),
('sta04','644444444'),
('sta05','555555555'),
('sta05','555555559'),
('sta05','655555555'),
('sta06','666666666'),
('sta07','777777777'),
('sta08','111111111'),
('sta08','688888888'),
('sta09','999999999'),
('sta10','101010109');

insert into tour_staff values
('sta01','tou01'),
('sta02','tou01'),
('sta04','tou01'),
('sta06','tou02'),
('sta08','tou02'),
('sta09','tou02'),
('sta01','tou03'),
('sta07','tou03'),
('sta08','tou03'),
('sta01','tou04'),
('sta04','tou04'),
('sta10','tou04'),
('sta06','tou05'),
('sta03','tou05'),
('sta05','tou05'),
('sta01','tou06'),
('sta02','tou06'),
('sta04','tou06'),
('sta07','tou07'),
('sta02','tou07'),
('sta09','tou07'),
('sta01','tou08'),
('sta10','tou08'),
('sta04','tou08'),
('sta02','tou09'),
('sta03','tou09'),
('sta08','tou09'),
('sta04','tou10'),
('sta05','tou10'),
('sta08','tou10');

insert into boat_tour values
('boa01','tou01'),
('boa02','tou02'),
('boa01','tou03'),
('boa02','tou04'),
('boa01','tou05'),
('boa02','tou06'),
('boa03','tou07'),
('boa01','tou08'),
('boa02','tou09'),
('boa01','tou10');





