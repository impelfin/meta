-- create database st_db;

use st_db;

create table st_info(ST_ID int, NAME varchar(20), DEPT varchar(25)) default charset=utf8;

alter table st_info modify ST_ID int Not Null;

alter table st_info add constraint pk_stinfo primary key(ST_ID);

explain st_info;

create table st_grade (ST_ID int, Linux int, DB int);

alter table st_grade modify ST_ID int Not Null;

alter table st_grade add constraint pk_stinfo primary key(ST_ID);

explain st_grade;

insert into st_info values(202401, "Lee GilDong", "Game");

insert into st_info values(202402, "KIM GilDong", "Computer");

insert into st_info values(202403, "HONG GilDong", "Computer");

select * from st_info;

insert into st_grade values(202401, 90, 80);

insert into st_grade values(202402, 70, 95);

insert into st_grade values(202403, 80, 65);

select * from st_grade;

select st_info.NAME, st_info.DEPT, st_grade.Linux, st_grade.DB from st_info, st_grade where st_info.ST_ID=202401 and st_grade.ST_ID=202401;

