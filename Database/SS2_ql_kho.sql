create database quan_ly_kho;
create table vattu (
mavattu varchar(50) not null primary key,
ten varchar(50) not null,
giatien int not null
);
create table phieuxuat (
sophieuxuat int not null primary key ,
ngayxuat date not null
);
create table chitietphieuxuat (
mavattu varchar(50) not null,
sophieuxuat int not null,
dongia int not null,
soluong int not null,
primary key (mavattu, sophieuxuat),
foreign key (mavattu) references vattu(mavattu),
foreign key (sophieuxuat) references phieuxuat(sophieuxuat)
);
create table phieunhap (
sophieunhap int not null primary key,
ngaynhap date not null
);
create table chitietphieunhap (
sophieunhap int not null,
mavattu varchar(50) not null,
dongia decimal  not null,
soluong int not null,
primary key (sophieunhap, mavattu),
foreign key (sophieunhap) references phieunhap(sophieunhap),
foreign key (mavattu) references vattu(mavattu)
);
create table nhacungcap (
mancc varchar(50) not null primary key,
ten varchar (20) not null,
diachi varchar(50) not null
);
create table sdtnhacungcap (
mancc varchar(50) not null,
sdt char(10) not null,
primary key (mancc, sdt),
foreign key (mancc) references nhacungcap(mancc)
);


create table dondathang (
sodonhang varchar(50) not null primary key,
ngaydathang date not null
);
create table cungcap (
mancc varchar(50) not null,
sodonhang varchar(50) not null,
primary key (mancc, sodonhang),
foreign key (mancc) references nhacungcap(mancc),
foreign key (sodonhang) references dondathang(sodonhang)
);

create table chitietdondathang (
sodonhang varchar(50) not null,
mavattu varchar(50) not null,
primary key (sodonhang, mavattu),
foreign key (sodonhang) references dondathang(sodonhang),
foreign key (mavattu) references vattu(mavattu)
);

