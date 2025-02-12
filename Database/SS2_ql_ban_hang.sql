create database ql_ban_hang;
create table customer (
id varchar (50) not null primary key,
name varchar(50) not null,
age int not null
);
create table donhang (
idoder varchar(50) not null primary key,
id varchar(50) not null,
ngay date not null,
gia int not null,
foreign key (id) references customer(id)
);
create table sanpham(
idsanpham varchar(50) not null primary key,
ten varchar(50) not null,
gia int not null
);
create table donhangchitiet(
idoder varchar(50) not null,
idsanpham varchar(50) not null,
primary key (idoder, idsanpham),
foreign key (idoder) references donhang(idoder),
foreign key (idsanpham) references sanpham(idsanpham)
);


