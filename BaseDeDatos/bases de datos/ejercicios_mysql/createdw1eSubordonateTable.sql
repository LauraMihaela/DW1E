create database if not exists dw1e character set utf8mb4 collate utf8mb4_unicode_ci;
use dw1e;
create table if not exists dw1e.mainTable
(
idMT char(5),
nameMT char(30),
constraint pk_MaintTable_idMT primary key (idMT)
);
create table if not exists dw1e.subordinateTable
(
idST char(5),
idMT char(5),
constraint pk_SubordonateTable_idST primary key (idST,idMT),
constraint fk_Sub_Main_idMT foreign key (idMT) references mainTable(idMT)
on delete cascade
);
insert into dw1e.maintable values
('mt001','Pepe'),
('mt002','Marina');
update  dw1e.maintable set idMT='zt002'  where idMT='mt002';
insert into dw1e.subordinatetable values
('st111','mt111');
insert into dw1e.subordinatetable values
('st111','mt001');
delete from dw1e.maintable where idMT like 'mt001'; 
**////aici num merge**//
// merge doar daca pun optiunea on delete cascade sus in subordonate table;
delete from dw1e.subordinatetable where idMT like 'mt001';





