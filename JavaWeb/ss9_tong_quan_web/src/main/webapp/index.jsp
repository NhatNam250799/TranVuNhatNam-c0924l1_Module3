<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Product Discount Calculator</h2>
<form action="/discount" method="post">
    <div class="container">
        <input style ="margin-right: 10px;" type="text" name="desc" placeholder="Product Description"/>
        <input style ="margin-right: 10px;" type="text" name="price" placeholder="List Price"/>
        <input type="text" name="percent" placeholder="Discount Percent"/>
        <br/>
        <button style ="margin-top: 10px;" type="submit" id="submit">Calculate Discount</button>
    </div>
</form>
</body>
</html>