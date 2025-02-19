create database Castudy;
create table vi_tri (
ma_vi_tri int auto_increment primary key,
ten_vi_tri varchar(45)
);
 insert into vi_tri (ma_vi_tri, ten_vi_tri)
 values (1, 'quan ly'),
		(2, 'nhan vien');

create table trinh_do (
ma_trinh_do int auto_increment primary key,
ten_trinh_do varchar(45)
);

insert into trinh_do (ma_trinh_do, ten_trinh_do)
values  (1, 'trung cap'),
		(2, 'cao dang'),
		(3, 'dai hoc'),
        (4, 'sau dai hoc');


create table bo_phan (
ma_bo_phan int auto_increment primary key,
ten_bo_phan varchar(45)
);

insert into bo_phan (ma_bo_phan, ten_bo_phan)
values  (1, 'sale-marketing'),
		(2, 'hanh chinh'),
        (3, 'phuc vu'),
        (4, 'quan ly');
		


create table nhan_vien (
ma_nhan_vien int auto_increment primary key,
ho_ten varchar(45),
ngay_sinh date,
so_cmnd varchar(45),
luong double,
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int,
foreign key (ma_vi_tri) references vi_tri(ma_vi_tri),
foreign key (ma_trinh_do) references trinh_do(ma_trinh_do),
foreign key (ma_bo_phan) references bo_phan(ma_bo_phan)
);

