create database demo;
create table Products (
id int auto_increment primary key,
productCode  varchar(50),
productName varchar(50),
productPrice decimal(10,2),
productAmount int,
productDescription  varchar(100),
productStatus bit
);
insert into Products ( productCode, productName, productPrice, productAmount, productDescription, productStatus)
values ('P001', 'Laptop Dell', 1500.00, 10, 'Laptop Dell Core i7', 1),
	   ('P002', 'iPhone 13', 1200.00, 15, 'Apple iPhone 13 128GB', 1),
       ('P003', 'Samsung Galaxy S21', 1000.00, 8, 'Samsung flagship phone', 1),
       ('P004', 'MacBook Pro', 2000.00, 5, 'Apple MacBook Pro M1', 1),
	   ('P005', 'Asus ROG Strix', 1800.00, 7, 'Gaming Laptop Asus', 1);
       
       -- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
       create unique index idx_productCode on Products(productCode);
       -- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
       create index idx_productNamePrice on Products(productName, productPrice); 
       -- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
       explain select * from Products 
       where productName = 'iPhone 13' and productPrice = '1200.00';
      -- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
       create view productView as
       select productCode, productName, productPrice, productStatus
       from Products;
       -- Sửa đổi view
       alter view productView as
	   select productCode, productName, productPrice, productStatus
       from Products;
       -- xóa view
       drop view productView;
       -- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
       DELIMITER  $$
       create procedure GetAllProducts ()
       begin
       select *
       from Products;
       end $$
       DELIMITER ;
	   -- Tạo store procedure thêm một sản phẩm mới
       delimiter $$
       create procedure AddProduct (
        in productCode varchar(50),
        in productName VARCHAR(50),
        in productPrice decimal(10,2),
        in productAmount  int,
        in productDescription varchar(100),
        in productStatus  bit
        )
        begin
        insert into Products ( productCode, productName, productPrice, productAmount, productDescription, productStatus)
        values (productCode, productName, productPrice, productAmount, productDescription, productStatus);
        end;
        
       -- Tạo store procedure sửa thông tin sản phẩm theo id
       DELIMITER $$
       create procedure UpdateProduct (
        in productCode varchar(50),
        in productName varchar(50),
        in productPrice decimal(10,2),
        in productAmount  int,
        in productDescription varchar(100),
        in productStatus  bit
        )
        begin
        Update Products
        set productName = p_productName,
			productPrice = p_productPrice,
            productAmount = p_productAmount,
            productDescription = p_productDescription,
            productStatus = p_productStatus
            where id = p_id;
		end $$
        DELIMITER ;
       -- Tạo store procedure xoá sản phẩm theo id
       delimiter $$
       create procedure DeleteProduct(in p_id int)
       begin
       delete from Products 
       where id = p_id;
       end $$
       delimiter ;