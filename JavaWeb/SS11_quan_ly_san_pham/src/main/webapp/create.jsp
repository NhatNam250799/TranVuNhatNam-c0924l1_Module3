<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new product</title>
</head>
<body>
<h1>Thêm mới</h1>
<form action="/products?action=create" method="post">
    <label>
        <input type="text" name="name" placeholder="Nhập tên">
    </label>
    <label>
        <input type="number" name="price" min ="0" step="0.1" placeholder="Nhập giá">
    </label>
    <label>
        <input type="text" name="description" placeholder="Nhập mô tả">
    </label>
    <label>
        <input type="text" name="manufacturer" placeholder="Nhập nhà sản xuất">
    </label>
    <button type="submit">Lưu</button>
</form>
</body>

</body>
</html>