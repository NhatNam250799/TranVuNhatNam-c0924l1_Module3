<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View List Product</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/products?action=create">Add new product</a>
</p>

<p>
    <a href="/products?action=find">Find a product by name</a>
</p>

<table border="1" style="border-collapse: collapse">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${productList}" var="product" varStatus="status">
        <tr>
            <td>${product.getId()}</td>
            <td>
                <a href="/products?action=view&id=${product.getId()}">${product.getName()}</a>
            </td>
            <td>${product.getPrice()}</td>
            <td>
                <a href="/products?action=edit&id=${product.getId()}">Edit</a>
            </td>
            <td>
                <a href="/products?action=delete&id=${product.getId()}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>