insert into nhan_vien (ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan)
values  (1, 'Nguyen Van An', '1970-11-07', '456231786', '10000000', '0901234121', 'annguyen@gmail.com', '295 Nguyen Tat Thanh, Da Nang', 1, 3, 1),
		(2, 'Le Van Binh', '1997-04-09', '654231234', '7000000', '0934212314', 'binhlv@gmail.com', '22 Yen Bai, Da Nang', 1, 2, 2),
        (3, 'Ho Thi Yen', '1995-12-12', '999231723', '14000000', '0412352315', 'thiyen@gmail.com', 'K234/11 Dien Bien Phu, Gia Lai', 1, 3, 2),
        (4, 'Vo Cong Toan', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gmail.com', '77 Hoang Dieu, Quang Tri', 1, 4, 4),
        (5, 'Nguyen Binh Phat', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Yen Bai, Da Nang',2, 1, 1),
        (6, 'Khuc Nguyen An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'annghi20n@gmail.com', '294 Nguyen Tat Thanh', 2, 2, 3),
        (7, 'Nguyen Huu Ha', '1993-01-01', '534323231', '8000000', '0941234553', 'nhh0101@gmail.com', '4 Nguyen Chi Thanh, Hue', 2, 3, 2),
        (8, 'Nguyen Ha Dong', '1989-09-03', '234414123', '9000000', '0642123111', 'donghanguyen@gmail.com', '111 Hung Vuong, Ha Noi', 2, 4, 4),
        (9, 'Tong Hoang', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtong@gmail.com', '213 Ham Nghi, Da Nang', 2, 4, 4),
		(10, 'Nguyen Cong Dao', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyencongdao12@gmail.com', '6 Khanh Hoa, Dong Nai', 2, 3, 2);

create table loai_khach (
ma_loai_khach int auto_increment primary key,
ten_loai_khach varchar(45)
);

insert into loai_khach (ma_loai_khach, ten_loai_khach)
 values (1, 'Diamond'),
		(2, 'Platinium'),
		(3, 'Gold'),
		(4, 'Sliver'),
		(5, 'Member');


create table khach_hang (
ma_khach_hang int auto_increment primary key,
ma_loai_khach int,
ho_ten varchar(45),
ngay_sinh date,
gioi_tinh bit(1),
so_cmnd varchar(45),
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45),
foreign key (ma_loai_khach) references loai_khach(ma_loai_khach)
);

insert into khach_hang (ma_khach_hang, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi, ma_loai_khach )
values  (1, 'Nguyen Thi Hao', '1970-11-07', 0, '643431213', '0945423362', 'thihao07@gmail.com', '23 Nguyen Hoang, Da Nang', '5'),
		(2, 'Pham Xuan Dieu', '1992-08-08', 1, '865342123', '0954333333', 'xuandieu92@gmail.com', 'K77/22 Thai Phien, Quang Tri', '3'),
		(3, 'Truong Dinh Nghe', '1990-02-27', 1, '488645199', '0373213122', 'nghenhan2702@gmail.com', 'K323/12 Ong Ich Khiem, Vinh', '1'),
        (4, 'Duong Van Quan', '1981-07-08', 1, '543432111', '0490039241', 'duongquan@gmail.com', 'K453/12 Le Loi, Da Nang', '1'),
        (5, 'Hoang Tran Nhi Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhi123@gmail.com', '224 Ly Thai To, Gia Lai', '4'),
        (6, 'Ton Nu Moc Chau', '2005-12-06', 0, '732434215', '0988888844', 'tonnuchau@gmail.com', '37 Yen The, Da Nang', '4'),
        (7, 'Nguyen My Kim', '1984-04-08', 0, '856453123', '0912345698', 'kimcuong84@gmail.com', 'K123/45 Le Loi, Ho Chi Minhj', '1'),
        (8, 'Nguyen Thi Hao', '1999-04-08', 0, '965656433', '0763212345', 'haohao99@gmail.com', '55 Nguyen Van Linh, Kom Tum', '3'),
        (9, 'Tran Dai Danh', '1994-07-01', 1, '432341235', '0643343433', 'danhhai99@gmail.com', '24 Ly Thuong Kiet, Quang Ngai', '1'),
        (10, 'Nguyen Tam Dac', '1989-07-01', 1, '344343432', '0987654321', 'dactam@gmail.com', '22 Ngo Quyen, Da Nang', '2');


create table kieu_thue (
ma_kieu_thue int auto_increment primary key,
ten_kieu_thue varchar(45)
);

insert into kieu_thue (ma_kieu_thue, ten_kieu_thue)
values  (1, 'year'),
		(2, 'month'),
        (3, 'day'),
        (4, 'hour');
        

create table loai_dich_vu (
ma_loai_dich_vu int auto_increment primary key,
ten_loai_dich_vu varchar(45)
);

insert into loai_dich_vu (ma_loai_dich_vu, ten_loai_dich_vu)
values  (1, 'Villa'),
		(2, 'House'),
        (3, 'Room');


create table dich_vu (
ma_dich_vu int auto_increment primary key,
ten_dịch_vu varchar(45),
dien_tich int,
chi_phi_thue double,
so_nguoi_toi_da int ,
ma_kieu_thue int,
ma_loai_dich_vu int,
tieu_chuan_phong varchar(45),
mo_ta_tien_nghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int,
foreign key (ma_kieu_thue) references kieu_thue(ma_kieu_thue),
foreign key (ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu)
);

insert into dich_vu (ma_dich_vu, ten_dịch_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, tieu_chuan_phong, mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang, ma_kieu_thue, ma_loai_dich_vu)
values  (1, 'Villa Beach Front', '25000', '10000000', '10', 'vip', 'co ho boi', '500', 4, 3, 1),
		(2, 'House Princess 01', '14000', '5000000', '7', 'vip', 'co them bep nuong', null, 3, 2, 2),
        (3, 'Room Twin 01', '5000', '1000000', '2', 'normal', 'co tivi', null, null, 4, 3),
        (4, 'Villa No Beach Front', '22000', '9000000', '8', 'normal', 'co ho boi', '300', 3, 3, 1),
        (5, 'House Princess 02', '10000', '4000000', '5', 'normal', 'co them bep nuong', null, 2, 3, 2),
        (6, 'Room Twin 02', '3000', '900000', '2', 'normal', 'co tivi', null, null, 4, 3);


create table hop_dong (
ma_hop_dong int auto_increment primary key,
ngay_lam_hop_dong datetime,
ngay_ket_thuc datetime,
tien_dat_coc double,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int,
foreign key (ma_nhan_vien) references nhan_vien(ma_nhan_vien),
foreign key (ma_khach_hang) references khach_hang(ma_khach_hang),
foreign key (ma_dich_vu) references dich_vu(ma_dich_vu)
);

insert into hop_dong (ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu)
values  (1, '2020-12-08', '2020-12-08', 0, 3, 1, 3),
		(2, '2020-07-14', '2020-07-21', 200000, 7, 3, 1),
        (3, '2021-03-15', '2021-03-17', 50000, 3, 4, 2),
        (4, '2021-01-14', '2021-01-18', 100000, 7, 5, 5),
        (5, '2021-07-14', '2021-07-15', 0, 7, 2, 6),
        (6, '2021-06-01', '2021-06-03', 0, 7, 7, 6),
        (7, '2021-09-02', '2021-09-05', 100000, 7, 4, 4),
        (8, '2021-06-17', '2021-06-18', 150000, 3, 4, 1),
        (9, '2020-11-19', '2020-11-19', 0, 3, 4, 3),
        (10, '2021-04-12', '2021-04-14', 0, 10, 3, 5),
        (11, '2021-04-25', '2021-04-25', 0, 2, 1, 1),
        (12, '2021-05-25', '2021-05-27', 0, 7, 10, 1);




create table dich_vu_di_kem (
ma_dich_vu_di_kem int auto_increment primary key,
ten_dich_vu_di_kem varchar(45),
gia double,
don_vi varchar(45),
trang_thai varchar(45)
);

insert into dich_vu_di_kem (ma_dich_vu_di_kem, ten_dich_vu_di_kem, gia, don_vi, trang_thai)
values  (1, 'karaoke', 10000, 'gio', 'tien nghi, hien tai'),
		(2, 'thue xe may', 10000, 'chiec', 'hong 1 xe'),
        (3, 'thue xe dap', 20000, 'chiec', 'tot'),
        (4, 'buffet buoi sang', 15000, 'suat', 'day du do an, trang mieng'),
        (5, 'buffet buoi trua', 90000, 'suat', 'day du do an, trang mieng'),
        (6, 'buffet buoi toi', 16000, 'suat', 'day du do an, trang mieng');

create table hop_dong_chi_tiet (
ma_hop_dong_chi_tiet int auto_increment primary key,
ma_hop_dong int,
ma_dich_vu_di_kem int,
so_luong int,
foreign key (ma_hop_dong) references hop_dong(ma_hop_dong),
foreign key (ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem)
);

insert into hop_dong_chi_tiet (ma_hop_dong_chi_tiet, so_luong, ma_hop_dong, ma_dich_vu_di_kem)
values  (1, 5, 2, 4),
		(2, 8, 2, 5),
        (3, 15, 2, 6),
        (4, 1, 3, 1),
        (5, 11, 3, 2),
        (6, 1, 1, 3),
        (7, 2, 1, 2),
        (8, 2, 12, 2);

select * from vi_tri;
select * from trinh_do;
select * from bo_phan;
select * from nhan_vien;
select * from loai_khach;
select * from khach_hang;
select * from kieu_thue;
select * from loai_dich_vu;
select * from dich_vu;
select * from hop_dong;
select * from dich_vu_di_kem;
select * from hop_dong_chi_tiet;

-- 2. Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
 select * from nhan_vien
 where ho_ten like '%H' or ho_ten like '%T' or ho_ten like '%K';
 
-- 3. Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
-- select * from khach_hang
-- where ngay_sinh between 18 and 50 
-- and dia_chi like '%Da Nang%' or dia_chi like '%Quang Tri%';

select ma_khach_hang, ho_ten, ngay_sinh, dia_chi, so_dien_thoai
from khach_hang 
where timestampdiff(year, ngay_sinh, curdate()) between 18 and 50
and (dia_chi like '%Đà Nẵng%' or dia_chi like '%Quảng Trị%');

-- 4. Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select kh.ma_khach_hang, kh.ho_ten, count(hd.ma_hop_dong) as so_lan_dat_phong
from khach_hang kh
join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
where lk.ten_loai_khach = 'diamond'
group by kh.ma_khach_hang, kh.ho_ten
order by so_lan_dat_phong asc;

-- 5. Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).

 
select kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong,  dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, (dv.chi_phi_thue + IFNULL(SUM(hdct.so_luong * dvdv.gia), 0)) as tong_tien
from khach_hang kh
left join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
left join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
left join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by  kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong, 
         dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, dv.chi_phi_thue
order by kh.ma_khach_hang 
limit 200;






