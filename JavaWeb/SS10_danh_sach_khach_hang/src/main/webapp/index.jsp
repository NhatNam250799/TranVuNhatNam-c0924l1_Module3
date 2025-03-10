<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Danh sách khách hàng</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h2 class="mt-4">Danh sach khach hang</h2>
		<table class="table table-bordered mt-3">
			<thead class="table-dark">
				<tr>
					<th>Anh</th>
					<th>Ten</th>
					<th>Ngay sinh</th>
					<th>Dia chi</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="customer" items="${customerList}">
					<tr>
						<td><img src="${customer.imagePath}" alt="Anh Khach Hang"
							width="100"></td>
						<td>${customer.name}</td>
						<td>${customer.birthDate}</td>
						<td>${customer.address}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>