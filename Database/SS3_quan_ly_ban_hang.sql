create database Quan_ly_ban_hang;
create table Customer(
	cID int auto_increment primary key,
    Name varchar(50) ,
    cAge int
);

create table `Order`(
	oID int auto_increment primary key,
    cID int,
    oDate date,
    oTotalPrice int,
    foreign key (cID) references Customer(cID)
);

create table Product(
	pID int auto_increment primary key,
    pName varchar(50),
    pPrice int
);

create table OrderDetail(
	oID int,
    pID int,
    odQTY int,
    primary key(oID, pID),
    foreign key(oID) references `Order`(oID),
    foreign key(pID) references Product(pID)
);



insert into Customer(cID, Name, cAge)
values   ('1', 'Minh Quan', '10'),
		 ('2', 'Ngoc Oanh', '20'),
         ('3', 'Hong Ha', '50');
         
insert into `Order`(oID, cID, oDate, oTotalPrice)
values   (1, 1, '2006-3-21', null),
         (2, 2, '2006-3-23', null),
         (3, 1, '2006-3-16', null);
    
    insert into Product(pID, pName, pPrice)
values   (1, 'May Giat', 3),
         (2, 'Tu Lanh', 5),
         (3, 'Dieu Hoa', 7),
         (4, 'Quat', 1),
         (5, 'Bep dien', 2);
         
   INSERT INTO OrderDetail(oId, pID, odQTY)
VALUES   ('1', '1', '3'),
         ('1', '3', '7'), 
         ('1', '4', '2'),
         ('2', '1', '1'),
         ('3', '1', '8'),
         ('2', '5', '4'),
         ('2', '3', '3');
	
        select * from Customer
         select * from `Order`
          select * from Product
           select * from OrderDetail

--  Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT o.oID, o.oDate, SUM(od.odQTY * p.pPrice) AS tonggia
FROM `Order` o
LEFT JOIN OrderDetail od ON o.oID = od.oID
LEFT JOIN Product p ON od.pID = p.pID
GROUP BY o.oID, o.oDate;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT c.cID, c.Name, p.pID, p.pName, od.odQTY
FROM Customer c
JOIN `Order` o ON c.cID = o.cID 
JOIN orderdetail od ON o.oID = od.oID
JOIN product p ON od.pID = p.pID
order by c.cID, p.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT c.Name
FROM Customer c
LEFT JOIN `Order` o ON c.cID = o.cID
WHERE o.oID IS NULL;
 
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
-- Giá bán của từng loại được tính = odQTY*pPrice)
SELECT o.oID, o.oDate, SUM(od.odQTY * p.pPrice) AS tonggia
FROM `Order` o
JOIN OrderDetail od ON o.oID = od.oID
JOIN Product p ON od.pID = p.pID
GROUP BY o.oID, o.oDate;
