<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body background="user.png">
<div style="width:100%" style="text-align: center;"> 
<h1 style="color:Tomato" >LIST OF USERS</h1>  
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>USER ID</th>
					<th>USER NAME</th>
					<th>USER PASSSWORD</th>
					<th>FIRST NAME</th>
					<th>LAST NAME</th>
					<th>DATE OF BIRTH</th>
					<th>E-MAIL</th>
					<th>PHONE NUMBER</th>
					<th>GENDER</th>
					<th>ADDRESS</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${allusers}">
					<tr>
						<td>${user.user_id}</td>
						<td>${user.user_name}</td>
						<td>${user.user_password}</td>
						<td>${user.first_name}</td>
						<td>${user.last_name}</td>
						<td>${user.dob}</td>
						<td>${user.e_mail}</td>
						<td>${user.phone_number}</td>
						<td>${user.gender}</td>
						<td>${user.address}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>