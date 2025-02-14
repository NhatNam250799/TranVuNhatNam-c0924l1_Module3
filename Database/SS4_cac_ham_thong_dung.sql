create database ss4_quan_ly_sinh_vien;
create table class(
    class_iD INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	class_name VARCHAR(60) NOT NULL,
	start_date DATETIME NOT NULL,
	Status BIT
);
create table student (
    student_id int not null auto_increment primary key,
    student_name varchar(30) not null,
    address varchar(50),
    phone char(10),
    status bit,
    class_id int not null,
    foreign key (class_id) references class (class_id)
);
create table subject (
    sub_id int not null auto_increment primary key,
    sub_name varchar(30) not null,
    credit tinyint not null ,
    status bit 
);
create table mark (
    mark_id int not null auto_increment primary key,
    sub_id int not null,
    student_id int not null,
    mark float,
    foreign key (sub_id) references subject (sub_id),
    foreign key (student_id) references student (student_id)
);

insert into class(class_iD, class_name, start_date, Status)
values           ( '1', 'Nguyen van Nam', '2011-02-25', 1);

insert into class(class_iD, class_name, start_date, Status)
values 
                 ( '2', 'Huynh Thi NU', '2010-02-25', 1),
                 ( '3', 'Tran van Bon', '2012-02-25', 0);
insert into student (student_id, student_name, address, phone, status, class_id) 
values           ('01','NGuyen Hung', 'Hue', '0899147854', 1, '1'),
			     ('02','Le Thi Hoa', 'Da Nang', '0702496038', 1, '2'),
				 ('03','Nguyen Van Dung', 'Can Tho', '0899314857', 0, '3');
insert into subject (sub_id, sub_name, credit, status) 
values               ('001','abc', '7', 1),
					 ('002','aabd', '2', 1),
					 ('003','bcd', '4', 0);
					

insert into mark (mark_id, sub_id, student_id, mark) 
values           ('0001', '01', '1', '1'),
				 ('0002', '02', '2', '2'),
                 ('0003', '03', '3', '5');


-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT * 
FROM subject 
WHERE credit = (SELECT MAX(credit) FROM subject);
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT *
FROM subject s 
JOIN mark m on s.sub_id = m.sub_id
WHERE m.mark = (SELECT MAX(mark) FROM mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT s.student_id, s.student_name, s.address, s.phone, s.status, s.class_id, AVG(m.mark) as dtb
FROM student s
JOIN mark m on s.student_id = m.student_id
GROUP BY s.student_id, s.student_name, s.address, s.phone, s.status, s.class_id
ORDER BY dtb DESC
