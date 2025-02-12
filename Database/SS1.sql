create database Student_Managemet;
create table class (
id int primary key,
name varchar(50) not null
);
create table teacher (
id int primary key,
name varchar(50) not null,
age int not null,
address varchar(50) not null
);
insert into teacher (id, name, age, address) 
values ("001", "Hoang", "30", "20 Ly Thai To"),
	   ("002", "Huy", "35" , "30 Dang Tat")
       
       select * from teacher
       -- xóa bảng--
       drop table class
       -- xóa theo id--
       delete from teacher where id = "001";
       -- xóa database-- 
       drop database Student_Managemet;
       
       
       